Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TNPC5-0008K9-8t
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 14:29:30 +0000
Received: from mail641.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 82C6FDC12D4
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 16:36:03 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 14 Oct 2012 16:27:08 +0200
Message-Id: <1350224828-17523-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] amba: add periph id RO params to the device
To: barebox@lists.infradead.org

this will allow to knonw the pid probed

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/amba/bus.c |    7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index f0a40b6..d1ab53c 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -157,6 +157,13 @@ int amba_device_add(struct amba_device *dev)
 	if (ret)
 		goto err_release;
 
+	if (IS_ENABLED(CONFIG_PARAMETER)) {
+		char str[16];
+
+		sprintf(str, "0x%08x", dev->periphid);
+		dev_add_param_fixed(&dev->dev, "periphid", str);
+	}
+
 		return ret;
  err_release:
 	release_region(res);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
