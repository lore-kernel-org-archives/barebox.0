Delivery-date: Tue, 02 Dec 2025 16:59:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQSmO-007DEm-2n
	for lore@lore.pengutronix.de;
	Tue, 02 Dec 2025 16:59:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQSmO-0005Q6-Al
	for lore@pengutronix.de; Tue, 02 Dec 2025 16:59:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8ep9JTndAmLgbTvretUqBZljPF6JcBX38itrShiK108=; b=qqp/fZM3uGStcDC8ryhPrMaCpL
	H3vk3egMOh2tfuOvKTrk34CpNHz0pU99hhnf1yrXq/7fphbOyBsXpayb3trWHNn87wWjl6vf9nqlA
	syAOWf+8bXq+ZUzz7+audJhmmXd65/T8lv2E0lx0R5KGemmyPP3c2P4PRxO53+91Lx9xnMZJOdXRd
	o2d49+6DTgft2U9+etTisvzOhmxfhucLpMVDVWoz4mCQmxiyF3caFekBbyg8TnInyl/stEJ5zaTMe
	QeeNu4eXbNNdJ07HfUWd8n3w/DNfE2TsIkDsob0A6x4G/patcEUCdmwVA88rUmanmxt0pKeYhu810
	vWuC017g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQSlp-00000005aMD-2gI7;
	Tue, 02 Dec 2025 15:58:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQSln-00000005aKr-3YFB
	for barebox@lists.infradead.org;
	Tue, 02 Dec 2025 15:58:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQSlm-0005Bn-4v; Tue, 02 Dec 2025 16:58:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQSll-003dSw-31;
	Tue, 02 Dec 2025 16:58:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQSll-00000006wsy-3YvR;
	Tue, 02 Dec 2025 16:58:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 02 Dec 2025 16:58:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251202-k3-deps-v1-1-68404d3b2c70@pengutronix.de>
References: <20251202-k3-deps-v1-0-68404d3b2c70@pengutronix.de>
In-Reply-To: <20251202-k3-deps-v1-0-68404d3b2c70@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764691105; l=1256;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=qMJ06FAgZt/WWoUk8oTibD28gi/pp2wf3qabhK/dPMU=;
 b=LQKat20yL+WEHpA/h+44v8uw8KZVEjUdmCVfqzBCeaUx46VQjY2lsmGXJR/4M9OPuiVANikii
 1Z1Px7yXc+eCVLBWT+sMp0oxqCdpSsvAjbV9Z2o9e5Szv6o9LGgdy+h
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_075827_911797_841967BA 
X-CRM114-Status: UNSURE (   8.30  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] ARM: K3: am62l: don't put sysfwdata into 1st stage
 image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

SYSFWDATA is not needed for the tiboot3 stage. Drop it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.k3 | 2 --
 1 file changed, 2 deletions(-)

diff --git a/images/Makefile.k3 b/images/Makefile.k3
index d2b7be7ca017325dfc8700f556c7d17760c8aa1e..27ddb5d0b68ac6411165847f1fab18c38f48dc04 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -85,7 +85,6 @@ INNERDATA_start_am62lx_evm.pblb.k3_am62lx_img=$(INNERDATA_am62lx)
 KEY_start_am62lx_evm.pblb.k3_am62lx_img=$(KEY_custmpk)
 
 SYSFW_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(SYSFW_am62lx_hs_fs)
-SYSFWDATA_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(SYSFWDATA_am62lx)
 INNERDATA_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(INNERDATA_am62lx)
 TFA_BL1_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(FIRMWARE_DIR)/am62lx-bl1.bin
 KEY_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(KEY_custmpk)
@@ -134,7 +133,6 @@ quiet_cmd_k3_am62lx_tiboot3_image = K3_am62lx_tiboot3_IMG   $@
 		$(srctree)/scripts/k3img					\
 			$(TFA_BL1_$(@F)):1:16:160:70800000			\
 			$(SYSFW_$(@F)):2:0:0:00040000				\
-			$(SYSFWDATA_$(@F)):18:0:0:0006c000			\
 			$(INNERDATA_$(@F)):3:0:0:00000000			\
 			--key "$(KEY_$(@F))"					\
 			--out $@

-- 
2.47.3



