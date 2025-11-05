
REATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Email NVARCHAR(100),
    Phone NVARCHAR(20)
);

CREATE TABLE Agents (
    AgentID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Email NVARCHAR(100)
);

CREATE TABLE Tickets (
    TicketID INT PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    AgentID INT FOREIGN KEY REFERENCES Agents(AgentID),
    Issue NVARCHAR(255),
    Status NVARCHAR(50),
    CreatedDate DATE,
    ResolvedDate DATE
);
