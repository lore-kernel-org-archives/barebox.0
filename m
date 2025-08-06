Delivery-date: Wed, 06 Aug 2025 14:23:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdBN-007dPm-2L
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 14:23:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdBN-0007MI-6B
	for lore@pengutronix.de; Wed, 06 Aug 2025 14:23:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Xq3jjP1NTKVsl22lrYP0H9qbhdWm2IiOXLtd+/XuSIY=; b=lAxDgMJ3/GSUcygvyiRvHH3Ckd
	emx3gXnqfS9NZdMc4xsKx2ULlBefR9Uj19qkFXN5RG2rKFuvKzsnlwknXxk+roGzqiWn7EIIeHjbc
	jpa53rbx+5YezZ6kfWWJFZP69e2uBw6XT7PWStDxaCVf1VIvQUm/+0chvFV09w540RubgPkNplQo9
	yhu8lsI9+pv06noGjRyJjkqAsU56qejPxry5S09+qvUPMXp2Q0cv/GY3umXS1ecPS1O6NeThxFay4
	El7RB8PoaWyYMWsGG3wUgFvnpza2TUjYCBg1/CjoNtQHFJkE+Mbj8sZyisw2LC9CcDjcET6C+l09e
	WULsfXgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdAf-0000000F7ro-3mOt;
	Wed, 06 Aug 2025 12:23:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdAc-0000000F7rO-3xFH
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 12:23:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdAb-0007GU-1L; Wed, 06 Aug 2025 14:23:01 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdAa-00CCtm-2l;
	Wed, 06 Aug 2025 14:23:00 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdAa-002jwI-2S;
	Wed, 06 Aug 2025 14:23:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 14:22:59 +0200
Message-Id: <20250806122259.650027-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_052302_981592_9AFB950F 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! net: add support for Designware XGMAC (10gb) ethernet
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

net: xgmac: fix COMPILE_TEST build

The socfpga_secure_reg_ helpers use SMC SIP calls and are only
compiled-on when CONFIG_ARCH_SOCFPGA_AGILEX5 is enabled.

Add stubs to fix sandbox allyes builds.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/mach/socfpga/secure_reg_helper.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/include/mach/socfpga/secure_reg_helper.h b/include/mach/socfpga/secure_reg_helper.h
index d5a11122c723..3cac57b56f48 100644
--- a/include/mach/socfpga/secure_reg_helper.h
+++ b/include/mach/socfpga/secure_reg_helper.h
@@ -7,13 +7,22 @@
 #ifndef	_SECURE_REG_HELPER_H_
 #define	_SECURE_REG_HELPER_H_
 
+#include <linux/types.h>
+#include <linux/errno.h>
+
 #define SOCFPGA_SECURE_REG_SYSMGR_SOC64_SDMMC 1
 #define SOCFPGA_SECURE_REG_SYSMGR_SOC64_EMAC0 2
 #define SOCFPGA_SECURE_REG_SYSMGR_SOC64_EMAC1 3
 #define SOCFPGA_SECURE_REG_SYSMGR_SOC64_EMAC2 4
 
+#ifdef CONFIG_ARCH_SOCFPGA_AGILEX5
 int socfpga_secure_reg_read32(u32 id, u32 *val);
 int socfpga_secure_reg_write32(u32 id, u32 val);
 int socfpga_secure_reg_update32(u32 id, u32 mask, u32 val);
+#else
+static inline int socfpga_secure_reg_read32(u32 id, u32 *val) { return -ENOSYS; }
+static inline int socfpga_secure_reg_write32(u32 id, u32 val) { return -ENOSYS; }
+static inline int socfpga_secure_reg_update32(u32 id, u32 mask, u32 val) { return -ENOSYS; }
+#endif
 
 #endif /* _SECURE_REG_HELPER_H_ */
-- 
2.39.5



