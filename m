Delivery-date: Wed, 25 Feb 2026 16:29:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvGox-005ZIm-26
	for lore@lore.pengutronix.de;
	Wed, 25 Feb 2026 16:29:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvGox-000568-VF
	for lore@pengutronix.de; Wed, 25 Feb 2026 16:29:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RxKOfZ0tbYi8DkthworsgE7JaUDcsM8rWG9MsEzV4mQ=; b=vR+mSk+A+XxgnTqMcxKZWhzZc/
	my1liXfOcqdM0RjqSu/h+mvzMD/KVrao60x/pkpK5PwTLrbjGsz7YZqM66crOQEFckd3puKCnLKxp
	k7ePuDrNRklhfpKCm0KmlrqRMHcIFB7yMbRvZhYDngVrla/e+yQAKLaS3lvQFBS215WemrmVGxX41
	2qTzhOEX190einmTazO1GRXCnjp87pEr4WUvH3DHBQlgdn0rpG5Uu6oiifs3E+lQ64rwiZDuSa/gX
	Rj/PO5NkAu/b9x/eMViC5ujFXH+gJoP6k+oFkeMEzUFXZduG98xCVrxIzrPFQpKuWEDFVNn2M0Hiw
	uEZ14kcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvGoY-00000004I0c-2GTD;
	Wed, 25 Feb 2026 15:28:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvGoV-00000004HzE-0OFF
	for barebox@lists.infradead.org;
	Wed, 25 Feb 2026 15:28:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvGoT-0004ul-E8; Wed, 25 Feb 2026 16:28:33 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvGoR-002aJk-2s;
	Wed, 25 Feb 2026 16:28:33 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvGoT-00000001s3s-0bl9;
	Wed, 25 Feb 2026 16:28:33 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 25 Feb 2026 16:28:29 +0100
Message-ID: <20260225152832.446129-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_072835_129194_C53EDAB4 
X-CRM114-Status: GOOD (  11.86  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] ARM: Layerscape: LS1046: re-enable USB bus snooping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Newer kernel device trees no longer have the snps,dwc3 compatible we
match against, but instead have fsl,ls1028a-dwc3.

This is also the case for the DT embedded into barebox, so have barebox
match against the new compatible. Compatibility for the old compatible
is not needed as this code only runs against the barebox live tree.

Fixes: ea73c9d2c24e ("Revert "ARM64: dts: Layerscape: workaround v6.19-rc1 DT sync DWC3 breakage"")
Fixes: a3bf6c16f77d ("dts: update to v6.19-rc1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-layerscape/soc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-layerscape/soc.c b/arch/arm/mach-layerscape/soc.c
index 87702a066988..5b1936860eb0 100644
--- a/arch/arm/mach-layerscape/soc.c
+++ b/arch/arm/mach-layerscape/soc.c
@@ -130,7 +130,7 @@ static void layerscape_usb_enable_snooping(void)
 {
 	struct device_node *np;
 
-	for_each_compatible_node(np, NULL, "snps,dwc3") {
+	for_each_compatible_node(np, NULL, "fsl,ls1028a-dwc3") {
 		struct resource res;
 
 		if (of_address_to_resource(np, 0, &res))
-- 
2.47.3



