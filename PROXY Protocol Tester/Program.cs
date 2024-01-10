var builder = WebApplication.CreateSlimBuilder(args);

var app = builder.Build();

var loremAPI = app.MapGroup("/loremIpsum");
loremAPI.MapGet("/", () => LoremNET.Lorem.Words(3));
loremAPI.MapGet("/{length}", (int length) => LoremNET.Lorem.Words(length));

app.Run();