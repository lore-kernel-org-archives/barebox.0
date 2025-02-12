Delivery-date: Wed, 12 Feb 2025 15:10:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDRD-001SLa-1j
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 15:10:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDRB-0001Qm-Gk
	for lore@pengutronix.de; Wed, 12 Feb 2025 15:10:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hge3dXWqLmLWSqso6zRvO4xgcqzpY7do7aE8+obVuhI=; b=04rRdmldKbLqbNUGpm534etONu
	R8nidg5IcYVD8wxxPFa7S6HjyIucG1cAh+i++ur0G/EwJJxO18/hje9extsztBbkyzgqglZbbshXv
	PLNQXmt41hpncdhDABPWBtDCwydNaa0SIyjsYcG3ytNWEkGNoqkGyqvBv00lXoO+y1XCrFATw8gZM
	01Y6dfilfmXfTwoLO6onVcfbSei2SFZpQ6rx2lE72TsGp4m+U7ey1SlVOnVsQ8KXxP2Eg4A7Jjuds
	untE5AIpX/M3ZUFRctvZo4pqqqU03I7mp65xPSgYNb78tf1h7dMdb3fNkkpo3mlOFl84TkE8MmKJc
	Do5X0L9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDQl-00000007c0A-0Yrx;
	Wed, 12 Feb 2025 14:09:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDQi-00000007bxs-1GvO
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 14:09:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-000125-St; Wed, 12 Feb 2025 15:09:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-000b1s-20;
	Wed, 12 Feb 2025 15:09:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-00AeO5-1l;
	Wed, 12 Feb 2025 15:09:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Feb 2025 15:09:14 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250212-k3-emmc-v2-1-8dd1bb0ce60a@pengutronix.de>
References: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
In-Reply-To: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739369370; l=1876;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=GQ82rSUmCtRl4bVjM5EuLLazXqZE/mDpxsJ0vqp9ofY=;
 b=K7sIqGBJY9ekXKHKnBceoVfKb4NW7GZ1nWAzTPDVodCIXZ1ursh1oLF2J4yizypZuwhMHasJ2
 qvSedIrttUwCWbHwd7QJfZjJTxRrqjWG6vD9NNxdqCTsrHvcubE0cAw
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_060932_352478_6C5D2244 
X-CRM114-Status: GOOD (  12.05  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 01/20] ARM: k3: Add function to enable 32k crystal
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The external 32k crystal is optional and by default LFOSC0 is sourced
by a RC oscillator. This adds a function to be called by board code
when the 32k crystal is present and shall be used to source LFOSC0
from the crystal.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/common.c | 20 ++++++++++++++++++++
 include/mach/k3/common.h  |  1 +
 2 files changed, 21 insertions(+)

diff --git a/arch/arm/mach-k3/common.c b/arch/arm/mach-k3/common.c
index 3922a0ff19..c779e873c9 100644
--- a/arch/arm/mach-k3/common.c
+++ b/arch/arm/mach-k3/common.c
@@ -170,6 +170,26 @@ static void of_delete_node_path(struct device_node *root, const char *path)
 	of_delete_node(np);
 }
 
+#define MCU_CTRL_MMR0_BASE			0x04500000
+#define MCU_CTRL_LFXOSC_CTRL			(MCU_CTRL_MMR0_BASE + 0x8038)
+#define MCU_CTRL_LFXOSC_32K_DISABLE_VAL		BIT(7)
+#define MCU_CTRL_DEVICE_CLKOUT_LFOSC_SELECT_VAL	(0x3)
+#define MCU_CTRL_DEVICE_CLKOUT_32K_CTRL		(MCU_CTRL_MMR0_BASE + 0x8058)
+
+void am625_enable_32k_crystal(void)
+{
+	u32 val;
+
+	/* Enable 32k crystal */
+	val = readl(MCU_CTRL_LFXOSC_CTRL);
+	val &= ~(MCU_CTRL_LFXOSC_32K_DISABLE_VAL);
+	writel(val, MCU_CTRL_LFXOSC_CTRL);
+
+	/* select 32k clock from LFOSC0 */
+	writel(MCU_CTRL_DEVICE_CLKOUT_LFOSC_SELECT_VAL,
+	       MCU_CTRL_DEVICE_CLKOUT_32K_CTRL);
+}
+
 #define CTRLMMR_WKUP_JTAG_DEVICE_ID	(AM625_WKUP_CTRL_MMR0_BASE + 0x18)
 
 #define JTAG_DEV_CORE_NR		GENMASK(21, 19)
diff --git a/include/mach/k3/common.h b/include/mach/k3/common.h
index d7ceea51d7..3377dc8895 100644
--- a/include/mach/k3/common.h
+++ b/include/mach/k3/common.h
@@ -6,5 +6,6 @@
 void am625_get_bootsource(enum bootsource *src, int *instance);
 u64 am625_sdram_size(void);
 void am625_register_dram(void);
+void am625_enable_32k_crystal(void);
 
 #endif /* __MACH_K3_COMMON_H */

-- 
2.39.5



