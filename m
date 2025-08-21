Delivery-date: Thu, 21 Aug 2025 19:52:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1up9T9-0032eY-2x
	for lore@lore.pengutronix.de;
	Thu, 21 Aug 2025 19:52:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1up9T7-0005wf-Uc
	for lore@pengutronix.de; Thu, 21 Aug 2025 19:52:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gZYg6UnGIIqEjdZ+ySwR0tcNk1/H4S+B16N1epAI7M0=; b=cEQ5/XnN8K8tUnJKD+tjraRm/w
	1/kMM6NMSLxGIPe9nTb5g1GMVbmqzpYH7XN7+PGkWJCR0wbkHVGX7fqhnOrt65zpEuw1QPhEVI4ka
	2eFusPFCoJCRi3VVsp5Tp6tkz5vc+dhBwDcovEK7vLQ2hXcNHK7LV/Eu9bZ5vkWn1yQpxmTrqh1xf
	7Xnf8newdhWltd7PJIGlSCzdUW0EehZUgnPT1kNsfLbfxJ2EL2S+NH95lBHDrkPZQiq/yabEezx9o
	d9TTPhD7GDDjx42wQCOPdCL7xY4QuwinR31qVq+gXLmAnSS9EpBCafVwYOfzLS9be6bUzY5UG4aHB
	8gNavyGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up9SS-000000006uV-08z3;
	Thu, 21 Aug 2025 17:52:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5Ba-0000000H1aD-3D9y
	for barebox@lists.infradead.org;
	Thu, 21 Aug 2025 13:18:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1up5BX-0008Vb-Fl; Thu, 21 Aug 2025 15:18:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1up5BX-001Q3F-0o;
	Thu, 21 Aug 2025 15:18:31 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1up5BX-00HHYe-0b;
	Thu, 21 Aug 2025 15:18:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Aug 2025 15:18:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-keynames-v1-1-8144af76d0ab@pengutronix.de>
References: <20250821-keynames-v1-0-8144af76d0ab@pengutronix.de>
In-Reply-To: <20250821-keynames-v1-0-8144af76d0ab@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755782311; l=19737;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=NfuVubsdw+uKEbl5VC+P3pyCR0mXnPj43syoSvqdvEk=;
 b=haDVVmFeDb4b0CrRgqOiC047Mcq75KnFR4lb2m9/cnzQ5s+y8L8Gb9ZZiP4rN01W4MKsbxcoP
 ZGrWEqvnzAUDMgwcES7trJ2CRZsEiIE6bip8EdSutppB+8EhqnTIYSV
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_061835_123676_0793FDFC 
X-CRM114-Status: UNSURE (   8.92  )
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
Subject: [PATCH 1/6] crypto: drop BOOTM_FITIMAGE_PUBKEY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With CONFIG_CRYPTO_PUBLIC_KEYS we have a convenient way to specify
builtin keys which works both with PEM files and PKCS#11 uris. Drop
the possibility to compile in public keys using dts snippets to reduce
the complexity a bit.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6dl-phytec-pbab01.dts              |  3 --
 arch/arm/dts/imx6dl-phytec-phyboard-subra.dts      |  3 --
 arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts    |  3 --
 arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts |  3 --
 arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts |  3 --
 arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts    |  3 --
 arch/arm/dts/imx6q-phytec-pbab01.dts               |  3 --
 arch/arm/dts/imx6q-phytec-phyboard-alcor.dts       |  3 --
 arch/arm/dts/imx6q-phytec-phyboard-subra.dts       |  3 --
 arch/arm/dts/imx6q-phytec-phycard.dts              |  4 ---
 arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts     |  3 --
 arch/arm/dts/imx6q-phytec-phycore-som-nand.dts     |  3 --
 arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts    |  3 --
 arch/arm/dts/imx6s-phytec-pbab01.dts               |  3 --
 arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts    |  3 --
 arch/arm/dts/imx6ul-phytec-phycore-som-nand.dts    |  3 --
 arch/arm/dts/imx6ul-tqma6ul-common.dtsi            |  4 ---
 arch/arm/dts/imx6ul-webasto-ccbv2.dts              |  4 ---
 arch/arm/dts/imx6ul-webasto-marvel.dts             |  4 ---
 arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts   |  3 --
 .../arm/dts/imx6ull-phytec-phycore-som-lc-nand.dts |  3 --
 arch/arm/dts/imx6ull-phytec-phycore-som-nand.dts   |  3 --
 arch/arm/dts/stm32mp133c-mect1s.dts                |  4 ---
 arch/arm/dts/stm32mp133c-prihmb.dts                |  4 ---
 arch/arm/dts/stm32mp151c-plyaqm.dts                |  4 ---
 common/Kconfig                                     | 32 ----------------------
 common/boards/qemu-virt/fitimage-pubkey.dts        |  4 ---
 crypto/Kconfig                                     |  3 --
 scripts/Makefile.lib                               | 12 --------
 29 files changed, 133 deletions(-)

diff --git a/arch/arm/dts/imx6dl-phytec-pbab01.dts b/arch/arm/dts/imx6dl-phytec-pbab01.dts
index b524a0cc7a294582a5ca6a7c5410c35b59d56352..f83920f915f73442fc9683ab7adedf1625f7aed4 100644
--- a/arch/arm/dts/imx6dl-phytec-pbab01.dts
+++ b/arch/arm/dts/imx6dl-phytec-pbab01.dts
@@ -10,9 +10,6 @@
  */
 
 /dts-v1/;
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
 #include "imx6dl-phytec-pfla02.dtsi"
 #include "imx6qdl-phytec-pbab01.dtsi"
 
diff --git a/arch/arm/dts/imx6dl-phytec-phyboard-subra.dts b/arch/arm/dts/imx6dl-phytec-phyboard-subra.dts
index efed30651ae63a446418b190693aab58a6d28fe2..c71180ddd0b4cda9d8ee2f53212c858ceaf42133 100644
--- a/arch/arm/dts/imx6dl-phytec-phyboard-subra.dts
+++ b/arch/arm/dts/imx6dl-phytec-phyboard-subra.dts
@@ -10,9 +10,6 @@
  */
 
 /dts-v1/;
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
 #include "imx6s-phytec-pfla02.dtsi"
 #include "imx6qdl-phytec-phyboard-subra.dtsi"
 
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
index 133b75f5a781167ed9de6c3cb6f2cc7601540d88..f2d0b4de789a09e12638a32aeee956b06b73c17c 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
@@ -5,9 +5,6 @@
  */
 
 /dts-v1/;
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
 #include <arm/nxp/imx/imx6dl.dtsi>
 #include "imx6dl.dtsi"
 #include "imx6qdl-phytec-phycore-som.dtsi"
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
index c94489146545876e9c15c69cab5a427fc31fd842..1e0a333c05a0a46bbc6216a3e339f79594e57773 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
@@ -5,9 +5,6 @@
  */
 
 /dts-v1/;
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
 #include <arm/nxp/imx/imx6dl.dtsi>
 #include "imx6dl.dtsi"
 #include "imx6qdl-phytec-phycore-som.dtsi"
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts
index 6add67264429e35c729e1681b9aa88a8b4ff76d4..3504298b99243447e160f5b9045a87b884f29749 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts
@@ -5,9 +5,6 @@
  */
 
 /dts-v1/;
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
 #include <arm/nxp/imx/imx6dl.dtsi>
 #include "imx6dl.dtsi"
 #include "imx6qdl-phytec-phycore-som.dtsi"
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
index ddecfbc2b2b84ea520b2d39b7d51daccf988d1df..0f2706c25c5c6e1535352708f88d9ef92ee6e477 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
@@ -5,9 +5,6 @@
  */
 
 /dts-v1/;
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
 #include <arm/nxp/imx/imx6dl.dtsi>
 #include "imx6dl.dtsi"
 #include "imx6qdl-phytec-phycore-som.dtsi"
diff --git a/arch/arm/dts/imx6q-phytec-pbab01.dts b/arch/arm/dts/imx6q-phytec-pbab01.dts
index 91562a2ffeb21f57f1bc590a720a5ef4026d6b5f..2f816dd1ac350e0e063556f0790d6cdd7bb6066b 100644
--- a/arch/arm/dts/imx6q-phytec-pbab01.dts
+++ b/arch/arm/dts/imx6q-phytec-pbab01.dts
@@ -10,9 +10,6 @@
  */
 
 /dts-v1/;
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
 #include "imx6q-phytec-pfla02.dtsi"
 #include "imx6qdl-phytec-pbab01.dtsi"
 
diff --git a/arch/arm/dts/imx6q-phytec-phyboard-alcor.dts b/arch/arm/dts/imx6q-phytec-phyboard-alcor.dts
index d97c7f15c9264a6acd046bc37999df4d96cac3db..1c4a78552d89e257a5a3145a3c6d6e82945c009d 100644
--- a/arch/arm/dts/imx6q-phytec-phyboard-alcor.dts
+++ b/arch/arm/dts/imx6q-phytec-phyboard-alcor.dts
@@ -10,9 +10,6 @@
  */
 
 /dts-v1/;
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
 #include "imx6q-phytec-pfla02.dtsi"
 
 / {
diff --git a/arch/arm/dts/imx6q-phytec-phyboard-subra.dts b/arch/arm/dts/imx6q-phytec-phyboard-subra.dts
index 498611103670e085ce060cabad6307da6acb25aa..561e9856046bcd611e0bad01495d3e5fd02da956 100644
--- a/arch/arm/dts/imx6q-phytec-phyboard-subra.dts
+++ b/arch/arm/dts/imx6q-phytec-phyboard-subra.dts
@@ -11,9 +11,6 @@
  */
 
 /dts-v1/;
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
 #include "imx6q-phytec-pfla02.dtsi"
 #include "imx6qdl-phytec-phyboard-subra.dtsi"
 
diff --git a/arch/arm/dts/imx6q-phytec-phycard.dts b/arch/arm/dts/imx6q-phytec-phycard.dts
index 9e1bbbe15dc49bd70dd9ca938533b66353231476..5b5fb6718f3f14d266a014411821a0bdd755445b 100644
--- a/arch/arm/dts/imx6q-phytec-phycard.dts
+++ b/arch/arm/dts/imx6q-phytec-phycard.dts
@@ -6,10 +6,6 @@
 
 /dts-v1/;
 
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
-
 #include <arm/nxp/imx/imx6q.dtsi>
 #include "imx6q.dtsi"
 #include "imx6qdl-phytec-phycard-som.dtsi"
diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
index 574e31c4761ffbb8495868a338371f0abd948efc..5d654b5eba692bcfa562e95db855baddba3b7222 100644
--- a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
@@ -5,9 +5,6 @@
  */
 
 /dts-v1/;
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
 #include <arm/nxp/imx/imx6q.dtsi>
 #include "imx6q.dtsi"
 #include "imx6qdl-phytec-phycore-som.dtsi"
diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
index 70b8cfca8bc42b5f00b313170c27792abdad0934..aafaa7767501f7894e7230020dd06a5806b4c5ca 100644
--- a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
@@ -5,9 +5,6 @@
  */
 
 /dts-v1/;
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
 #include <arm/nxp/imx/imx6q.dtsi>
 #include "imx6q.dtsi"
 #include "imx6qdl-phytec-phycore-som.dtsi"
diff --git a/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
index 76d0ac0847b3f32e979902022c9588c0fe86f57a..1caa0a944d499a8c9cbbbc57c3c427b9656af561 100644
--- a/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
@@ -5,9 +5,6 @@
  */
 
 /dts-v1/;
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
 #include <arm/nxp/imx/imx6qp.dtsi>
 #include "imx6qdl-phytec-phycore-som.dtsi"
 #include "imx6qdl-phytec-mira.dtsi"
diff --git a/arch/arm/dts/imx6s-phytec-pbab01.dts b/arch/arm/dts/imx6s-phytec-pbab01.dts
index 516d20f77607568069642419b42673f3d595c1e0..b939f058067fcc66570d2c28b3fa0ce8c21dfbfe 100644
--- a/arch/arm/dts/imx6s-phytec-pbab01.dts
+++ b/arch/arm/dts/imx6s-phytec-pbab01.dts
@@ -10,9 +10,6 @@
  */
 
 /dts-v1/;
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
 #include "imx6s-phytec-pfla02.dtsi"
 #include "imx6qdl-phytec-pbab01.dtsi"
 
diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts
index 0faa17198b54854fe2a7cb8d6f78f5c479513f03..7a09279df27060c5f7f3efc4b98bfe07e90e7096 100644
--- a/arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts
@@ -5,9 +5,6 @@
  */
 
 /dts-v1/;
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
 #include <arm/nxp/imx/imx6ul.dtsi>
 #include "imx6ul-phytec-phycore-som.dtsi"
 #include "imx6ul-phytec-state.dtsi"
diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6ul-phytec-phycore-som-nand.dts
index 39020efd2586a697afb9426e1651bfef917b2ce5..b4f421807a7bd97eecdcba807003289dd36acb8d 100644
--- a/arch/arm/dts/imx6ul-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som-nand.dts
@@ -5,9 +5,6 @@
  */
 
 /dts-v1/;
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
 #include <arm/nxp/imx/imx6ul.dtsi>
 #include "imx6ul-phytec-phycore-som.dtsi"
 #include "imx6ul-phytec-state.dtsi"
diff --git a/arch/arm/dts/imx6ul-tqma6ul-common.dtsi b/arch/arm/dts/imx6ul-tqma6ul-common.dtsi
index c2f8d79ec3610b6577f6ec91ff9297e7157f4984..3e5350450d1ee1e69b2f1e05ab3e73a1170f106e 100644
--- a/arch/arm/dts/imx6ul-tqma6ul-common.dtsi
+++ b/arch/arm/dts/imx6ul-tqma6ul-common.dtsi
@@ -58,7 +58,3 @@ &ocotp {
 	barebox,provide-mac-address = <&fec1 0x620 &fec2 0x632>;
 };
 
-/* include the FIT public key for verifying on demand */
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
diff --git a/arch/arm/dts/imx6ul-webasto-ccbv2.dts b/arch/arm/dts/imx6ul-webasto-ccbv2.dts
index 8628eefc9730e168d224bd3930f59a7ab30a29ca..6b67530169e14a422214a1b2ffab745a7641bc2f 100644
--- a/arch/arm/dts/imx6ul-webasto-ccbv2.dts
+++ b/arch/arm/dts/imx6ul-webasto-ccbv2.dts
@@ -114,7 +114,3 @@ &ocotp {
 	barebox,provide-mac-address = <&fec1 0x620>;
 };
 
-/* include the FIT public key for verifying on demand */
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
diff --git a/arch/arm/dts/imx6ul-webasto-marvel.dts b/arch/arm/dts/imx6ul-webasto-marvel.dts
index 533829d47767444195cc9c80ad38a770c6db6632..58117de62c3069576f3e89d578f611a8d935f9b9 100644
--- a/arch/arm/dts/imx6ul-webasto-marvel.dts
+++ b/arch/arm/dts/imx6ul-webasto-marvel.dts
@@ -579,7 +579,3 @@ &wdog1 {
 	status = "okay";
 };
 
-/* include the FIT public key for verifying on demand */
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
diff --git a/arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts
index 7df04e2c694fb654eb046e388c232c6ecb18bfc2..297bc760de50be87ba269ab746158823133a3d69 100644
--- a/arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts
@@ -5,9 +5,6 @@
  */
 
 /dts-v1/;
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
 #include <arm/nxp/imx/imx6ull.dtsi>
 #include "imx6ul-phytec-phycore-som.dtsi"
 #include "imx6ul-phytec-state.dtsi"
diff --git a/arch/arm/dts/imx6ull-phytec-phycore-som-lc-nand.dts b/arch/arm/dts/imx6ull-phytec-phycore-som-lc-nand.dts
index e833b7218575280570b9732c4f93fe8923f9b813..be52668be11cb30e9715edec38e5fd024c9d89ca 100644
--- a/arch/arm/dts/imx6ull-phytec-phycore-som-lc-nand.dts
+++ b/arch/arm/dts/imx6ull-phytec-phycore-som-lc-nand.dts
@@ -5,9 +5,6 @@
  */
 
 /dts-v1/;
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
 #include <arm/nxp/imx/imx6ull.dtsi>
 #include "imx6ul-phytec-phycore-som.dtsi"
 
diff --git a/arch/arm/dts/imx6ull-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6ull-phytec-phycore-som-nand.dts
index d9b60c1b71f8bf095df211e5e0c7f37ce9dad400..527d9b5bda3f778d60b5cd9b88dbedb83bb1b846 100644
--- a/arch/arm/dts/imx6ull-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6ull-phytec-phycore-som-nand.dts
@@ -5,9 +5,6 @@
  */
 
 /dts-v1/;
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
 #include <arm/nxp/imx/imx6ull.dtsi>
 #include "imx6ul-phytec-phycore-som.dtsi"
 #include "imx6ul-phytec-state.dtsi"
diff --git a/arch/arm/dts/stm32mp133c-mect1s.dts b/arch/arm/dts/stm32mp133c-mect1s.dts
index 273253bf0d331dbeeb587b7846a7b18b4244d595..f58565cf342149d7aa63fdf7e660d76d2ddcc970 100644
--- a/arch/arm/dts/stm32mp133c-mect1s.dts
+++ b/arch/arm/dts/stm32mp133c-mect1s.dts
@@ -5,10 +5,6 @@
 #include "stm32mp133c-mect1s.dtsi"
 #include "stm32mp131.dtsi"
 
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
-
 / {
 	barebox,deep-probe;
 
diff --git a/arch/arm/dts/stm32mp133c-prihmb.dts b/arch/arm/dts/stm32mp133c-prihmb.dts
index e91055505b092c3c7cdff8411ad4ee5c7d8187b9..36db3b809fc0757ea911c3909f319331c0aadc0d 100644
--- a/arch/arm/dts/stm32mp133c-prihmb.dts
+++ b/arch/arm/dts/stm32mp133c-prihmb.dts
@@ -5,10 +5,6 @@
 #include "stm32mp133c-prihmb.dtsi"
 #include "stm32mp131.dtsi"
 
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
-
 / {
 	barebox,deep-probe;
 
diff --git a/arch/arm/dts/stm32mp151c-plyaqm.dts b/arch/arm/dts/stm32mp151c-plyaqm.dts
index 229032e9866f6e0c75c1b995a1ca3ba5f2d15e51..c0a270f6b3754d04ee4558789bde2e5df06cb587 100644
--- a/arch/arm/dts/stm32mp151c-plyaqm.dts
+++ b/arch/arm/dts/stm32mp151c-plyaqm.dts
@@ -4,10 +4,6 @@
 #include "stm32mp151c-plyaqm.dtsi"
 #include "stm32mp151.dtsi"
 
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
-
 / {
 	barebox,deep-probe;
 
diff --git a/common/Kconfig b/common/Kconfig
index b2449207eff9533fc54cf15a17d136fe20a3fc26..9bb4630df9e293a70174e09de12c933af9812731 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -722,38 +722,6 @@ config BOOTM_FITIMAGE_SIGNATURE
 	  Additionally the barebox device tree needs a /signature node with the
 	  public key needed to approve the image's signature.
 
-config BOOTM_FITIMAGE_PUBKEY_ENV
-	bool "Specify path to public key in environment"
-	depends on BOOTM_FITIMAGE_SIGNATURE
-	help
-	  If this option is enabled the path to the device tree snippet
-	  containing the public key for verifying FIT images signature is taken
-	  from make's build-time environment, which can allow for better
-	  integration with some build systems.
-
-	  The environment variable has the same name as the corresponding
-	  Kconfig variable:
-
-	  CONFIG_BOOTM_FITIMAGE_PUBKEY
-
-if BOOTM_FITIMAGE_SIGNATURE && !BOOTM_FITIMAGE_PUBKEY_ENV
-
-config BOOTM_FITIMAGE_PUBKEY
-	string "Path to dtsi containing pubkey"
-	default "../fit/pubkey.dtsi"
-	depends on BOOTM_FITIMAGE_SIGNATURE
-	help
-	  Set Path to a dts snippet which holds the public keys for FIT images. The
-	  snippet can then be included in a device tree with
-	  "#include CONFIG_BOOTM_FITIMAGE_PUBKEY".
-
-	  This snippet is usually generated by decompiling a device tree produced
-	  by mkimage. An alternative is CONFIG_CRYPTO_PUBLIC_KEYS, which takes a list
-	  of PEM files or PKCS#11 URIs (with optional key name hints, see its help
-	  text).
-
-endif
-
 config BOOTM_FORCE_SIGNED_IMAGES
 	bool
 	prompt "Force booting of signed images"
diff --git a/common/boards/qemu-virt/fitimage-pubkey.dts b/common/boards/qemu-virt/fitimage-pubkey.dts
index 497799fa4b60870b14ae7597900ad43ab37086d0..1419fa0da5d5d5d7c337490b2533ac1acc0340f6 100644
--- a/common/boards/qemu-virt/fitimage-pubkey.dts
+++ b/common/boards/qemu-virt/fitimage-pubkey.dts
@@ -1,7 +1,3 @@
 /dts-v1/;
 
-#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-#include CONFIG_BOOTM_FITIMAGE_PUBKEY
-#endif
-
 /{ };
diff --git a/crypto/Kconfig b/crypto/Kconfig
index 14728be4aa91a12fd542a39e4bdaa73f9f01ab2c..4f9cc3e6a560b653225efd70246ad1d79a451f78 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -141,9 +141,6 @@ config CRYPTO_PUBLIC_KEYS
 	  prefix, <hint> is used as a key name hint to find a key without
 	  iterating over all keys.
 
-	  This avoids the mkimage dependency of CONFIG_BOOTM_FITIMAGE_PUBKEY
-	  at the cost of an openssl build-time dependency.
-
 	  Placeholders such as __ENV__VAR_NAME can be used to look up the
 	  corresponding value in the environment variable VAR_NAME for both
 	  public key paths/URIs as well as key name hints.
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index e6f0e254960a69b7aa3273bdc5469e75c39db977..2128361b3ae327082c278ff9b7ec055d07849810 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -231,12 +231,6 @@ dtc_cpp_flags  = -Wp,-MD,$(depfile).pre -nostdinc                        \
 		 $(DTC_CPP_FLAGS_$(basetarget)$(suffix $@))              \
 		 -undef -D__DTS__
 
-ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-ifneq ($(CONFIG_BOOTM_FITIMAGE_PUBKEY),"")
-dtc_cpp_flags += -DCONFIG_BOOTM_FITIMAGE_PUBKEY=\"$(CONFIG_BOOTM_FITIMAGE_PUBKEY)\"
-endif
-endif
-
 # Finds the multi-part object the current object will be linked into
 modname-multi = $(sort $(foreach m,$(multi-used),\
 		$(if $(filter $(subst $(obj)/,,$*.o), $($(m:.o=-objs)) $($(m:.o=-y))),$(m:.o=))))
@@ -583,11 +577,6 @@ overwrite-hab-env = $(shell set -e; \
       test -n "$$$(1)"; \
       echo -D$(1)=\''"$($(1))"'\')
 
-overwrite-fit-env = $(shell set -e; \
-      test -n "$(CONFIG_BOOTM_FITIMAGE_PUBKEY_ENV)"; \
-      test -n "$$$(1)"; \
-      echo -D$(1)=\\\"$(shell echo $$$(1))\\\")
-
 imxcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
       -I $(srctree)/include -I $(srctree)/arch/arm/mach-imx/include \
       -include include/generated/autoconf.h \
@@ -598,7 +587,6 @@ imxcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
       $(call overwrite-hab-env,CONFIG_HABV4_CSF_CRT_PEM) \
       $(call overwrite-hab-env,CONFIG_HABV4_CSF_UNLOCK_UID) \
       $(call overwrite-hab-env,CONFIG_HABV4_IMG_CRT_PEM) \
-      $(call overwrite-fit-env,CONFIG_BOOTM_FITIMAGE_PUBKEY) \
 
 dcd-tmp = $(subst $(comma),_,$(dot-target).dcd.tmp)
 

-- 
2.39.5



