public class Test{
	public static void main(String[] args) {
		try{
	System.out.println("HelloWorld\nHello Again\nAnd Again");
	parser p = new parser(new Lexer((System.in)));
    Object result = p.parse().value;

    } catch (Exception e) {

      e.printStackTrace();
	}
	}
}