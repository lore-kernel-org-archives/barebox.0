Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c6f0f-0001xC-1R
 for barebox@lists.infradead.org; Tue, 15 Nov 2016 14:46:53 +0000
Received: by mail-pf0-x244.google.com with SMTP id c4so5563676pfb.3
 for <barebox@lists.infradead.org>; Tue, 15 Nov 2016 06:46:32 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Nov 2016 06:46:27 -0800
Message-Id: <1479221187-13482-1-git-send-email-andrew.smirnov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] commands: i2c: Listen for CTRL-C when probing
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Allow I2C bus probing to be interrupted early by sending CTRL-C. This is
usefull when calling the tool without any arguments and one of the busses
is misconfigured (waiting for 100+ failures is pretty inconvenient).

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/i2c.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/i2c.c b/commands/i2c.c
index ae7f7fc..573032a 100644
--- a/commands/i2c.c
+++ b/commands/i2c.c
@@ -32,7 +32,7 @@ static void i2c_probe_range(struct i2c_adapter *adapter, int startaddr, int stop
 	client.adapter = adapter;
 
 	printf("probing i2c%d range 0x%02x-0x%02x: ", adapter->nr, startaddr, stopaddr);
-	for (addr = startaddr; addr <= stopaddr; addr++) {
+	for (addr = startaddr; addr <= stopaddr && !ctrlc(); addr++) {
 		client.addr = addr;
 		ret = i2c_write_reg(&client, 0x00, &reg, 0);
 		if (ret == 0)
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
