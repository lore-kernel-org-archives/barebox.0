Delivery-date: Tue, 02 Dec 2025 16:59:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQSmP-007DF7-0p
	for lore@lore.pengutronix.de;
	Tue, 02 Dec 2025 16:59:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQSmO-0005QY-ND
	for lore@pengutronix.de; Tue, 02 Dec 2025 16:59:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9Wc+yE2+pZb+jKXqxVTngDNvcvd+wG9luGEEXfFWxJ4=; b=las6gcX6Tn5m3g6tC4kkB2c9nz
	eYzH7/YqXteGfO7C/xfbYGfcCBtNaIbpC1IT309lrdy6LgGTs64MN1M2o/02V4ERWJ2diS1Zaw+qD
	5VawUA5+vanF7zfXMhCclLqGPTJsu5AKojKmm5RpKy9Ps/9zjk24azqY/T0CNIh3WHryGQdBhtcGU
	TDkHArPiPWR3uYMWSUnnN3n1nJeHdp78Pxq3KUQ+RYJsCxkR6ApikLg2h3zlz7TODOjA9d5GIjbrF
	G+oRsjTm7zxrOeVGLbQlfqHZbmeyOpbzOSd6mOv/2tepDQIL7dSXpPyWUD5hAz6ZqhS8Zz636MCGX
	hCTP7d4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQSlp-00000005aMS-3oRN;
	Tue, 02 Dec 2025 15:58:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQSln-00000005aKt-3YZ5
	for barebox@lists.infradead.org;
	Tue, 02 Dec 2025 15:58:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQSlm-0005Bp-7C; Tue, 02 Dec 2025 16:58:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQSll-003dSz-36;
	Tue, 02 Dec 2025 16:58:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQSll-00000006wsy-3axM;
	Tue, 02 Dec 2025 16:58:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 02 Dec 2025 16:58:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251202-k3-deps-v1-3-68404d3b2c70@pengutronix.de>
References: <20251202-k3-deps-v1-0-68404d3b2c70@pengutronix.de>
In-Reply-To: <20251202-k3-deps-v1-0-68404d3b2c70@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764691105; l=1659;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=4ax5IdRsrVgo+RWEuCrbsxhAzSklXopVPsOgXT5kN8o=;
 b=kS01xITSI9a3kcdvdThlv1iZIeliqHzMarjiYRXnKHXn736galedqcjl/hhGvGew8ESQOZ3qZ
 lpaEa2S65CQCOkCIK2Y/hsmZucjdpAuj/Kvr8Vsdp9wSi1eLzPQ/nC1
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_075827_911509_5BD73134 
X-CRM114-Status: GOOD (  11.92  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] ARM: k3: am62l: Add dedicated config option for OP-TEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Until now we compiled in the OP-TEE binary into the AM62l images when it
exists. The when-it-exists part makes it hard to add a dependeny on the
file, so add a dedicated config option for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 firmware/Kconfig   | 4 ++++
 images/Makefile.k3 | 8 ++++++--
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/firmware/Kconfig b/firmware/Kconfig
index a97a1e0dd324fa2ff95a0e77d1057bc45aa1ad07..3aeba3fc35e1142b33489b52a24e5e5532684c8f 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -116,6 +116,10 @@ config FIRMWARE_LS1028A_ATF
 config FIRMWARE_LS1046A_ATF
 	bool
 
+config FIRMWARE_K3_AM62L_OPTEE
+	bool "install OP-TEE on K3 AM62L boards"
+	depends on MACH_AM62LX
+
 config HAVE_FIRMWARE_VERIFY_NEXT_IMAGE
 	bool
 
diff --git a/images/Makefile.k3 b/images/Makefile.k3
index e0f79f1439f1340a09c09d236b5d7470caa4ad77..caaca1fbc9a1e90921ba873d61c7627d1e8f5e19 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -95,10 +95,14 @@ quiet_cmd_k3_am62x_image = K3_am62x_IMG   $@
 			$(DMDATA_am625):17:16:0:43c3a800			\
 			--key "$(KEY_$(@F))" --out $@
 
+ifdef CONFIG_FIRMWARE_K3_AM62L_OPTEE
+AM62L_TIBOOT3_OPTEE = $(FIRMWARE_DIR)/am62lx-bl32.bin
+endif
+
 quiet_cmd_k3_am62lx_image = K3_am62lx_IMG   $@
       cmd_k3_am62lx_image = \
-		if [ -e "$(FIRMWARE_DIR)/am62lx-bl32.bin" ]; then		\
-			optee=$(FIRMWARE_DIR)/am62lx-bl32.bin:17:16:0:80200000;	\
+		if [ -n "$(AM62L_TIBOOT3_OPTEE)" ]; then			\
+			optee=$(AM62L_TIBOOT3_OPTEE):17:16:0:80200000;		\
 		fi;								\
 										\
 		$(srctree)/scripts/k3img					\

-- 
2.47.3



