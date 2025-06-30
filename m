Delivery-date: Mon, 30 Jun 2025 10:06:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9X0-00CYcj-1s
	for lore@lore.pengutronix.de;
	Mon, 30 Jun 2025 10:06:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9X0-0006R4-25
	for lore@pengutronix.de; Mon, 30 Jun 2025 10:06:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qslZjbTEoRdIKI1aNH+ytTOEH6Om81afL2sVwhMHAr4=; b=h03927pRG2swfCNUtGqyNvDvJd
	mE8gJn4z/lDZS0z1jl5HVnmfnU3xq3ytHjxyv4kdOGDUEoTkp+tnc7agVgjg61GZ7JVcsxUJzGsyA
	pXsuBmQeec6yOreecnEADJ1uUPGMy6JIKDXreSf6CRSS693n3IZ8eyHZ4CkmNAiBupF8VVW4ltvam
	gYoWO+V/y9oXPyN8Jcpyjbw31ZcGsRtmjeX825047lJl3mVqOe8SZwV8aLESzM/Ut70woTWfCawDP
	OGSWTUaYBlbjofM41NI+6wouKouyTFgVGSASX4HdLl4AYXe4d76WrZ1LQJf4zGa3HjVoFJpG2HdEH
	6p3d/24w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9WX-00000001Z0u-3l6B;
	Mon, 30 Jun 2025 08:05:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9VR-00000001YkZ-20OH
	for barebox@lists.infradead.org;
	Mon, 30 Jun 2025 08:04:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9VQ-0004ra-83; Mon, 30 Jun 2025 10:04:48 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9VQ-0064Qb-0D;
	Mon, 30 Jun 2025 10:04:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-004Sjo-0d;
	Mon, 30 Jun 2025 09:45:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Jun 2025 09:45:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250630-arm-optee-early-helper-v2-14-c8cce3ae42b0@pengutronix.de>
References: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
In-Reply-To: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751269548; l=1026;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Ore+DOELgzcyZzwacM3e+bAk5EYpvAwgm69W58gMzJE=;
 b=hk48kMPAaCozmWzYLqgCwXJX45n2ipwoODQrfWhCiK+FY0kJQLAakLbcTMw5sfYfp19K3vjvk
 d2i5zIKarA3CAeovYqwcwySpm5qRSxxRbttFtvDem0sweAJLPlE9NlK
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_010449_518533_CFD179A9 
X-CRM114-Status: UNSURE (   9.67  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 14/14] ARM: i.MX: tqma6ulx: use ENTRY_FUNCTION_WITHSTACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The first thing the tqma6ulx lowlevel code does is setting up the stack.
Use ENTRY_FUNCTION_WITHSTACK() which is specifically for this purpose.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqma6ulx/lowlevel.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/boards/tqma6ulx/lowlevel.c b/arch/arm/boards/tqma6ulx/lowlevel.c
index da67e67537167096477de2b905ee5c42c653c3af..57639f8a84e7680c4ee0608abf31ae8b6f1cfd28 100644
--- a/arch/arm/boards/tqma6ulx/lowlevel.c
+++ b/arch/arm/boards/tqma6ulx/lowlevel.c
@@ -92,13 +92,10 @@ static void noinline start_mba6ulx(void)
 	imx6ul_barebox_entry(fdt);
 }
 
-ENTRY_FUNCTION(start_imx6ul_mba6ulx, r0, r1, r2)
+ENTRY_FUNCTION_WITHSTACK(start_imx6ul_mba6ulx, 0x00910000, r0, r1, r2)
 {
-
 	imx6ul_cpu_lowlevel_init();
 
-	arm_setup_stack(0x00910000);
-
 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 		imx6_uart_setup_ll();
 		putc_ll('>');

-- 
2.39.5



