Delivery-date: Thu, 09 Jun 2022 08:01:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBEy-008S5B-Lm
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 08:01:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBEu-0001LZ-0h
	for lore@pengutronix.de; Thu, 09 Jun 2022 08:01:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IFvv+/24FyDfANdF67QF7kkVFfEOdBrTWVCCVEElb/w=; b=O1DgNyBgGNhMf+
	SzIovfljP47fK089+6IjbpjxX24W41eIy8MKIgUzByfpyEKz6ibs4il+z0Sffazb3fMpycrMTEaFt
	JogZrPYeSniPmLzCUropGfrpBErLj3F9ltqDhnBzFAEZAl9bZvKPdadnMGVbLdMgpQ8AKQnPq2AM0
	VbGwgy5SR/oJXQokHYyjXXbR+fKbZvCuGl88BQVkzO2nmYJ41PncGW0fk7ocb9zbYkAI92HbC8o7e
	DXMt9yl5bGer5y3zO+YbOGFvW7psnwTBq95H68zN4g8YbeH4BwTZ/gl29hTZsZIDdzrMNGdMHSSMt
	5q+rnwJ+/syOskSjomWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBCx-00GvDy-IS; Thu, 09 Jun 2022 05:59:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBCZ-00Guyq-KU
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 05:59:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCY-0008GR-Da; Thu, 09 Jun 2022 07:59:26 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCY-007K98-Tv; Thu, 09 Jun 2022 07:59:25 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCV-002nZf-AP; Thu, 09 Jun 2022 07:59:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jun 2022 07:59:06 +0200
Message-Id: <20220609055922.667016-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609055922.667016-1-a.fatoum@pengutronix.de>
References: <20220609055922.667016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_225927_856011_AF6BE5AF 
X-CRM114-Status: GOOD (  20.77  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 05/21] ARM: rpi: split out mbox helpers to share code with PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We'll call some of these helpers from PBL in a later commit, so move
these into a common location.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/Makefile       |   1 +
 arch/arm/boards/raspberry-pi/lowlevel.h     |   5 +
 arch/arm/boards/raspberry-pi/mbox-helpers.c |  73 +++++++++++++
 arch/arm/boards/raspberry-pi/rpi-common.c   | 108 +++++---------------
 4 files changed, 103 insertions(+), 84 deletions(-)
 create mode 100644 arch/arm/boards/raspberry-pi/mbox-helpers.c

diff --git a/arch/arm/boards/raspberry-pi/Makefile b/arch/arm/boards/raspberry-pi/Makefile
index 6f995b564017..e4f91b497965 100644
--- a/arch/arm/boards/raspberry-pi/Makefile
+++ b/arch/arm/boards/raspberry-pi/Makefile
@@ -2,4 +2,5 @@
 
 obj-$(CONFIG_MACH_RPI_COMMON) += rpi-common.o
 lwl-y += lowlevel.o
+obj-pbl-y += mbox-helpers.o
 bbenv-y += defaultenv-rpi
diff --git a/arch/arm/boards/raspberry-pi/lowlevel.h b/arch/arm/boards/raspberry-pi/lowlevel.h
index eacf973fb6fa..a29860d607f3 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.h
+++ b/arch/arm/boards/raspberry-pi/lowlevel.h
@@ -3,9 +3,14 @@
 #ifndef __ARCH_ARM_BOARDS_LOWLEVEL_H__
 #define __ARCH_ARM_BOARDS_LOWLEVEL_H__
 
+#include <linux/types.h>
 #include <linux/sizes.h>
 
 #define VIDEOCORE_FDT_SZ SZ_1M
 #define VIDEOCORE_FDT_ERROR 0xdeadfeed
 
+ssize_t rpi_get_arm_mem(void);
+int rpi_get_usbethaddr(u8 mac[6]);
+int rpi_get_board_rev(void);
+
 #endif /* __ARCH_ARM_BOARDS_LOWLEVEL_H__ */
diff --git a/arch/arm/boards/raspberry-pi/mbox-helpers.c b/arch/arm/boards/raspberry-pi/mbox-helpers.c
new file mode 100644
index 000000000000..9f252c68ff94
--- /dev/null
+++ b/arch/arm/boards/raspberry-pi/mbox-helpers.c
@@ -0,0 +1,73 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2009 Carlo Caione <carlo@carlocaione.org>
+
+#include <mach/mbox.h>
+#include "lowlevel.h"
+
+struct msg_get_arm_mem {
+	struct bcm2835_mbox_hdr hdr;
+	struct bcm2835_mbox_tag_get_arm_mem get_arm_mem;
+	u32 end_tag;
+};
+
+struct msg_get_board_rev {
+	struct bcm2835_mbox_hdr hdr;
+	struct bcm2835_mbox_tag_get_board_rev get_board_rev;
+	u32 end_tag;
+};
+
+struct msg_get_mac_address {
+	struct bcm2835_mbox_hdr hdr;
+	struct bcm2835_mbox_tag_get_mac_address get_mac_address;
+	u32 end_tag;
+};
+
+ssize_t rpi_get_arm_mem(void)
+{
+	BCM2835_MBOX_STACK_ALIGN(struct msg_get_arm_mem, msg);
+	int ret;
+
+	BCM2835_MBOX_INIT_HDR(msg);
+	BCM2835_MBOX_INIT_TAG(&msg->get_arm_mem, GET_ARM_MEMORY);
+
+	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN, &msg->hdr);
+	if (ret)
+		return ret;
+
+	return msg->get_arm_mem.body.resp.mem_size;
+}
+
+int rpi_get_usbethaddr(u8 mac[6])
+{
+	BCM2835_MBOX_STACK_ALIGN(struct msg_get_mac_address, msg);
+	int ret;
+
+	BCM2835_MBOX_INIT_HDR(msg);
+	BCM2835_MBOX_INIT_TAG(&msg->get_mac_address, GET_MAC_ADDRESS);
+
+	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN, &msg->hdr);
+	if (ret) {
+		pr_info("bcm2835: Could not query MAC address\n");
+		return ret;
+	}
+
+	memcpy(mac, msg->get_mac_address.body.resp.mac, 6);
+	return 0;
+}
+
+int rpi_get_board_rev(void)
+{
+	int ret;
+
+	BCM2835_MBOX_STACK_ALIGN(struct msg_get_board_rev, msg);
+	BCM2835_MBOX_INIT_HDR(msg);
+	BCM2835_MBOX_INIT_TAG(&msg->get_board_rev, GET_BOARD_REV);
+
+	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN, &msg->hdr);
+	if (ret) {
+		pr_err("Could not query board revision\n");
+		return ret;
+	}
+
+	return msg->get_board_rev.body.resp.rev;
+}
diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index aeb7eef145cd..49728981ea71 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -45,57 +45,14 @@ struct rpi_priv {
 	const char *name;
 };
 
-struct msg_get_arm_mem {
-	struct bcm2835_mbox_hdr hdr;
-	struct bcm2835_mbox_tag_get_arm_mem get_arm_mem;
-	u32 end_tag;
-};
-
-struct msg_get_board_rev {
-	struct bcm2835_mbox_hdr hdr;
-	struct bcm2835_mbox_tag_get_board_rev get_board_rev;
-	u32 end_tag;
-};
-
-struct msg_get_mac_address {
-	struct bcm2835_mbox_hdr hdr;
-	struct bcm2835_mbox_tag_get_mac_address get_mac_address;
-	u32 end_tag;
-};
-
-static int rpi_get_arm_mem(u32 *size)
-{
-	BCM2835_MBOX_STACK_ALIGN(struct msg_get_arm_mem, msg);
-	int ret;
-
-	BCM2835_MBOX_INIT_HDR(msg);
-	BCM2835_MBOX_INIT_TAG(&msg->get_arm_mem, GET_ARM_MEMORY);
-
-	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN, &msg->hdr);
-	if (ret)
-		return ret;
-
-	*size = msg->get_arm_mem.body.resp.mem_size;
-
-	return 0;
-}
-
 static void rpi_set_usbethaddr(void)
 {
-	BCM2835_MBOX_STACK_ALIGN(struct msg_get_mac_address, msg);
-	int ret;
+	u8 mac[ETH_ALEN];
 
-	BCM2835_MBOX_INIT_HDR(msg);
-	BCM2835_MBOX_INIT_TAG(&msg->get_mac_address, GET_MAC_ADDRESS);
-
-	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN, &msg->hdr);
-	if (ret) {
-		printf("bcm2835: Could not query MAC address\n");
-		/* Ignore error; not critical */
-		return;
-	}
+	if (rpi_get_usbethaddr(mac))
+		return; /* Ignore error; not critical */
 
-	eth_register_ethaddr(0, msg->get_mac_address.body.resp.mac);
+	eth_register_ethaddr(0, mac);
 }
 
 static void rpi_set_usbotg(const char *alias)
@@ -185,50 +142,19 @@ static int rpi_0_w_init(struct rpi_priv *priv)
 	return of_device_disable_by_alias("serial0");
 }
 
-static int rpi_get_board_rev(struct rpi_priv *priv)
-{
-	int ret;
-
-	BCM2835_MBOX_STACK_ALIGN(struct msg_get_board_rev, msg);
-	BCM2835_MBOX_INIT_HDR(msg);
-	BCM2835_MBOX_INIT_TAG(&msg->get_board_rev, GET_BOARD_REV);
-
-	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN, &msg->hdr);
-	if (ret) {
-		dev_err(priv->dev, "Could not query board revision\n");
-		return ret;
-	}
-
-	/* Comments from u-boot:
-	 * For details of old-vs-new scheme, see:
-	 * https://github.com/pimoroni/RPi.version/blob/master/RPi/version.py
-	 * http://www.raspberrypi.org/forums/viewtopic.php?f=63&t=99293&p=690282
-	 * (a few posts down)
-	 *
-	 * For the RPi 1, bit 24 is the "warranty bit", so we mask off just the
-	 * lower byte to use as the board rev:
-	 * http://www.raspberrypi.org/forums/viewtopic.php?f=63&t=98367&start=250
-	 * http://www.raspberrypi.org/forums/viewtopic.php?f=31&t=20594
-	 */
-	priv->hw_id = msg->get_board_rev.body.resp.rev;
-
-	return 0;
-}
-
 static int rpi_mem_init(void)
 {
-	u32 size = 0;
-	int ret;
+	ssize_t size;
 
-	ret = rpi_get_arm_mem(&size);
-	if (ret) {
+	size = rpi_get_arm_mem();
+	if (size < 0) {
 		printf("could not query ARM memory size\n");
 		size = get_ram_size((ulong *) BCM2835_SDRAM_BASE, SZ_128M);
 	}
 
 	bcm2835_add_device_sdram(size);
 
-	return ret;
+	return 0;
 }
 mem_initcall(rpi_mem_init);
 
@@ -357,6 +283,18 @@ static const struct rpi_machine_data *rpi_get_dcfg(struct rpi_priv *priv)
 		return NULL;
 	}
 
+	/* Comments from u-boot:
+	 * For details of old-vs-new scheme, see:
+	 * https://github.com/pimoroni/RPi.version/blob/master/RPi/version.py
+	 * http://www.raspberrypi.org/forums/viewtopic.php?f=63&t=99293&p=690282
+	 * (a few posts down)
+	 *
+	 * For the RPi 1, bit 24 is the "warranty bit", so we mask off just the
+	 * lower byte to use as the board rev:
+	 * http://www.raspberrypi.org/forums/viewtopic.php?f=63&t=98367&start=250
+	 * http://www.raspberrypi.org/forums/viewtopic.php?f=31&t=20594
+	 */
+
 	for (; dcfg->hw_id != U8_MAX; dcfg++) {
 		if (priv->hw_id & 0x800000) {
 			if (dcfg->hw_id != ((priv->hw_id >> 4) & 0xff))
@@ -388,10 +326,12 @@ static int rpi_devices_probe(struct device_d *dev)
 	priv = xzalloc(sizeof(*priv));
 	priv->dev = dev;
 
-	ret = rpi_get_board_rev(priv);
-	if (ret)
+	ret = rpi_get_board_rev();
+	if (ret < 0)
 		goto free_priv;
 
+	priv->hw_id = ret;
+
 	dcfg = rpi_get_dcfg(priv);
 	if (IS_ERR(dcfg))
 		goto free_priv;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

