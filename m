Delivery-date: Fri, 19 Jan 2024 22:56:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQwqa-007aAN-1Q
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 22:56:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQwqb-0008Qp-5r
	for lore@pengutronix.de; Fri, 19 Jan 2024 22:56:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=a18Ye9QB0Tp9+XSHvZ2ZY8w6gf24xc5V4xDxmnYgJU8=; b=vrYBo5m4Mqc1b27VbMUEQ6BL4q
	ugnLz+xovCgog+tOWVAaDgVp0ijISJn/jNLcOfTaxajTY9i3CcvXVS5edQ4DCUNkkMvbdr8gP/Zb6
	zJgBVfeJQttdGXpjG1W4t21AgjP0AJGoE1tYX15fxH1QomeUJOE9I5BDB/3gVNP4JBAkwA50nVm8A
	gWrm8Sgj9c/617k6Pq3ZMcGTpmq8ik0rW1k793sdcV7EEB2BZ3eXNWDowrbxI8s058n/iBpSiRjoz
	omfhrzQq8kim2qmu7WNjIJXpIaZzSLtKEnI7I4xrbvNSP2X+RrSMT8UQMciVAxf+egUGDLPn68KU0
	mzlQY/zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQwpe-006ik1-2c;
	Fri, 19 Jan 2024 21:55:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQwpc-006ijT-2M
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 21:55:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQwpb-0008LU-JS; Fri, 19 Jan 2024 22:55:19 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQwpb-0010NY-6x; Fri, 19 Jan 2024 22:55:19 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQwpb-005gTU-0P;
	Fri, 19 Jan 2024 22:55:19 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Jan 2024 22:55:18 +0100
Message-Id: <20240119215518.1354896-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_135520_766004_F67674D3 
X-CRM114-Status: UNSURE (   8.90  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: dts: i.MX8MP: drop temporary workaround
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Like mentioned in commit db01bf84cf57 ("ARM: dts: i.MX8MP:
snps,dis-u2-freeclk-exists-quirk"), this was just a workaround until
barebox dwc3 driver was synced with Linux. This is now done, so we don't
need to keep around this extra property.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx8mp.dtsi | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/arch/arm/dts/imx8mp.dtsi b/arch/arm/dts/imx8mp.dtsi
index 7a038217c468..6af9d3924ac6 100644
--- a/arch/arm/dts/imx8mp.dtsi
+++ b/arch/arm/dts/imx8mp.dtsi
@@ -17,15 +17,6 @@ aliases {
 	};
 };
 
-/* Temporary workaround until snps,gfladj-refclk-lpm-sel-quirk is supported */
-&usb_dwc3_0 {
-	snps,dis-u2-freeclk-exists-quirk;
-};
-
-&usb_dwc3_1 {
-	snps,dis-u2-freeclk-exists-quirk;
-};
-
 /*
  * The DSP reserved memory will collide with the Barebox malloc area for some
  * DRAM sizes, even though the DSP itself is disabled in most configurations.
-- 
2.39.2



