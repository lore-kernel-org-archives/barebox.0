Delivery-date: Wed, 01 Apr 2026 17:13:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w7xGM-007WxE-2p
	for lore@lore.pengutronix.de;
	Wed, 01 Apr 2026 17:13:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w7xGM-0003yZ-5Z
	for lore@pengutronix.de; Wed, 01 Apr 2026 17:13:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mywxro/+bUJk1NULZme+MtYEqO4UFUiSOk/esH3u0Ls=; b=BTmXBOean42JRP/U7Jy+3Mklss
	tkmYyx97dNmBY8bA5y3rdMi1cxerl3Vtt0hrP7fWUPB8mIvEEDtcgCijTyrfkd7W1WoVGS4ie5XZU
	zGqAq9tpQdiNKjq3uUNXEtSm5EI0h6TTxNIXUsduApEdulFGGaRFIA4rk5+fgNvItVFMDEH/WH49G
	KMMg5nGz+WaU8SWo4o4mR3XUCkqTzh1TOu5mgt58Fju9Rc+aON6QubxAS360ejuxFhTFMJ3ReyglG
	dowgnPrG9DhCdlRmFEghn/fqH2+/LJ5i4SXvep7LnBe1Uv/34DVhTG2OnBX0uTQ5hSUli0y2Fx3LK
	68TMRkVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7xFq-0000000FbcX-1Wse;
	Wed, 01 Apr 2026 15:13:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7xFo-0000000Fbbr-2EtL
	for barebox@bombadil.infradead.org;
	Wed, 01 Apr 2026 15:13:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=mywxro/+bUJk1NULZme+MtYEqO4UFUiSOk/esH3u0Ls=; b=kDIxq/sSpT5mcNcW+KkvYa5Bxo
	4EsdgVRRR1ybPTPzOktXcXyCVR2oMC4OgnKFJH54DFvYIzXJEErUc33Mu+ZcJZw82Q0CiI5eWn/aa
	FxL05wSUpvZoEr3StJYh6pHGG2ZIhcsAYieGHNt6WnTuCnJE3aP9RSIluknRnjWIz+qG5k12V+qXL
	VcANq94b51xhZ3iniwjpuxm5H0+TJImUXmHx+nwNTy32xT+qcEtLXgdQIVGWPATW4S/l1I6ihxehr
	SM+lECh/VYqTp17doyZ2oiJcokTZ6vfxmlrTskZNJwCR0ONQtM3ZdkB2vh4C+VqULN9q74zxaxKWv
	qFTd7law==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7xFl-00000000iwB-2d5d
	for barebox@lists.infradead.org;
	Wed, 01 Apr 2026 15:13:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1w7xFk-0003kV-60; Wed, 01 Apr 2026 17:13:08 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed,  1 Apr 2026 17:07:17 +0200
Message-ID: <20260401151227.2097733-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260401151227.2097733-2-a.fatoum@barebox.org>
References: <20260401151227.2097733-2-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_161309_713028_842F9FF9 
X-CRM114-Status: GOOD (  12.11  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] security: policy: add first age verification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

California's Digital Age Assurance Act mandates age-appropriate feature
gating for operating systems. As barebOS qualifies, implement compliance
via the security policy framework.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/beep.c                          | 5 +++++
 drivers/crypto/caam/ctrl.c               | 5 +++++
 drivers/i2c/i2c.c                        | 5 +++++
 drivers/spi/spi.c                        | 5 +++++
 drivers/usb/gadget/function/f_fastboot.c | 5 +++++
 5 files changed, 25 insertions(+)

diff --git a/commands/beep.c b/commands/beep.c
index 29569fb51a3b..83ae9319522c 100644
--- a/commands/beep.c
+++ b/commands/beep.c
@@ -5,9 +5,14 @@
 #include <command.h>
 #include <sound.h>
 #include <getopt.h>
+#include <security/age.h>
 
 static int do_beep(int argc, char *argv[])
 {
+	/* AB1043: Audible tone generation constitutes noise pollution */
+	if (!IS_OF_AGE(13))
+		return -EPERM;
+
 	int ret, i, opt;
 	u32 tempo, total_us = 0;
 	bool wait = false;
diff --git a/drivers/crypto/caam/ctrl.c b/drivers/crypto/caam/ctrl.c
index 24a01ca0943e..69e388455cce 100644
--- a/drivers/crypto/caam/ctrl.c
+++ b/drivers/crypto/caam/ctrl.c
@@ -14,6 +14,7 @@
 #include <linux/barebox-wrapper.h>
 #include <linux/spinlock.h>
 #include <linux/clk.h>
+#include <security/age.h>
 
 #include "regs.h"
 #include "intern.h"
@@ -358,6 +359,10 @@ static int caam_get_era(struct caam_ctrl __iomem *ctrl)
 /* Probe routine for CAAM top (controller) level */
 static int caam_probe(struct device *dev)
 {
+	/* AB1043: cryptography is classified as a munition */
+	if (!IS_OF_AGE(18))
+		return -EPERM;
+
 	int ret, ring, rspec, gen_sk, ent_delay = RTSDCTL_ENT_DLY_MIN;
 	u64 caam_id;
 	struct device_node *nprop, *np;
diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 407c4db8a76a..8b852225502b 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -24,6 +24,7 @@
 #include <of.h>
 #include <gpio.h>
 #include <slice.h>
+#include <security/age.h>
 
 #include <i2c/i2c.h>
 
@@ -711,6 +712,10 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 	struct device *hw_dev;
 	int ret;
 
+	/* AB1043: Two-Wire vehicles (mopeds) require only a learner's permit */
+	if (!IS_OF_AGE(16))
+		return -EPERM;
+
 	if (adapter->nr < 0 && dev_of_node(&adapter->dev))
 		adapter->nr = of_alias_get_id(adapter->dev.of_node, "i2c");
 
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index b64e20664985..7bab1de79cdc 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -18,6 +18,7 @@
 #include <errno.h>
 #include <init.h>
 #include <of.h>
+#include <security/age.h>
 
 /* SPI devices should normally not be created by SPI device drivers; that
  * would make them board-specific.  Similarly with SPI master drivers.
@@ -538,6 +539,10 @@ int spi_register_controller(struct spi_controller *ctrl)
 	static int dyn_bus_id = (1 << 15) - 1;
 	int			status = -ENODEV;
 
+	/* AB1043: SPI drives 4+ signals and thus requires full driving permit */
+	if (!IS_OF_AGE(18))
+		return -EPERM;
+
 	debug("%s: %s:%d\n", __func__, ctrl->dev->name, ctrl->dev->id);
 
 	/*
diff --git a/drivers/usb/gadget/function/f_fastboot.c b/drivers/usb/gadget/function/f_fastboot.c
index 85732802ff80..516e80735e51 100644
--- a/drivers/usb/gadget/function/f_fastboot.c
+++ b/drivers/usb/gadget/function/f_fastboot.c
@@ -26,6 +26,7 @@
 #include <progress.h>
 #include <fastboot.h>
 #include <linux/usb/fastboot.h>
+#include <security/age.h>
 
 #define FASTBOOT_INTERFACE_CLASS	0xff
 #define FASTBOOT_INTERFACE_SUB_CLASS	0x42
@@ -221,6 +222,10 @@ static void fastboot_complete(struct usb_ep *ep, struct usb_request *req)
 
 static int fastboot_bind(struct usb_configuration *c, struct usb_function *f)
 {
+	/* AB1043: FAST boot exceeds posted speed limits */
+	if (!IS_OF_AGE(18))
+		return -EPERM;
+
 	struct usb_composite_dev *cdev = c->cdev;
 	int id, ret;
 	struct usb_gadget *gadget = c->cdev->gadget;
-- 
2.47.3



