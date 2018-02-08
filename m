Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ejgxF-00050t-84
 for barebox@lists.infradead.org; Thu, 08 Feb 2018 07:49:14 +0000
Received: by mail-lf0-x243.google.com with SMTP id t79so5075737lfe.3
 for <barebox@lists.infradead.org>; Wed, 07 Feb 2018 23:49:02 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  8 Feb 2018 10:48:56 +0300
Message-Id: <20180208074856.3701-1-antonynpavlov@gmail.com>
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
Subject: [RFC] commands: i2c_write: enable raw write to address
To: barebox@lists.infradead.org

Sometimes for communication with a simple I2C devices
(e.g. PCF8574 or TM1650) it's necessary to send only
one data byte into the I2C device.
Current i2c_write command makes this impossible because
you can't just pass 'device address' and 'register number'
(or 'device address' and 'one data byte') to the command.
You always have to pass all three parameters:
'device address', 'register number' and 'data'.

This commit fixes the problem.

Sample usage:

  barebox@barebox sandbox:/ i2c_write -a 0x24 0x01

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/i2c.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/commands/i2c.c b/commands/i2c.c
index b74c53509f..21c39fe5af 100644
--- a/commands/i2c.c
+++ b/commands/i2c.c
@@ -115,7 +115,7 @@ static int do_i2c_write(int argc, char *argv[])
 
 	count = argc - optind;
 
-	if ((addr < 0) || (reg < 0) || (count == 0) || (addr > 0x7F))
+	if ((addr < 0) || (count == 0) || (addr > 0x7F))
 		return COMMAND_ERROR_USAGE;
 
 	adapter = i2c_get_adapter(bus);
@@ -131,7 +131,11 @@ static int do_i2c_write(int argc, char *argv[])
 	for (i = 0; i < count; i++)
 		*(buf + i) = (char) simple_strtol(argv[optind+i], NULL, 0);
 
-	ret = i2c_write_reg(&client, reg | wide, buf, count);
+	if (reg > 0) {
+		ret = i2c_write_reg(&client, reg | wide, buf, count);
+	} else {
+		ret = i2c_master_send(&client, buf, count);
+	}
 	if (ret != count) {
 		if (verbose)
 			printf("write aborted, count(%i) != writestatus(%i)\n",
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
