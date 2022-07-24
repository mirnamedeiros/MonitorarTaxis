package ufrn.mirna.MonitorarTaxis.Controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;

@RestController
@RequestMapping("/subscribe")
public class SubscriptionController {

	
	@PostMapping
	public void exibirSubscricao(@RequestBody JsonNode body) throws JsonMappingException, JsonProcessingException {
		
		getKeysInJsonUsingJsonNodeFieldNames(body);
		
	}
	
	public void getKeysInJsonUsingJsonNodeFieldNames(JsonNode json) throws JsonMappingException, JsonProcessingException {

		ObjectMapper mapper = new ObjectMapper();
	    List<String> keys = new ArrayList<>();
	    JsonNode jsonNode = mapper.readTree(json.toString());
	    getKeysUsingJsonNodeFields(jsonNode, keys);
	}

	private void getKeysUsingJsonNodeFields(JsonNode jsonNode, List<String> keys) {

	    if (jsonNode.isObject()) {
	        Iterator<java.util.Map.Entry<String, JsonNode>> fields = jsonNode.fields();
	        fields.forEachRemaining(field -> {
	            keys.add(field.getKey());
	            if(field.getKey().toString().equals("id")) {
	            	System.out.print("\nTaxi com ID: "+field.getValue().asText()+" foi atualizado");
	            }
	            getKeysUsingJsonNodeFields((JsonNode) field.getValue(), keys);
	        });
	    } else if (jsonNode.isArray()) {
	        ArrayNode arrayField = (ArrayNode) jsonNode;
	        arrayField.forEach(node -> {
	            getKeysUsingJsonNodeFields(node, keys);
	        });
	    }
	}

}



