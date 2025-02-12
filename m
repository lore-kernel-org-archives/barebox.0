Delivery-date: Wed, 12 Feb 2025 15:33:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDoI-001Sm6-1l
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 15:33:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDoG-0006Nh-TV
	for lore@pengutronix.de; Wed, 12 Feb 2025 15:33:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5QWLzNCBRSY292xZV/uNFUHYyvKCRNl4++7G3wLfCcs=; b=Zwj3S3NgVmfh2xohjuUW5YCXCp
	PCCbfAdDOVLMMkUf5DE3YQ6TCkS9vkhEAylEl7E8HEm0mFrudtbegiLCgnAiww0VUCrXTnDRMd8aP
	h/jAu/0S+0jpjtgJbnOhHhOtFBPN1Y1DJeJd2bNGsvTLEpdtkUsh87z26KumGmbWd5iCBcMTeneU4
	261aBg6poMP+UJG8b818JTGaYqabdH7Xoa9IHPKL7vBXtem2ShGbGHZcO86XFvrjTqoeYLLbQcieC
	fHL8vQbjLRUp3LiSPx63CuFtkXNLVQNAaKwhzccEJYItSgN9oFOPL3mJ7vYg+rJcFmkdY4cwVB505
	XqwpqxvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDnn-00000007gLa-2zbF;
	Wed, 12 Feb 2025 14:33:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDnf-00000007gB4-488i
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 14:33:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDne-0005rS-S3; Wed, 12 Feb 2025 15:33:14 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDne-000bHI-2A;
	Wed, 12 Feb 2025 15:33:14 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-00AeO5-1x;
	Wed, 12 Feb 2025 15:09:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Feb 2025 15:09:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250212-k3-emmc-v2-13-8dd1bb0ce60a@pengutronix.de>
References: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
In-Reply-To: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739369370; l=1155;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=0/VyQsNnkjzqsN1iqXFjFmRUDHSeQHBE0ff2kZl2118=;
 b=/VCpY7yvU+jOU6gozKz+j+q/ojDhcSeDEOV+/278z2yqz+lvgZVg9nmPEK5N9pOA2Bxib9VPg
 UISjFndR6cXBm5vxcHVmefyM+tXfWcb/m4MpqMfZ0wd0yFsXACQwmeV
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_063316_022108_96B9AC03 
X-CRM114-Status: UNSURE (   9.17  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 13/20] ARM: k3: limit eMMC frequency to 26MHz
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The eMMCs on am625 currently only work reliably with 26MHz. Until this
issue is sorted out limit them to 26MHz on the affected boards
(beagleplay and am625-sk).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am625-beagleplay.dts | 4 ++++
 arch/arm/dts/k3-am625-sk.dts         | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm/dts/k3-am625-beagleplay.dts b/arch/arm/dts/k3-am625-beagleplay.dts
index 60340ab8ca..73ac950414 100644
--- a/arch/arm/dts/k3-am625-beagleplay.dts
+++ b/arch/arm/dts/k3-am625-beagleplay.dts
@@ -29,3 +29,7 @@ AM62X_IOPAD(0x0224, PIN_INPUT, 0) /* (D22) MMC1_DAT3 */
 		AM62X_IOPAD(0x0240, PIN_INPUT, 0) /* (D17) MMC1_SDCD */
 	>;
 };
+
+&sdhci0 {
+	max-frequency = <26000000>;
+};
diff --git a/arch/arm/dts/k3-am625-sk.dts b/arch/arm/dts/k3-am625-sk.dts
index 1982c34388..56d5681519 100644
--- a/arch/arm/dts/k3-am625-sk.dts
+++ b/arch/arm/dts/k3-am625-sk.dts
@@ -7,3 +7,7 @@
  * DRAM size differs between board variants. Real size is read from DDRSS
  */
 /delete-node/ &{/memory@80000000};
+
+&sdhci0 {
+	max-frequency = <26000000>;
+};

-- 
2.39.5



