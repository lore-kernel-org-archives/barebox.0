Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIgxh-0007XC-9w
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 13:54:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Apr 2012 15:54:28 +0200
Message-Id: <1334325273-1701-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
References: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/7] serial i.MX: i.MX6 support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_imx.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 72771fc..1e1e8e3 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -162,7 +162,7 @@
 #endif
 #if defined CONFIG_ARCH_IMX31 || defined CONFIG_ARCH_IMX35 || \
 	defined CONFIG_ARCH_IMX25 || defined CONFIG_ARCH_IMX51 || \
-	defined CONFIG_ARCH_IMX53
+	defined CONFIG_ARCH_IMX53 || defined CONFIG_ARCH_IMX6
 # define	UCR1_VAL (0)
 # define	UCR3_VAL (0x700 | UCR3_RXDMUXSEL)
 # define	UCR4_VAL UCR4_CTSTL_32
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
