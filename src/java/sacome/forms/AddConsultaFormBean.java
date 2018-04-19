/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sacome.forms;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author tulio
 */
public class AddConsultaFormBean {
    
    private String cpf, crm, dataConsulta;

    public List<String> validar() {
        List<String> mensagens = new ArrayList<String>();
        
        
        return (mensagens.isEmpty() ? null : mensagens);
    }
    
    
    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getCrm() {
        return crm;
    }

    public void setCrm(String crm) {
        this.crm = crm;
    }

    public String getDataConsulta() {
        return dataConsulta;
    }

    public void setDataConsulta(String dataConsulta) {
        this.dataConsulta = dataConsulta;
    }
    
    
}
