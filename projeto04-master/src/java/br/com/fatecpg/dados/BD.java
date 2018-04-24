package br.com.fatecpg.dados;
import java.util.ArrayList;

public class BD {
    
    private static ArrayList<Cliente> clientes = new ArrayList<>();
    public static ArrayList<Cliente> getClientes() { return clientes; } 
    
    private static ArrayList<Fornecedor> fornecedores = new ArrayList<>();
    public static ArrayList<Fornecedor> getFornecedores() { return fornecedores; }
}
