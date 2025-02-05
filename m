Delivery-date: Wed, 05 Feb 2025 10:48:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfc1i-008kW7-2f
	for lore@lore.pengutronix.de;
	Wed, 05 Feb 2025 10:48:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfc1i-0004dE-CX
	for lore@pengutronix.de; Wed, 05 Feb 2025 10:48:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hge3dXWqLmLWSqso6zRvO4xgcqzpY7do7aE8+obVuhI=; b=W/nwvNhki2bJ8+TaUiYRLD+/Tk
	8YKxE7NMjQFG8HujOVxpcoaPzbDQ7nfaXB/921gL23ackOBrJHRHcY+QCR0UimDrtfMZEitsJeZ6v
	cBvruHg/4NAsWnSD8V+IwYktYFYHw7toCZr9z6ThJ6jq6Q2k15fB+hnhbewEDde1eAA1dQHVKF+5Y
	rVbxBY+YWL57Oz/VYt8srthzfd33xJ4XqWAUVJbMlu60H5mMHnYfJRrX+r83HRtLKekleA63zmom4
	AJoMLAYMLPfr8nBa5rJuXoDFcBiMVskb7mX3oIekL8ZbvLQMxpf+l590HSoi416BGU9thurMVnQcR
	TcaUm4eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfc16-00000002kGv-3f1y;
	Wed, 05 Feb 2025 09:48:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfc12-00000002kDV-49PR
	for barebox@lists.infradead.org;
	Wed, 05 Feb 2025 09:48:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-00048G-IM; Wed, 05 Feb 2025 10:48:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-003c2c-17;
	Wed, 05 Feb 2025 10:48:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-00F0Mw-0s;
	Wed, 05 Feb 2025 10:48:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 05 Feb 2025 10:48:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250205-k3-emmc-v1-1-06679246be41@pengutronix.de>
References: <20250205-k3-emmc-v1-0-06679246be41@pengutronix.de>
In-Reply-To: <20250205-k3-emmc-v1-0-06679246be41@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738748893; l=1876;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=GQ82rSUmCtRl4bVjM5EuLLazXqZE/mDpxsJ0vqp9ofY=;
 b=lHBqIYYgzUkv7C040lJU/C1Q3AwDYImlaaLIbmsFa6jaAZ31vgIEztwKuSlqmrUOfsJdHXBzz
 kE4fLQzj8PuAsKqRj3FL/S7kbcz1KlioQ+uV9YZRU2kHk/2jwtZgb79
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_014817_073064_E8475D9C 
X-CRM114-Status: GOOD (  11.94  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/9] ARM: k3: Add function to enable 32k crystal
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



