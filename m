Delivery-date: Mon, 05 Jan 2026 11:45:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vci5k-001UV2-2s
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 11:45:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vci5j-0000cW-Vd
	for lore@pengutronix.de; Mon, 05 Jan 2026 11:45:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GgRe2DHjxs9LJkP5CmMHWYdS5H68HoPLo93FhO/VxP8=; b=zEs8KD+/nea3BWwH1gsIJxbPGv
	IwzToh5q2wtludcqFZ9HoMI5uclgZWwyX+cI44cjnFtSxnRsEq0ddO4EahZTGvgQ3ArHCO1U1GTpU
	rCPQBvHD/JitEQvoSpMNajvineeDkLdyns1VL7Sz8d+zD0oEjpxlR+oPeB/5L46UvfLeNnle3perE
	90cCoXFR+Eomwof64/hwyzY4kL5wVIpF4p8i3reMn8zTsEAUtTuBfyXcmPDzqDqfN+cY0Uv1bf0EA
	E/+N34J1oLhdKDwIlGyT8AfLPbyWByqVif3IpO2/FuEYWBqJVmv+woJxmKS7Q8Q1Q0U4nU3QUpBhm
	7chEhgsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vci5N-0000000B8Pt-0nsO;
	Mon, 05 Jan 2026 10:45:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vci5J-0000000B8NG-0xr9
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 10:45:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vci59-0000O1-RK; Mon, 05 Jan 2026 11:45:03 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vci59-0099TU-20;
	Mon, 05 Jan 2026 11:45:03 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vci59-00000007IHq-2HOr;
	Mon, 05 Jan 2026 11:45:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 05 Jan 2026 11:44:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-riotboard-v1-2-789b844d7e36@pengutronix.de>
References: <20260105-riotboard-v1-0-789b844d7e36@pengutronix.de>
In-Reply-To: <20260105-riotboard-v1-0-789b844d7e36@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767609903; l=959;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=HB/5ipP6xdf3aTioPCGWM9FSkQttuiLvFgEKAGmpUts=;
 b=MIhIQiey2fPEntKaxBXhQUaUPy9UUlFcM2BZUGZZi3QAj/A6T1bcKevN+fTsWajum0bQqCfJv
 zxoezc9CKxDCUaFsQduT9kGLmxEyWsje8kUFmu4KBknhYtfJ9DO5eDC
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_024514_145392_4DA2C21D 
X-CRM114-Status: GOOD (  10.48  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] ARM: i.MX6: Riotboard: Add hint how to enable DEBUG_LL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's not obvious which UART to chose when trying to get DEBUG_LL output
from a board. Start improving the situation by adding a comment
describing which options to enable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/embest-riotboard/lowlevel.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boards/embest-riotboard/lowlevel.c b/arch/arm/boards/embest-riotboard/lowlevel.c
index 3aae39f75f70601a0da7b061a5bd2b922a3e1cea..f1b37c2aa00d44ad8a2091abf21584ca531b7794 100644
--- a/arch/arm/boards/embest-riotboard/lowlevel.c
+++ b/arch/arm/boards/embest-riotboard/lowlevel.c
@@ -21,6 +21,10 @@ ENTRY_FUNCTION(start_imx6s_riotboard, r0, r1, r2)
 	imx6_cpu_lowlevel_init();
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
+		/*
+		 * CONFIG_DEBUG_IMX6Q_UART=y
+		 * CONFIG_DEBUG_IMX_UART_PORT=2
+		 */
 		writel(0x4, 0x020e016c);
 		imx6_ungate_all_peripherals();
 		imx6_uart_setup_ll();

-- 
2.47.3



