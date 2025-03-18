Delivery-date: Tue, 18 Mar 2025 09:25:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuSGb-000xpW-1f
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 09:25:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuSGa-0004gc-AA
	for lore@pengutronix.de; Tue, 18 Mar 2025 09:25:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GCtRbAQphZf8G8G2YA5AFWgQTcYiYKRlbVYTamDK41c=; b=BjXlbgmWkqcLUDkdh++HELGqTd
	MLuTRly0vqJBQ+b7dRjpkzPoP4SPoj1sIVlaOzlS+zW+xhJI5Viooq3ZZ+rskaXkAi28+Fk6Xkwha
	BOENJUdSNc5qPMU9BUFfEZX9QbSzizHdejpuDgRaGay8SZGkSeaY8tMi7GkD3HDApnkW8EnNbcTnT
	ajK31JSbKqcd7elX9UH1Ik5m/7mwJXutI5IGicW7TW2kS1PyiXWIXsTDfFz8bA4xCG7x3LJRBq82z
	fgYIbqgtSGEw+XOjm+jHdFzS+odonsatKPZcKghSdHbVIFuMewYUVLbjToFU30uf7uHR2hrUIgmOc
	5v1QVaww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuSG9-000000059yq-2TgL;
	Tue, 18 Mar 2025 08:25:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuSG6-000000059x1-0Y0P
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 08:25:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuSG4-0004Q6-PX; Tue, 18 Mar 2025 09:25:08 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuSG4-000OTX-0L;
	Tue, 18 Mar 2025 09:25:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuSG4-001lFs-1Q;
	Tue, 18 Mar 2025 09:25:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Mar 2025 09:25:06 +0100
Message-Id: <20250318082507.419785-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250318082507.419785-1-a.fatoum@pengutronix.de>
References: <20250318082507.419785-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_012510_173549_F71AE861 
X-CRM114-Status: GOOD (  21.05  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] amba: support masking data abort during identification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Registration of an AMBA device requires reading its pid and cid
registers after turning on the device. This is the first I/O done to the
device and may end up crashing if the device tree doesn't describe
the correct clock and power domains or if a previous boot stage
should've enabled them, but didn't.

This is not a likely issue, but when it happens it crashes the system
annoyingly early during device tree populating.

Add a symbol that masks the data abort exception around the
identification code to turn the crash into an error message instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/amba/Kconfig | 19 +++++++++++++++++++
 drivers/amba/bus.c   | 12 +++++++++++-
 2 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/amba/Kconfig b/drivers/amba/Kconfig
index 444d4ce7435c..be5e053f4b84 100644
--- a/drivers/amba/Kconfig
+++ b/drivers/amba/Kconfig
@@ -1,3 +1,22 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config ARM_AMBA
 	bool
+
+config ARM_AMBA_DABT_MASK
+	bool
+	prompt "Mask data abort while identifying AMBA devices" if COMPILE_TEST
+	depends on ARM_AMBA && ARCH_HAS_DATA_ABORT_MASK
+	help
+	  Registration of an AMBA device requires reading its pid and cid
+	  registers after turning on the device, which can involve enabling
+	  clocks, deasserting resets and powering on power domains.
+	  In some cases, these resources are not available to barebox running
+	  in the normal world and thus need to be setup by a previous
+	  stage bootloader running in the secure world.
+	  If such setup doesn't happen, accessing devices may lead to
+	  a data abort or complete system hang.
+
+	  As a workaround for the former case, this option can be enabled
+	  to gracefully handle data aborts during readout of the PID/CID
+	  registers. The proper solution is fixing your first stage
+	  bootloader or allow barebox access to the missing resources.
diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index 6463366fafc5..5ed8336e6124 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -10,6 +10,7 @@
 #include <linux/amba/bus.h>
 #include <io.h>
 #include <init.h>
+#include <abort.h>
 
 #define to_amba_driver(d)	container_of(d, struct amba_driver, drv)
 
@@ -132,6 +133,9 @@ int amba_device_add(struct amba_device *dev)
 	if (ret == 0) {
 		u32 pid, cid;
 
+		if (IS_ENABLED(CONFIG_ARM_AMBA_DABT_MASK))
+			data_abort_mask();
+
 		/*
 		 * Read pid and cid based on size of resource
 		 * they are located at end of region
@@ -139,8 +143,14 @@ int amba_device_add(struct amba_device *dev)
 		pid = amba_device_get_pid(tmp, size);
 		cid = amba_device_get_cid(tmp, size);
 
-		if (cid == AMBA_CID)
+		if (IS_ENABLED(CONFIG_ARM_AMBA_DABT_MASK) && data_abort_unmask()) {
+			dev_err(amba_bustype.dev,
+				"data abort during MMIO read of PID/CID for %pOF\n",
+				dev->dev.of_node);
+			ret = -EFAULT;
+		} else if (cid == AMBA_CID) {
 			dev->periphid = pid;
+		}
 
 		if (!dev->periphid)
 			ret = -ENODEV;
-- 
2.39.5



