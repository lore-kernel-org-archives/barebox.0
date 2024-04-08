Delivery-date: Mon, 08 Apr 2024 09:37:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rtjYs-002Jqc-0D
	for lore@lore.pengutronix.de;
	Mon, 08 Apr 2024 09:37:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rtjYr-0002aH-Gr
	for lore@pengutronix.de; Mon, 08 Apr 2024 09:37:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZW5yQf6d/4q5BayLc/7G9EtUbsFxv1leYDe5jM7acDg=; b=3DD2zZrgRH+tnpU8HimWL5bACm
	j+zbpRoSyA0GQMgWEO1KzrKXTVrR2c+eRxz7FL0E+N2o2GWRKthsbf4NbEUFQFvidGTMqQbUKwEMg
	Zh4Bz75xBhF4oNAz5mI8KTLHp7Gh+bVCOTWf/9rYKN3gMWX8OP5aCgXrCY/m9Vz2gSgrr6VWC+f2u
	QcEYvobeFRgMN3plQ0pT7pFO0cmIUD2Ft2MZ1NgLzKbVXPkeGjswKQP0hzi5Z3BIienIASi9yAgKp
	TAtx8Trm1s10X4g2Pnr9Gl8Agf2aofaK31sqZJ12iad5eMPZcHXvMLsZSNolatVIpWSR2469jb8kc
	I6G0xE4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtjYD-0000000EgJb-2elo;
	Mon, 08 Apr 2024 07:36:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtjYA-0000000EgGU-1HEk
	for barebox@lists.infradead.org;
	Mon, 08 Apr 2024 07:36:19 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rtjY5-0002LS-65
	for barebox@lists.infradead.org; Mon, 08 Apr 2024 09:36:13 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  8 Apr 2024 09:36:11 +0200
Message-Id: <20240408073612.4075622-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_003618_539638_6F812819 
X-CRM114-Status: UNSURE (   8.54  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] bootm: don't allow bootm_set_verify_mode if BOOTM_FORCE_SIGNED_IMAGES is enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The only allowed value for bootm_verify_mode is BOOTM_VERIFY_SIGNATURE
if CONFIG_BOOTM_FORCE_SIGNED_IMAGES is enabled. This is set via the
bootm_init() initcall. All further attempts to modify this variable
should be prevented.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/bootm.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/common/bootm.c b/common/bootm.c
index a59fa35008a9..e6703b19b3ba 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -75,6 +75,11 @@ enum bootm_verify bootm_get_verify_mode(void)
 
 void bootm_set_verify_mode(enum bootm_verify mode)
 {
+	if (IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES)) {
+		pr_err("BOOTM_FORCE_SIGNED_IMAGES enabled, prevent modifying bootm_verify_mode\n");
+		return;
+	}
+
 	bootm_verify_mode = mode;
 }
 
-- 
2.39.2



