Delivery-date: Thu, 13 Nov 2025 10:35:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJTjP-000Upw-1U
	for lore@lore.pengutronix.de;
	Thu, 13 Nov 2025 10:35:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJTjO-0007LA-RG
	for lore@pengutronix.de; Thu, 13 Nov 2025 10:35:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AZ4FQFG/JpkrPBcUw+Vv/V0kabAdVm09bkOcv1urcAU=; b=xAFLAA0KP6OVKbRhMTZcTTT+/0
	CWCNsVzYAIwYKg4kbBAVsotKKwBKnA/ThI69iKwfPdu+tavdpP4leUeXrmOMd5TuoEvdwm4wyENwJ
	ourkTcT47sa1D9htg058nUnoY1S08RfLRm5ursRrCNniGz0a7vof//EuVABp74wNXY3hV/+WcRzOX
	AudsoxKps0eGHbUsZ6PH4RfUwmkdvYL6THl8hpHpYepNiy/BlKw027KJEPX817dKrG9wJc1TK4KD5
	mtJfALaXP3yzQ5soouXaU0YqYr5Aus/m23ewPZ1aIKH/2CS4q2I8ai/5cMCOM7gd7txmmS5dfNCMR
	+fQxdYwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJTiw-0000000ACTh-3YT8;
	Thu, 13 Nov 2025 09:34:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJTir-0000000ACRY-3CG7
	for barebox@lists.infradead.org;
	Thu, 13 Nov 2025 09:34:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTio-00070L-DP; Thu, 13 Nov 2025 10:34:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTin-000EXr-38;
	Thu, 13 Nov 2025 10:34:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTio-00000008Q1y-1DqH;
	Thu, 13 Nov 2025 10:34:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Nov 2025 10:34:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251113-soc-uid-v1-3-29a256e07144@pengutronix.de>
References: <20251113-soc-uid-v1-0-29a256e07144@pengutronix.de>
In-Reply-To: <20251113-soc-uid-v1-0-29a256e07144@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763026469; l=847;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=rIV3C+RtzSE4LCSIMXCcFiZ+fdDI/AwG7OBN4XnBBII=;
 b=eUxiHf3EOWHzpDqhxgcjbMjs3cSQSx8uaLgzX+20IU/skoXg3Nz5V9ZbAKKmUuAeTxbJPFvFp
 mpXrQErsaeMDpbf9wS9AaR8gs7cAlN2SNDtNh4mMvmg9MUKOkTUAJFQ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_013433_850901_DE96469C 
X-CRM114-Status: GOOD (  10.74  )
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
Subject: [PATCH 3/9] ARM: i.MX6: print leading zero for SoC ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Print leading zeroes for the SoC ID which is the same as other places
incuding Linux do which print the i.MX SoC ID.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 29a56de56293d0cd11b51e23b3528a5f2af9a43b..8319251ec5fdbfe0b05f6d44e07bbe719eb31e26 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -226,7 +226,7 @@ int imx6_init(void)
 
 	imx_set_silicon_revision(cputypestr, mx6_silicon_revision);
 	imx_set_reset_reason(src + IMX_SRC_SRSR, imx_reset_reasons);
-	pr_info("%s unique ID: %llx\n", cputypestr, mx6_uid);
+	pr_info("%s unique ID: %0llx\n", cputypestr, mx6_uid);
 
 	imx6_setup_ipu_qos();
 	imx6ul_enet_clk_init();

-- 
2.47.3



