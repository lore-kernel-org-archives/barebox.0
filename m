Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SXCK1-0005dL-0W
 for barebox@lists.infradead.org; Wed, 23 May 2012 14:13:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 May 2012 16:13:48 +0200
Message-Id: <1337782428-6804-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1337782428-6804-1-git-send-email-s.hauer@pengutronix.de>
References: <1337782428-6804-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] usb ehci: Use zalloc to allocate ehci structure
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ehci-hcd.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index ae2b41e..a2473a9 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -858,7 +858,7 @@ static int ehci_probe(struct device_d *dev)
 	uint32_t reg;
 	struct ehci_platform_data *pdata = dev->platform_data;
 
-	ehci = xmalloc(sizeof(struct ehci_priv));
+	ehci = xzalloc(sizeof(struct ehci_priv));
 	host = &ehci->host;
 	dev->priv = ehci;
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
