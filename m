Delivery-date: Fri, 02 Feb 2024 16:31:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVvWD-0002S8-1i
	for lore@lore.pengutronix.de;
	Fri, 02 Feb 2024 16:31:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVvWD-0005nC-Lb
	for lore@pengutronix.de; Fri, 02 Feb 2024 16:31:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ultX3ciGo5Ud2lcEvMCjldtOV1P1KlzBUreMNeFUhkE=; b=d13u4YGIGndZx8i7EFadaH4Bhu
	4jUJ9ksuoWX18FH2Nq2PaFGNVg7elLqHvoADDMNi4bWiZeejC9H3ATPDf3pWYik4QH7/P6gkVxvhU
	SijcTDUbw7WUKeUSLpcorekZmRFYupgcq4sPs34v0yL6IITIDVW+2cIhNtS53+ys8ck0WwgvdxZ52
	tqdcEBSKIx+cjemLc0c/+BrID/RKfGfDO7MHo6wtzJYaSgalOHdu/C0UOeiv5Mjp1ti72YZ+nK87V
	z1F0venbfehKmKidHm26ktvAmGyuOi08dyCfg62AWy+VN/bkX8pGi1Xd6jkzGB64TVx1b41nMBsCQ
	03GVaDKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvVl-0000000C13x-0jdZ;
	Fri, 02 Feb 2024 15:31:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvVc-0000000C0ym-0xtX
	for barebox@lists.infradead.org;
	Fri, 02 Feb 2024 15:31:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVvVb-0005Ug-2o; Fri, 02 Feb 2024 16:31:15 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVvVa-0045XU-LS; Fri, 02 Feb 2024 16:31:14 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVvVa-0015Pr-1p;
	Fri, 02 Feb 2024 16:31:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  2 Feb 2024 16:31:11 +0100
Message-Id: <20240202153113.245488-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240202153113.245488-1-s.hauer@pengutronix.de>
References: <20240202153113.245488-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240202_073116_347575_83B04946 
X-CRM114-Status: UNSURE (   9.04  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 6/8] ARM: i.MX9: add i2c base address defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add I2C base addresses for non device tree PBL use.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mach/imx/imx9-regs.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/mach/imx/imx9-regs.h b/include/mach/imx/imx9-regs.h
index 6be61c90e3..6a87f7eb3a 100644
--- a/include/mach/imx/imx9-regs.h
+++ b/include/mach/imx/imx9-regs.h
@@ -1,13 +1,21 @@
 #ifndef __MACH_IMX9_REGS_H
 #define __MACH_IMX9_REGS_H
 
+#define MX9_I2C3_BASE_ADDR		0x42530000UL
+#define MX9_I2C4_BASE_ADDR		0x42540000UL
 #define MX9_UART3_BASE_ADDR		0x42570000UL
 #define MX9_UART4_BASE_ADDR		0x42580000UL
 #define MX9_UART5_BASE_ADDR		0x42590000UL
 #define MX9_UART6_BASE_ADDR		0x425a0000UL
 #define MX9_UART7_BASE_ADDR		0x42690000UL
 #define MX9_UART8_BASE_ADDR		0x426a0000UL
+#define MX9_I2C5_BASE_ADDR		0x426b0000UL
+#define MX9_I2C6_BASE_ADDR		0x426c0000UL
+#define MX9_I2C7_BASE_ADDR		0x426d0000UL
+#define MX9_I2C8_BASE_ADDR		0x426e0000UL
 #define MX9_SYSCNT_CTRL_BASE_ADDR	0x44290000UL
+#define MX9_I2C1_BASE_ADDR		0x44340000UL
+#define MX9_I2C2_BASE_ADDR		0x44350000UL
 #define MX9_UART1_BASE_ADDR		0x44380000UL
 #define MX9_UART2_BASE_ADDR		0x44390000UL
 #define MX9_IOMUXC_BASE_ADDR		0x443c0000UL
-- 
2.39.2



