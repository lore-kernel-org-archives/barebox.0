Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs8Ql-0001jn-CE
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 15:18:53 +0000
Received: by mail-pg1-x52f.google.com with SMTP id b129-v6so146698pga.13
 for <barebox@lists.infradead.org>; Tue, 21 Aug 2018 08:18:41 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Tue, 21 Aug 2018 17:18:25 +0200
Message-Id: <20180821151826.5011-2-aleksander@aleksander.es>
In-Reply-To: <20180821151826.5011-1-aleksander@aleksander.es>
References: <20180821151826.5011-1-aleksander@aleksander.es>
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
Subject: [PATCH 1/2] i2c_write: document master send mode
To: barebox@lists.infradead.org, s.hauer@pengutronix.de
Cc: Aleksander Morgado <aleksander@aleksander.es>

When no explicit start register is given, the i2c message is emitted
in master send mode.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 commands/i2c.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/commands/i2c.c b/commands/i2c.c
index f0d16af0c..57dc092c2 100644
--- a/commands/i2c.c
+++ b/commands/i2c.c
@@ -145,8 +145,12 @@ static int do_i2c_write(int argc, char *argv[])
 	ret = 0;
 
 	if (verbose) {
-		printf("wrote %i bytes starting at reg 0x%04x to i2cdev 0x%02x on bus %i\n",
-			count, reg, addr, adapter->nr);
+		if (reg >= 0)
+			printf("wrote %i bytes starting at reg 0x%04x to i2cdev 0x%02x on bus %i\n",
+			       count, reg, addr, adapter->nr);
+		else
+			printf("sent %i bytes in master send mode to i2cdev 0x%02x on bus %i\n",
+			       count, addr, adapter->nr);
 		for (i = 0; i < count; i++)
 			printf("0x%02x ", *(buf + i));
 		printf("\n");
@@ -161,7 +165,7 @@ BAREBOX_CMD_HELP_START(i2c_write)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-b BUS\t", "i2c bus number (default 0)")
 BAREBOX_CMD_HELP_OPT ("-a ADDR\t", "i2c device address")
-BAREBOX_CMD_HELP_OPT ("-r START", "start register")
+BAREBOX_CMD_HELP_OPT ("-r START", "start register (optional, master send mode if none given)")
 BAREBOX_CMD_HELP_OPT ("-w\t",       "use word (16 bit) wide access")
 BAREBOX_CMD_HELP_OPT ("-v\t",       "verbose")
 BAREBOX_CMD_HELP_END
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
