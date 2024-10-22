Delivery-date: Tue, 22 Oct 2024 09:49:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t39dZ-007NgE-05
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 09:49:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t39dX-0006DK-GN
	for lore@pengutronix.de; Tue, 22 Oct 2024 09:49:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=03HJoa+KzMRhpQ8q2bcMSSd0a0noUeRrUQZijIxFFuc=; b=AhglQS+G0XQYSD6GxAcUqZCR/j
	oOp3E9XT76W6VhoAUC6cU8PbXDwt+hwhfH+6WFzTYbzPEB4B7r9LC616mcGmIMmL/rD3ZThxMXFPt
	j52UD2Z2xgFazxFemHgQcrPtED5ruVkvXY/FCVkyhG35rnqlWxLSq8Oy4ccRfsz9QJwyTkNf3yyir
	oYBr+Y4pZLH232ZfERFnL+xotoxAjF8IlSr6xnh5vGEVGl57O8Diyr3BO5fXP5efEAqzgiOHwItvG
	bLFHr68qfevXa36+vy6fUm76EEFG6LWpLJ7XrMPgZd5dUZxJSS+BY7MQCqWwDi+/Hhu8YtDv/iFas
	mPGRvhCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t39cp-0000000A2UT-1hte;
	Tue, 22 Oct 2024 07:48:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t39b2-0000000A2H9-3zt9
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 07:46:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39b0-0005hs-CL; Tue, 22 Oct 2024 09:46:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39az-000pLL-39;
	Tue, 22 Oct 2024 09:46:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39az-00BzDi-2q;
	Tue, 22 Oct 2024 09:46:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 22 Oct 2024 09:46:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241022-arm-layerscape-tfa-v2-3-69ac70ceb0ff@pengutronix.de>
References: <20241022-arm-layerscape-tfa-v2-0-69ac70ceb0ff@pengutronix.de>
In-Reply-To: <20241022-arm-layerscape-tfa-v2-0-69ac70ceb0ff@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729583185; l=2890;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=FvQaVm+JMQczoIfshRCTX8yPpO8yvVRY+IXY6asXr0I=;
 b=GVQLMGTs9dESawJcBdcUqBQTX6H2PUGrhuoPiS5tJi0aFc1JKkhRgXrXK7rSJ/OmG6ldNqW0s
 V8S8zT8vBzADIbDWz/nSCQdtiLS2mnfKBqIsdVtujJCJPNw8Doxot3H
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_004629_119072_5E9EC343 
X-CRM114-Status: UNSURE (   9.34  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 03/12] ARM: Layerscape: images: add missing FORCE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

if_changed should be used in conjunction with FORCE to make sure the
command is executed when the command line has changed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.layerscape | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/images/Makefile.layerscape b/images/Makefile.layerscape
index fb2dfe67d1..4e0c659d51 100644
--- a/images/Makefile.layerscape
+++ b/images/Makefile.layerscape
@@ -25,7 +25,7 @@ pblb-$(CONFIG_MACH_LS1028ARDB) += start_ls1028ardb
 
 $(obj)/barebox-ls1028ardb-sd.image: $(obj)/start_ls1028ardb.pblb \
 		$(board)/ls1028ardb/ls1028ardb_rcw_sd.cfg \
-		$(board)/ls1028ardb/ls1028ardb_pbi.cfg
+		$(board)/ls1028ardb/ls1028ardb_pbi.cfg FORCE
 	$(call if_changed,lspbl_image,ls1028a)
 
 image-$(CONFIG_MACH_LS1028ARDB) += barebox-ls1028ardb-sd.image
@@ -34,17 +34,17 @@ pblb-$(CONFIG_MACH_LS1046ARDB) += start_ls1046ardb
 
 $(obj)/barebox-ls1046ardb-sd.image: $(obj)/start_ls1046ardb.pblb \
 		$(board)/ls1046ardb/ls1046ardb_rcw_sd.cfg \
-		$(board)/ls1046ardb/ls1046ardb_pbi.cfg
+		$(board)/ls1046ardb/ls1046ardb_pbi.cfg FORCE
 	$(call if_changed,lspbl_image,ls1046a)
 
 $(obj)/barebox-ls1046ardb-emmc.image: $(obj)/start_ls1046ardb.pblb \
 		$(board)/ls1046ardb/ls1046ardb_rcw_emmc.cfg \
-		$(board)/ls1046ardb/ls1046ardb_pbi.cfg
+		$(board)/ls1046ardb/ls1046ardb_pbi.cfg FORCE
 	$(call if_changed,lspbl_image,ls1046a)
 
 $(obj)/barebox-ls1046ardb-qspi.image: $(obj)/start_ls1046ardb.pblb \
 		$(board)/ls1046ardb/ls1046ardb_rcw_qspi.cfg \
-		$(board)/ls1046ardb/ls1046ardb_pbi.cfg
+		$(board)/ls1046ardb/ls1046ardb_pbi.cfg FORCE
 	$(call if_changed,lspbl_spi_image,ls1046a)
 
 image-$(CONFIG_MACH_LS1046ARDB) += barebox-ls1046ardb-sd.image barebox-ls1046ardb-qspi.image \
@@ -54,12 +54,12 @@ pblb-$(CONFIG_MACH_TQMLS1046A) += start_tqmls1046a
 
 $(obj)/barebox-tqmls1046a-sd.image: $(obj)/start_tqmls1046a.pblb \
 		$(board)/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg \
-		$(board)/tqmls1046a/tqmls1046a_pbi.cfg
+		$(board)/tqmls1046a/tqmls1046a_pbi.cfg FORCE
 	$(call if_changed,lspbl_image,ls1046a)
 
 $(obj)/barebox-tqmls1046a-qspi.image: $(obj)/start_tqmls1046a.pblb \
 		$(board)/tqmls1046a/tqmls1046a_rcw_qspi_3333_5559.cfg \
-		$(board)/tqmls1046a/tqmls1046a_pbi.cfg
+		$(board)/tqmls1046a/tqmls1046a_pbi.cfg FORCE
 	$(call if_changed,lspbl_spi_image,ls1046a)
 
 image-$(CONFIG_MACH_TQMLS1046A) += barebox-tqmls1046a-sd.image \
@@ -69,7 +69,7 @@ pblb-$(CONFIG_MACH_LS1021AIOT) += start_ls1021aiot
 
 $(obj)/barebox-ls1021aiot-qspi.image: $(obj)/start_ls1021aiot.pblb \
 		$(board)/ls1021aiot/ls102xa_rcw_sd_qspi.cfg \
-		$(board)/ls1021aiot/ls102xa_pbi.cfg
+		$(board)/ls1021aiot/ls102xa_pbi.cfg FORCE
 	$(call if_changed,lspbl_spi_image,ls1046a)
 
 image-$(CONFIG_MACH_LS1021AIOT) += barebox-ls1021aiot-qspi.image

-- 
2.39.5



