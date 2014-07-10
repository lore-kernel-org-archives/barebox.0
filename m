Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171]
 helo=mailgw1.data-modul.com)
 by bombadil.infradead.org with smtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X5FD9-0001Jv-B2
 for barebox@lists.infradead.org; Thu, 10 Jul 2014 14:20:36 +0000
From: Silvio Fricke <silvio.fricke@gmail.com>
Date: Thu, 10 Jul 2014 16:19:55 +0200
Message-Id: <f59edce3b96b69577dbb8ff1aee1eeb74f25762e.1405001817.git.silvio.fricke@gmail.com>
In-Reply-To: <cover.1405000144.git.silvio.fricke@gmail.com>
References: <cover.1405000144.git.silvio.fricke@gmail.com>
In-Reply-To: <cover.1405000144.git.silvio.fricke@gmail.com>
References: <cover.1405000144.git.silvio.fricke@gmail.com>
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
Subject: [PATCH 2/3] commands: i2c: simplify i2c wide access logic
To: barebox@lists.infradead.org
Cc: Silvio Fricke <silvio.fricke@gmail.com>

Signed-off-by: Silvio Fricke <silvio.fricke@gmail.com>
---
 commands/i2c.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/commands/i2c.c b/commands/i2c.c
index 7a39e6e..e3d79b0 100644
--- a/commands/i2c.c
+++ b/commands/i2c.c
@@ -90,7 +90,7 @@ static int do_i2c_write(int argc, char *argv[])
 			verbose = 1;
 			break;
 		case 'w':
-			wide = 1;
+			wide = I2C_ADDR_16_BIT;
 			break;
 		}
 	}
@@ -113,7 +113,7 @@ static int do_i2c_write(int argc, char *argv[])
 	for (i = 0; i < count; i++)
 		*(buf + i) = (char) simple_strtol(argv[optind+i], NULL, 16);
 
-	ret = i2c_write_reg(&client, reg | (wide ? I2C_ADDR_16_BIT : 0), buf, count);
+	ret = i2c_write_reg(&client, reg | wide, buf, count);
 	if (ret != count)
 		goto out;
 	ret = 0;
@@ -173,7 +173,7 @@ static int do_i2c_read(int argc, char *argv[])
 			verbose = 1;
 			break;
 		case 'w':
-			wide = 1;
+			wide = I2C_ADDR_16_BIT;
 			break;
 		}
 	}
@@ -191,7 +191,7 @@ static int do_i2c_read(int argc, char *argv[])
 	client.addr = addr;
 
 	buf = xmalloc(count);
-	ret = i2c_read_reg(&client, reg | (wide ? I2C_ADDR_16_BIT : 0), buf, count);
+	ret = i2c_read_reg(&client, reg | wide, buf, count);
 	if (ret == count) {
 		int i;
 		if (verbose)
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
