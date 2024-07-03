Delivery-date: Wed, 03 Jul 2024 21:10:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP5Mp-001GUp-03
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 21:10:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP5Mo-0005aK-F5
	for lore@pengutronix.de; Wed, 03 Jul 2024 21:10:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xHzCHSjK9CCM+96tdWgEd72wIYQHWAyEMYAQ/fFpWbk=; b=y/Lxgts9omSUOeAdzjRup5wP/V
	vUvhSVgmmxzp3Bnfh1AcwaGU2gcCfm+DHlQSr307epBLl1TzdkYiz73LiVR7wSIqmQtcWmRf4xGVq
	IgL7X1Wv400A+I9UPOv8b0nQVQ2hnaKvmI847qGEEK5Rdu5LDdfaRHLKHTuHiSO3CVGVwJ9Xe+P2/
	k3uQX+tc7zyXpySPKFC+iOYzxchbmXH8XU+9F33iabBDyQQShNgB8818Ck22Z82uMg+KoY0itp/Fq
	Y0vpVtYSQigMzAyOGB3LM8CxOxSS3QAFiyxr0Mvr1QFuqfoX5gp98Vk6EuKW1U2boYHSzmjFARIyL
	rNxJucWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP5MN-0000000BF8z-2S8v;
	Wed, 03 Jul 2024 19:09:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP5ML-0000000BF8G-0fVQ
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 19:09:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sP5MJ-0005VF-Mz; Wed, 03 Jul 2024 21:09:39 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sP5MJ-006uhx-A6; Wed, 03 Jul 2024 21:09:39 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sP5MJ-002tO2-0j;
	Wed, 03 Jul 2024 21:09:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jul 2024 21:09:37 +0200
Message-Id: <20240703190937.689547-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240703190937.689547-1-a.fatoum@pengutronix.de>
References: <20240703190937.689547-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_120941_221241_75C34B31 
X-CRM114-Status: UNSURE (   9.72  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] sandbox: use fixed-layout binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Device trees used with barebox are likely to still use the
deprecated nvmem cell binding. To have some coverage of the new binding,
switch sandbox over to it.

No functional change.

Note that the nvmem-cells compatible node seems to be no longer
necessary per binding, but that aspect is not yet supported by barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/dts/sandbox.dts | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index bb37cfeaf9a2..34071813ffa6 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -80,15 +80,19 @@ part_nvmem: nvmem@300 {
 				compatible = "nvmem-cells";
 				reg = <0x300 0x100>;
 				label = "nvmem";
-				#address-cells = <1>;
-				#size-cells = <1>;
 
-				reset_source: reset-source@0 {
-					reg = <0x0 0x1>;
-				};
+				nvmem-layout {
+					compatible = "fixed-layout";
+					#address-cells = <1>;
+					#size-cells = <1>;
 
-				reboot_mode: reboot-mode@1 {
-					reg = <0x1 0x4>;
+					reset_source: reset-source@0 {
+						reg = <0x0 0x1>;
+					};
+
+					reboot_mode: reboot-mode@1 {
+						reg = <0x1 0x4>;
+					};
 				};
 			};
 
-- 
2.39.2



