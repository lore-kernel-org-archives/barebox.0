Delivery-date: Tue, 22 Oct 2024 09:49:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t39dY-007Ng7-33
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 09:49:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t39dX-0006Cy-GG
	for lore@pengutronix.de; Tue, 22 Oct 2024 09:49:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I2lPGpZkpS+DcXGkguWTWBmmQQWtInOJDF9Bwom2eEE=; b=d0xm/+R/8t0mfHENaR9aul3m3K
	EClCWq/xt2OShVxh5K4RucP8ePEdHRkx/cBPatVH9ZVUTlix5/TqoPTmHSmgNonf6ArmohYaLRN5L
	2RSYSFi7oLqhfp0HHSKLg8nnZij0QntTtB1X8kxYI4MGDZ8FBA0r2uP0SWodUVVlaeOo2BcoSHxWP
	yUi9s6lIGBWPqQB41UeH3Si7xoNimlirbPZVRy9jvCXyaiWZyRn7V8nePMsJYhFJNKg7VBi8GqPQn
	K06SfnA7D4yEtNmeY7E57ETD0gBhW1QZkF6ghZKo/KJVNihiI/V22/HnR3Nv2AUtFDBLgF5Arv268
	POaruntA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t39cp-0000000A2Ud-4A6V;
	Tue, 22 Oct 2024 07:48:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t39b2-0000000A2H2-3zcJ
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 07:46:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39b0-0005ho-7B; Tue, 22 Oct 2024 09:46:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39az-000pLK-30;
	Tue, 22 Oct 2024 09:46:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39az-00BzDi-2p;
	Tue, 22 Oct 2024 09:46:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 22 Oct 2024 09:46:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241022-arm-layerscape-tfa-v2-2-69ac70ceb0ff@pengutronix.de>
References: <20241022-arm-layerscape-tfa-v2-0-69ac70ceb0ff@pengutronix.de>
In-Reply-To: <20241022-arm-layerscape-tfa-v2-0-69ac70ceb0ff@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729583185; l=2206;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=nxbj+CqzBCFAPCGw2uru6mvgX6sAW4UaItUPiSFxgoo=;
 b=/5Eegnq/Sh19bJAymQ+o5cgz9CVfFWVd2fH91s3TARXu6Jl42/nF4aq1MdJCmSBYzsl7NXaUN
 s2lHr5Y/zmyAAWRoRyVgeTV30ldWes/uRgHFefYGT0oB8od9ALeso9B
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_004629_115003_BA848E33 
X-CRM114-Status: GOOD (  10.58  )
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
Subject: [PATCH v2 02/12] ARM: Layerscape: images: fix variable name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

pbl-y doesn't exist as variable and is unused. What was meant here is
pblb-y and it should contain the name of the entry function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.layerscape | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/images/Makefile.layerscape b/images/Makefile.layerscape
index 9cb88270d7..fb2dfe67d1 100644
--- a/images/Makefile.layerscape
+++ b/images/Makefile.layerscape
@@ -21,7 +21,7 @@ quiet_cmd_lspbl_spi_image = LSPBL-SPI-IMG $@
 			    $(objtree)/scripts/pblimage -o $@ -r $(lspbl-rcw-tmp) -s \
 			    -c $(2) -m $($(patsubst $(obj)/%.pblb,PBL_CODE_SIZE_%,$<)) -p $(lspbl-pbi-tmp) -i $<
 
-pbl-$(CONFIG_MACH_LS1028ARDB) += start_ls1028ardb.pbl
+pblb-$(CONFIG_MACH_LS1028ARDB) += start_ls1028ardb
 
 $(obj)/barebox-ls1028ardb-sd.image: $(obj)/start_ls1028ardb.pblb \
 		$(board)/ls1028ardb/ls1028ardb_rcw_sd.cfg \
@@ -30,7 +30,7 @@ $(obj)/barebox-ls1028ardb-sd.image: $(obj)/start_ls1028ardb.pblb \
 
 image-$(CONFIG_MACH_LS1028ARDB) += barebox-ls1028ardb-sd.image
 
-pbl-$(CONFIG_MACH_LS1046ARDB) += start_ls1046ardb.pbl
+pblb-$(CONFIG_MACH_LS1046ARDB) += start_ls1046ardb
 
 $(obj)/barebox-ls1046ardb-sd.image: $(obj)/start_ls1046ardb.pblb \
 		$(board)/ls1046ardb/ls1046ardb_rcw_sd.cfg \
@@ -50,7 +50,7 @@ $(obj)/barebox-ls1046ardb-qspi.image: $(obj)/start_ls1046ardb.pblb \
 image-$(CONFIG_MACH_LS1046ARDB) += barebox-ls1046ardb-sd.image barebox-ls1046ardb-qspi.image \
 	barebox-ls1046ardb-emmc.image
 
-pbl-$(CONFIG_MACH_TQMLS1046A) += start_tqmls1046a.pbl
+pblb-$(CONFIG_MACH_TQMLS1046A) += start_tqmls1046a
 
 $(obj)/barebox-tqmls1046a-sd.image: $(obj)/start_tqmls1046a.pblb \
 		$(board)/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg \
@@ -65,7 +65,7 @@ $(obj)/barebox-tqmls1046a-qspi.image: $(obj)/start_tqmls1046a.pblb \
 image-$(CONFIG_MACH_TQMLS1046A) += barebox-tqmls1046a-sd.image \
 	barebox-tqmls1046a-qspi.image
 
-pbl-$(CONFIG_MACH_LS1021AIOT) += start_ls1021aiot.pbl
+pblb-$(CONFIG_MACH_LS1021AIOT) += start_ls1021aiot
 
 $(obj)/barebox-ls1021aiot-qspi.image: $(obj)/start_ls1021aiot.pblb \
 		$(board)/ls1021aiot/ls102xa_rcw_sd_qspi.cfg \

-- 
2.39.5



