Delivery-date: Wed, 24 Sep 2025 10:14:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1KeA-000UyV-0P
	for lore@lore.pengutronix.de;
	Wed, 24 Sep 2025 10:14:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1Ke9-0000ge-Jn
	for lore@pengutronix.de; Wed, 24 Sep 2025 10:14:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=y/UzDKaWyeTpeQ4zjMCyEIVvQ/IxnN3+9L1PHPiyPzo=; b=KPQdAkD8VsUphAIRh9JUUxV4Ku
	35dQmrlivg5l+3e7ENZ2bN7u8AZ+jfyH2/v5+wuQD6HGQ2evf7bf0eLNvsmh01vvHIOtdt4T1OH7W
	DnC8p1HkVj2c38JEW8k+cFnzeVbMoWSBlsDKwjIo6+nQ7wFzXFRhPPxndoq38BymFg1sXXiIglDZA
	OzajMOAkVVctjUYRYdcqvDzzXPln0YoznxBJ+Kbe+coFMd27fLLjW6POGCx/QdlN4YJ3u3eFOtnCI
	HODVVZY++BKss/PXKnahk9sXMn4AGVnXro6942V48TGIMmnre+MOQvA9gXWEqC5dfB9Ws23JkJA/c
	dVKIcSgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Kda-0000000FqL5-1ijr;
	Wed, 24 Sep 2025 08:14:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1KdX-0000000FqJl-16xN
	for barebox@lists.infradead.org;
	Wed, 24 Sep 2025 08:14:04 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v1KdT-0000b8-RX; Wed, 24 Sep 2025 10:13:59 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Wed, 24 Sep 2025 10:13:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-prt8ml-fixup-v1-1-477ac5d8d67e@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAD6o02gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDSyMT3YKiEovcHN20zIrSAl3T5JS0RBNz86TkRAsloJaColSgBNi46Nj
 aWgAJNkUYXgAAAA==
X-Change-ID: 20250924-prt8ml-fixup-5cdfa477bca8
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1058; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=ysgus3LtENBnFzRO90wTnpxZsEQybV5RSO9NJVrGLZo=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsi4vMJdMUEh7Kh3teYVlizR+3pfShoSFqi2Lt39+nt15
 GSl4EfdHaUsDGJcDLJiiiyxanIKQsb+180q7WJh5rAygQxh4OIUgImceczIMDlN34rxdtLDlUE3
 9rHu5r30d3nZ6idJ9//J8hV/vbeMPYDhn0bhG2Mzzg1vLRaZ9Hr5XPuZt+/Q73mnj4WG996PjHa
 YwQ8A
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_011403_304661_B9051C9A 
X-CRM114-Status: UNSURE (   7.24  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! ARM: boards: Add support for PRT8ML
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Remove redundant clock setup code already present in
imx8m_ccgr_clock_enable() called from imx8mp_cpu_lowlevel_init()

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 arch/arm/boards/protonic-imx8m/lowlevel-prt8ml.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/boards/protonic-imx8m/lowlevel-prt8ml.c b/arch/arm/boards/protonic-imx8m/lowlevel-prt8ml.c
index 54c0e4a1a7..ffbc08b6bc 100644
--- a/arch/arm/boards/protonic-imx8m/lowlevel-prt8ml.c
+++ b/arch/arm/boards/protonic-imx8m/lowlevel-prt8ml.c
@@ -86,11 +86,6 @@ static __noreturn noinline void prt_prt8ml_start(void)
 
 ENTRY_FUNCTION(start_prt_prt8ml, r0, r1, r2)
 {
-	void __iomem *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
-
-	writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + IMX8M_CCM_CCGRn_SET(IMX8M_CCM_CCGR_SCTR));
-
 	imx8mp_cpu_lowlevel_init();
 
 	relocate_to_current_adr();

---
base-commit: 7e32be40a193007e138c0eb589eb852420655523
change-id: 20250924-prt8ml-fixup-5cdfa477bca8

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



