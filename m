Delivery-date: Fri, 19 Dec 2025 11:37:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXrh-00DAVp-2W
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:37:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXrZ-0005SA-0p
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:37:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZcVqV8AnDtCmjyFyWPUXix3UZPfLYx7kQI/7LVuM1rk=; b=PGtgIUkwefvSce
	2E1KXyuV+wHurrtgSyxyCzfl3gsueEPuDK6bhmoo2U3oJHjBzWOreNDtzzgBULrBuLnDXSp79Roip
	NnN9EzX+gepbBCUf8KsImTUk7Jq+3wLpCtYF1vRyVIoZwxjUa8+uv12pIhsteTfsk1+5HODUroKAn
	SiRDKvDJRxcFsReAq7eiBLNaR/zRdu0CSi31YyMYxcbQGmPR2oqf4z56TRempODKj7NZajb425xdF
	9Pxp/t5dRnwLfJ/IBwY+yM3uGJ+5vuaJc7BXi/htb2d3qUiEHocXyWCIwELzOlu7+5muEJs23I1qD
	9qPX4H6RBGJ+bd27ilVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqx-0000000A62d-0H9q;
	Fri, 19 Dec 2025 10:36:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqr-0000000A5uh-35k9
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:36:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqq-0004aH-7b; Fri, 19 Dec 2025 11:36:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqq-006RUM-02;
	Fri, 19 Dec 2025 11:36:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVi-0000000320L-1Ftl;
	Fri, 19 Dec 2025 11:14:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 19 Dec 2025 10:21:15 +0100
Message-ID: <20251219101453.2806980-40-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_023649_773769_D7E6111D 
X-CRM114-Status: UNSURE (   8.42  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 39/49] ARM: K3: am62l: don't put sysfwdata into 1st stage image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

SYSFWDATA is not needed for the tiboot3 stage. Drop it.

Link: https://lore.barebox.org/20251202-k3-deps-v1-1-68404d3b2c70@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit 429f52b9f4932b9533e7a2ed089334c955031bb2)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile.k3 | 2 --
 1 file changed, 2 deletions(-)

diff --git a/images/Makefile.k3 b/images/Makefile.k3
index 1a8bfe641a8e..190ada2c40f2 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -77,7 +77,6 @@ INNERDATA_start_am62lx_evm.pblb.k3_am62lx_img=$(INNERDATA_am62lx)
 KEY_start_am62lx_evm.pblb.k3_am62lx_img=$(KEY_custmpk)
 
 SYSFW_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(SYSFW_am62lx_hs_fs)
-SYSFWDATA_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(SYSFWDATA_am62lx)
 INNERDATA_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(INNERDATA_am62lx)
 TFA_BL1_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(FIRMWARE_DIR)/am62lx-bl1.bin
 KEY_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(KEY_custmpk)
@@ -126,7 +125,6 @@ quiet_cmd_k3_am62lx_tiboot3_image = K3_am62lx_tiboot3_IMG   $@
 		$(srctree)/scripts/k3img					\
 			$(TFA_BL1_$(@F)):1:16:160:70800000			\
 			$(SYSFW_$(@F)):2:0:0:00040000				\
-			$(SYSFWDATA_$(@F)):18:0:0:0006c000			\
 			$(INNERDATA_$(@F)):3:0:0:00000000			\
 			--key "$(KEY_$(@F))"					\
 			--out $@
-- 
2.47.3



