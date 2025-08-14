Delivery-date: Thu, 14 Aug 2025 17:37:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uma0n-000YGH-1K
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 17:37:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uma0m-00044E-76
	for lore@pengutronix.de; Thu, 14 Aug 2025 17:37:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dgOwfihXwLn1Lr5nQAgswZc9wsQKbdcgzTzoTlAT1fs=; b=UcvFaIacA6k6XobiiFsCgPTvWa
	bD17RkTrsh3FJRdsm6bIZjnP9fPioHWc7E07PDM54kJX0ISB59jxbQwQfkIdOP4VkW9Ewh62KyQYw
	q6VTQIYr+vRpa93nDlfvN4TYE3svaKUD9H9odCTtkver6jmUgq2JtLSrO+NWq8lDITkTcAkmI/pQ/
	7R8HUdDYBtPKY0dpgn0qJsU9N5haGPNdbbL4GfhhS4zRwXXFN/KQPlQMJJ8ynXYE6DYRuNaWEd2K2
	BmnOCzYQo4JlUrEQKXmDpr3AQtsoDV/gtQ35hUrdkSroD8ybllN/GgETRw3U5OxjdNgic6oTDMSgc
	ly3LKGOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uma0N-0000000HSlO-2yHz;
	Thu, 14 Aug 2025 15:36:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umVTw-0000000Gdwk-3Pco
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 10:46:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVTv-0000Nb-LL; Thu, 14 Aug 2025 12:46:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVTv-000Ewu-1E;
	Thu, 14 Aug 2025 12:46:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVTv-004nMh-0r;
	Thu, 14 Aug 2025 12:46:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Aug 2025 12:46:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-k3-am62l-updates-v1-2-9934277d8757@pengutronix.de>
References: <20250814-k3-am62l-updates-v1-0-9934277d8757@pengutronix.de>
In-Reply-To: <20250814-k3-am62l-updates-v1-0-9934277d8757@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755168411; l=1530;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=nb+8L07sAOgupvEXLJDZwEb41/DUj8vhX3/57SdVuFM=;
 b=dOZH34u1FG9uKI3CPyyV5vCdpyDVBRzz98gTfVi47n8Xd6qePq0LArHNjSbGOXioD96FDSLWa
 g0gLacoL0CWBQwQ3Gxw5z+jJziEL687PRfLLDvEzcMvIZ4+noVopI/T
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_034652_878334_EA311C63 
X-CRM114-Status: GOOD (  10.34  )
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
Subject: [PATCH 2/6] ARM: k3: quote PEM files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In future we'll be able to pass PKCS#11 uris instead of PEM files to the
k3 image tool. As these may contain semicolons quote the PEM files to
pass the uris properly to the shell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.k3 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/images/Makefile.k3 b/images/Makefile.k3
index 55c14d9da7136953c91fa4abbc1c88936a7efdb7..0024cefa3687778487749f39b1c5bb57d490ec10 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -96,7 +96,7 @@ quiet_cmd_k3_am62x_image = K3_am62x_IMG   $@
 			$(SYSFWDATA_$(@F)):18:0:0:00067000			\
 			$$inner							\
 			$(DMDATA_$(@F)):17:16:0:43c3a800			\
-			--key $(KEY_$(@F)) --out $@
+			--key "$(KEY_$(@F))" --out $@
 
 quiet_cmd_k3_am62lx_image = K3_am62lx_IMG   $@
       cmd_k3_am62lx_image = \
@@ -115,7 +115,7 @@ quiet_cmd_k3_am62lx_image = K3_am62lx_IMG   $@
 			$$inner							\
 			$$optee							\
 			$<:17:16:0:82000000					\
-			--key $(KEY_$(@F)) --out $@
+			--key "$(KEY_$(@F))" --out $@
 
 quiet_cmd_k3_am62lx_tiboot3_image = K3_am62lx_tiboot3_IMG   $@
       cmd_k3_am62lx_tiboot3_image = \
@@ -124,7 +124,7 @@ quiet_cmd_k3_am62lx_tiboot3_image = K3_am62lx_tiboot3_IMG   $@
 			$(SYSFW_$(@F)):2:0:0:00040000				\
 			$(SYSFWDATA_$(@F)):18:0:0:0006c000			\
 			$(INNERDATA_$(@F)):3:0:0:00000000			\
-			--key $(KEY_$(@F))					\
+			--key "$(KEY_$(@F))"					\
 			--out $@
 
 $(obj)/%.k3_am62x_img: $(obj)/% scripts/k3img FORCE

-- 
2.39.5



