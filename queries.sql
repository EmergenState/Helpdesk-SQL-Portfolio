
-- Top 5 agents by resolved tickets
SELECT TOP 5 a.Name, COUNT(*) AS ResolvedTickets
FROM Tickets t
JOIN Agents a ON t.AgentID = a.AgentID
WHERE t.Status = 'Resolved'
GROUP BY a.Name
ORDER BY ResolvedTickets DESC;

-- Average resolution time
SELECT AVG(DATEDIFF(DAY, CreatedDate, ResolvedDate)) AS AvgResolutionDays
FROM Tickets
WHERE Status = 'Resolved';

-- Monthly ticket trends
SELECT FORMAT(CreatedDate, 'yyyy-MM') AS Month, COUNT(*) AS TicketCount
FROM Tickets
GROUP BY FORMAT(CreatedDate, 'yyyy-MM')
ORDER BY Month;
