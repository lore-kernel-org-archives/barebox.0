Delivery-date: Thu, 08 Jan 2026 17:02:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsT5-002fd8-0n
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 17:02:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsT4-000160-GN
	for lore@pengutronix.de; Thu, 08 Jan 2026 17:02:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iPjONTWI0V52spJxl2Axwb8IPxRhcDGtlyhbG5mPcYk=; b=uVZbGKmMDDRge3A6zSi5wGuiLS
	JEDEJDM5BZEDfPNfMV0XU2c8j/5TVnHGTDhnoUGyqApOfDIlKOKW0zeckeXXIAmh1FEFAoE75Y+Vh
	zn+6AI9KengagvC2Bhs61DApurTORG10kE+CthBbA04cWGp2h1oh4NJegdGO8eJF/LBJpTFsdWrA+
	GcxNNxOLVrK9XWwZiVeCwVngKKo6MDTuJQ5XJ3z7n4b9PFtEroDaG8w76tnS9x46LSqZzbFhJvDzR
	fdWXc09wc0pqI6pJZzpg3U9cZg8khyctRMIOL6y3hDNRtNXfpYaOhOE2UfkQ0BEz2th7LCiWV44f4
	5idEKwxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsSP-00000000218-1Vir;
	Thu, 08 Jan 2026 16:01:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsS9-000000001uR-3cte
	for barebox@bombadil.infradead.org;
	Thu, 08 Jan 2026 16:01:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=iPjONTWI0V52spJxl2Axwb8IPxRhcDGtlyhbG5mPcYk=; b=QHvX3mAlIN0HUtxgWVHGG9bI8P
	e+Q7Ta5Gg7SgYHhLKpldjDGusKJ5k1mVqnrvJBChT6/PkG8/Xn5W7gwku4llTAAWm6AdpM8+z6eqU
	/yOoelyl/onV5HxdnMJE+g2XpZfPiuog/qVOhfsZi5ysF2RdMAMpfbKWtWuI6nCWuFyAV4zAcz9k4
	HwyrYg+8LabKp9a0UM3pSF3Tlg2/Oks0wO/MBHf2p6iZv7RnmCd5Rwgbq7KRN1YDBAs550kRfn4Th
	WsQM9V7Iy9kV5x9W95WGwMY/ddM5lWFI2i7KLseKoB17IwFZorqZWL4j52gR7Di7uYLz5P4RkyzxB
	itDbxFkQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsS3-0000000DaVk-0F3h
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 16:01:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS2-0000U1-Ny; Thu, 08 Jan 2026 17:01:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS2-009hXg-1i;
	Thu, 08 Jan 2026 17:01:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0000000AN2q-1Wa0;
	Thu, 08 Jan 2026 16:50:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 08 Jan 2026 16:50:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-pbl-load-elf-v3-11-e28c931fc179@pengutronix.de>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
In-Reply-To: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767887401; l=1420;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=rlWoqUQkjOeeb4D6AU1g5hy6e+pdtbGzKgp4ki/nQRI=;
 b=zaUB73m3wbyH+Rn8lIHyeoExl4Ysg6wHQX5DN6HlCoUkdaWLRl26tcAuHmQImCPRS3yUjhvVy
 MtyVrvPclenCPWXYD1uEAo7eWxcRHeKcGujGXJzaH/LeqF4R97pHjGG
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_160131_149398_4117921A 
X-CRM114-Status: UNSURE (   9.79  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 11/23] PBL: allow to link ELF image into PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some architectures want to link the barebox proper ELF image into the
PBL. Allow that and provide a Kconfig option to select the ELF image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile    | 4 ++++
 pbl/Kconfig | 9 +++++++++
 2 files changed, 13 insertions(+)

diff --git a/Makefile b/Makefile
index 9d8fe242411422163cb800c0b2dd1eb9f0709f47..44011868083135e2a4c53413535bedf70f1704f7 100644
--- a/Makefile
+++ b/Makefile
@@ -831,7 +831,11 @@ export KBUILD_BINARY ?= barebox.bin
 # Also any assignments in arch/$(SRCARCH)/Makefile take precedence over
 # the default value.
 
+ifeq ($(CONFIG_PBL_IMAGE_ELF),y)
+export BAREBOX_PROPER ?= vmbarebox
+else
 export BAREBOX_PROPER ?= barebox.bin
+endif
 
 barebox-flash-images: $(KBUILD_IMAGE)
 	@echo $^ > $@
diff --git a/pbl/Kconfig b/pbl/Kconfig
index cab9325d16e8625bcca10125b3281062abffedbc..63f29cd6135926c48b355b80fc7a123b90098c20 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -21,6 +21,15 @@ config PBL_IMAGE_NO_PIGGY
 	  want to use the piggy mechanism to load barebox proper.
 	  It's so far only intended for sandbox.
 
+config PBL_IMAGE_ELF
+	bool
+	depends on PBL_IMAGE
+	select ELF
+	help
+	  If yes, link ELF image into the PBL, otherwise a raw binary
+	  is linked into the PBL. This must match the loader code in the
+	  PBL.
+
 config PBL_MULTI_IMAGES
 	bool
 	select PBL_IMAGE

-- 
2.47.3



