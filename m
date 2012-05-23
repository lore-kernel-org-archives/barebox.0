Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SXCJz-0005cz-87
 for barebox@lists.infradead.org; Wed, 23 May 2012 14:13:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 May 2012 16:13:47 +0200
Message-Id: <1337782428-6804-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] usb ehci: Add resource sizes
To: barebox@lists.infradead.org

add_usb_ehci_device registers resources with size 0. Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/resource.c |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/base/resource.c b/drivers/base/resource.c
index b31c7d7..347b2f0 100644
--- a/drivers/base/resource.c
+++ b/drivers/base/resource.c
@@ -113,8 +113,10 @@ struct device_d *add_usb_ehci_device(int id, resource_size_t hccr,
 
 	res = xzalloc(sizeof(struct resource) * 2);
 	res[0].start = hccr;
+	res[0].size = 0x40;
 	res[0].flags = IORESOURCE_MEM;
 	res[1].start = hcor;
+	res[1].size = 0xc0;
 	res[1].flags = IORESOURCE_MEM;
 
 	return add_generic_device_res("ehci", id, res, 2, pdata);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
