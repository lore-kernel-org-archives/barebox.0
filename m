Delivery-date: Wed, 12 Feb 2025 15:33:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDoJ-001SmV-01
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 15:33:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDoH-0006O0-AN
	for lore@pengutronix.de; Wed, 12 Feb 2025 15:33:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rl4hWS2E/r46amcXB7oI+FqvuX8o/MayE6xxyhuLzNY=; b=S1bT9k4dPj687vZfhSQ6pn/BTE
	YBC49G3aY78J2eoDVvolHg/T2bRHICs0vf/WmzECNunwxt2HF4U+FwUyjG17AN/FpBMXiN+dAIbgz
	NPLzYTKpAyLLOUf2wfT3SzpXaZn+hIpufrAgRQZ8+5Zn1rZh+5aG/X3QqaXjFbJ5b5o0cG2lPjb5+
	/nU4LSNdZRhGGuvnNqi7mp8aANq+ptJOfSx9P0Llaf942Syd1bUzORdU7zzn6WM89NUuqQDaJjrlw
	qSIULdKT3HrBilZ6Kx/sMVOTRKwxNXwBk5a1lSma6O05T6pKCV7yYTKG0ScWL9G3vxY3aIzg8ePRH
	RZECnJ0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDnj-00000007gFT-3baM;
	Wed, 12 Feb 2025 14:33:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDnf-00000007gAw-1pgC
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 14:33:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDne-0005q7-9x; Wed, 12 Feb 2025 15:33:14 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDne-000bGv-0N;
	Wed, 12 Feb 2025 15:33:14 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-00AeO5-22;
	Wed, 12 Feb 2025 15:09:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Feb 2025 15:09:30 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250212-k3-emmc-v2-17-8dd1bb0ce60a@pengutronix.de>
References: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
In-Reply-To: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739369370; l=1676;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=MbqgoiiThcVfIIOm42b2UztpMjl+tTSqI/xHkS1OOvA=;
 b=2TO23ALHejOQaIOCz5CFpPCafZ5gjUS844dQun1tp/fia2mqYGTdjunSF8hVw+VBEpEJcBVH6
 5uU+ERP0vOkAWimP9Y9NqDGwcgo7YyGZB6LG7LDGoimHxSNvur7/j8h
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_063315_479277_5A2377F8 
X-CRM114-Status: GOOD (  10.23  )
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
Subject: [PATCH v2 17/20] ARM: k3: remove beagleplay FIT image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Remove beagleplay FIT image to avoid the dependency to U-Boot mkimage.
We can still build a FIT image using the generic-dt-2nd support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.k3             |  4 ----
 images/k3-am625-beagleplay.its | 29 -----------------------------
 2 files changed, 33 deletions(-)

diff --git a/images/Makefile.k3 b/images/Makefile.k3
index 466a84af99..b27b3dfcc5 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -15,10 +15,6 @@ pblb-$(CONFIG_MACH_BEAGLEPLAY) += start_beagleplay
 FILE_barebox-beagleplay.img = start_beagleplay.pblb
 image-$(CONFIG_MACH_BEAGLEPLAY) += barebox-beagleplay.img
 
-$(obj)/k3-am625-beagleplay.itb: $(obj)/barebox-beagleplay.img
-FILE_barebox-beagleplay-fit.img = k3-am625-beagleplay.itb
-image-$(CONFIG_MACH_BEAGLEPLAY) += barebox-beagleplay-fit.img
-
 endif
 
 ifdef CONFIG_MACH_K3_CORTEX_R5
diff --git a/images/k3-am625-beagleplay.its b/images/k3-am625-beagleplay.its
deleted file mode 100644
index 987d4d1660..0000000000
--- a/images/k3-am625-beagleplay.its
+++ /dev/null
@@ -1,29 +0,0 @@
-
-/dts-v1/;
-
-/ {
-	description = "barebox for BeaglePlay board";
-
-	images {
-		barebox {
-			description = "barebox for BeaglePlay board";
-			type = "firmware";
-			os = "linux";
-			arch = "arm";
-			compression = "none";
-			load = <0x80800000>;
-			entry = <0x80800000>;
-			data = /incbin/("barebox-beagleplay.img");
-		};
-	};
-
-	configurations {
-		default = "conf-0";
-
-		conf-0 {
-			description = "barebox for BeaglePlay board";
-			firmware = "barebox";
-			loadables = "barebox";
-		};
-	};
-};

-- 
2.39.5



