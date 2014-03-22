Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22c.google.com ([2a00:1450:4010:c04::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WRK8H-0007P7-Ns
 for barebox@lists.infradead.org; Sat, 22 Mar 2014 11:30:34 +0000
Received: by mail-lb0-f172.google.com with SMTP id c11so2406241lbj.31
 for <barebox@lists.infradead.org>; Sat, 22 Mar 2014 04:30:11 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 22 Mar 2014 15:29:53 +0400
Message-Id: <1395487797-16599-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1395487797-16599-1-git-send-email-antonynpavlov@gmail.com>
References: <1395487797-16599-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/7] serial: ns16550: make it possible to get reg_write() from
 devtype
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/serial/serial_ns16550.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index f1da44b..aa0992f 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -57,6 +57,8 @@ static inline struct ns16550_priv *to_ns16550_priv(struct console_device *cdev)
 
 struct ns16550_drvdata {
 	void (*init_port)(struct console_device *cdev);
+	void (*reg_write)(unsigned int val, unsigned long base,
+				    unsigned char reg_offset);
 	const char *linux_console_name;
 };
 
@@ -316,6 +318,9 @@ static int ns16550_probe(struct device_d *dev)
 	cdev->setbrg = ns16550_setbaudrate;
 	cdev->linux_console_name = devtype->linux_console_name;
 
+	if (devtype->reg_write)
+		priv->plat.reg_write = devtype->reg_write;
+
 	devtype->init_port(cdev);
 
 	return console_register(cdev);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
