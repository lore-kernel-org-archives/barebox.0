Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f8HlX-0006tG-Eb
 for barebox@lists.infradead.org; Tue, 17 Apr 2018 03:58:48 +0000
Received: by mail-lf0-x242.google.com with SMTP id i18-v6so10177741lfc.7
 for <barebox@lists.infradead.org>; Mon, 16 Apr 2018 20:58:36 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 17 Apr 2018 06:58:29 +0300
Message-Id: <20180417035829.11841-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] commands: i2c_write: enable reg == 0 too
To: barebox@lists.infradead.org

This commit fixes the mistake introduced in the commit 34fadb685905
('commands: i2c_write: enable raw write to address').
The intended behaviour for i2c_write command is
"use raw i2c write only if reg address is not defined".
Before the commit 34fadb685905 reg address == 0
was acceptable. After the commit 34fadb685905 reg address == 0
became unacceptable ("undefined") and will lead to raw i2c write.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/i2c.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/i2c.c b/commands/i2c.c
index 21c39fe5af..f0d16af0cb 100644
--- a/commands/i2c.c
+++ b/commands/i2c.c
@@ -131,7 +131,7 @@ static int do_i2c_write(int argc, char *argv[])
 	for (i = 0; i < count; i++)
 		*(buf + i) = (char) simple_strtol(argv[optind+i], NULL, 0);
 
-	if (reg > 0) {
+	if (reg >= 0) {
 		ret = i2c_write_reg(&client, reg | wide, buf, count);
 	} else {
 		ret = i2c_master_send(&client, buf, count);
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
