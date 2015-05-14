Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x234.google.com ([2607:f8b0:400e:c02::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YsjIk-0000JS-Cw
 for barebox@lists.infradead.org; Thu, 14 May 2015 02:55:12 +0000
Received: by pdea3 with SMTP id a3so70201119pde.3
 for <barebox@lists.infradead.org>; Wed, 13 May 2015 19:54:48 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 13 May 2015 19:54:22 -0700
Message-Id: <1431572067-4038-5-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
References: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 05/10] serial: i.MX: Write settings to a correct register
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Fix what looks like a copy and past error, where settings for USR1
register were being written to USR2.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/serial/serial_imx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 12155ad..b7ea14a 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -113,10 +113,10 @@ static int imx_serial_init_port(struct console_device *cdev)
 	writel(val, regs + USR2);

   	/* Clear status flags */
-	val = readl(regs + USR2);
+	val = readl(regs + USR1);
 	val |= USR1_PARITYERR | USR1_RTSD | USR1_ESCF | USR1_FRAMERR | USR1_AIRINT |
 	       USR1_AWAKE;
-	writel(val, regs + USR2);
+	writel(val, regs + USR1);

 	return 0;
 }
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
