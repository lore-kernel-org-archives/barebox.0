Delivery-date: Thu, 01 Feb 2024 00:00:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVJZ5-00EZj3-2L
	for lore@lore.pengutronix.de;
	Thu, 01 Feb 2024 00:00:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVJZ6-0007f9-2N
	for lore@pengutronix.de; Thu, 01 Feb 2024 00:00:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1iUYzcfennDJyujKA2NfIJjWAhUNMs/85Occwb/ZbhQ=; b=G/WXbrXl+TcjShV+bME2djPyWk
	kI+oRq/gG/Sp4eClggjULrbSZh/H28uXiXIvDokJXi48qysjUO0RZhQKkCFtb4dudJ3/iWznIlcC3
	2vonlYh/Bm7u0qkqKy44ZIiwSeHNZGuz+/Hr4WHpM2rGfbZFxk8EB4PiFIzgeFOdK9kivtVd4CZa4
	iXQeTcTZXKAcfpRsAMIagk0grRIcRNQHKrtySe3zRA+2sVWkb8rRlCl0OIEj3TYanKKLxJ0zeEIRw
	JoaPcV3GBTrGHj2JWwA7MvgsZAD7rEkfqs/kljjeK8uHEurmDqfww5Egul4XIEVx9Eos9HG83sX5R
	63GdAvEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVJYX-00000005lR6-3yi4;
	Wed, 31 Jan 2024 22:59:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVJYU-00000005lOr-04Vk
	for barebox@lists.infradead.org;
	Wed, 31 Jan 2024 22:59:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rVJYR-0007L9-NA; Wed, 31 Jan 2024 23:59:39 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rVJYR-003j6h-AW; Wed, 31 Jan 2024 23:59:39 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rVJYR-007KFg-0l;
	Wed, 31 Jan 2024 23:59:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: str@pengutronix.de,
	ske@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 Jan 2024 23:59:35 +0100
Message-Id: <20240131225938.1746123-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240131225938.1746123-1-a.fatoum@pengutronix.de>
References: <20240131225938.1746123-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_145942_120351_5AD37E7D 
X-CRM114-Status: UNSURE (   9.83  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 1/4] ARM: socfpga: complete definitions of handoff registers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The four ISWGRP_HANDOFF_* macro definitions expand to undefined macros.
In preparation for using one of them, fix them so they expand to the
address of the respective handoff register.

No functional change as the macros are yet unused.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/mach/socfpga/cyclone5-system-manager.h | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/include/mach/socfpga/cyclone5-system-manager.h b/include/mach/socfpga/cyclone5-system-manager.h
index 7cec60937b84..341eaaac7e53 100644
--- a/include/mach/socfpga/cyclone5-system-manager.h
+++ b/include/mach/socfpga/cyclone5-system-manager.h
@@ -28,10 +28,15 @@ void socfpga_sysmgr_pinmux_init(unsigned long *sys_mgr_init_table, int num);
 /* EMAC interface selection */
 #define CONFIG_SYSMGR_EMAC_CTRL		(CYCLONE5_SYSMGR_ADDRESS + 0x60)
 
-#define ISWGRP_HANDOFF_AXIBRIDGE	SYSMGR_ISWGRP_HANDOFF0
-#define ISWGRP_HANDOFF_L3REMAP		SYSMGR_ISWGRP_HANDOFF1
-#define ISWGRP_HANDOFF_FPGAINTF		SYSMGR_ISWGRP_HANDOFF2
-#define ISWGRP_HANDOFF_FPGA2SDR		SYSMGR_ISWGRP_HANDOFF3
+#define SYSMGR_ISWGRP_HANDOFF		0x80
+
+#define SYSMGR_ISWGRP_HANDOFF_ADDR(i)	\
+	IOMEM(CYCLONE5_SYSMGR_ADDRESS + SYSMGR_ISWGRP_HANDOFF + ((i) * sizeof(u32)))
+
+#define ISWGRP_HANDOFF_AXIBRIDGE	SYSMGR_ISWGRP_HANDOFF_ADDR(0)
+#define ISWGRP_HANDOFF_L3REMAP		SYSMGR_ISWGRP_HANDOFF_ADDR(1)
+#define ISWGRP_HANDOFF_FPGAINTF		SYSMGR_ISWGRP_HANDOFF_ADDR(2)
+#define ISWGRP_HANDOFF_FPGA2SDR		SYSMGR_ISWGRP_HANDOFF_ADDR(3)
 
 /* pin mux */
 #define SYSMGR_PINMUXGRP		(CYCLONE5_SYSMGR_ADDRESS + 0x400)
-- 
2.39.2



