Delivery-date: Wed, 03 Jul 2024 18:59:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3Km-001EZF-0j
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 18:59:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3Kk-0005QC-FH
	for lore@pengutronix.de; Wed, 03 Jul 2024 18:59:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cBGG9fUUuDt40xLEN1a13xnnc4zL3DfCEqq4ZspoPaA=; b=fjoHldD5ODJryOucEbxPD0XNbb
	UB2VGPfPUKW74raNONqoEj1hgXqaOb3Z7+OM3Lm3HofBb040mb305dRjAGONpBRp/1pn7jhCvDNr2
	rp/XP0dwwQCa/UtlJx2/isUhmbhdndmSUOMBW5MTNmlmpxMpbVj2X+c+DQAjCRAxlMkYOfkUZbAzL
	9CmgFTNr00F/4V1DW0y9pZlKhKvTogh036I3ZP/oD0tEZcRbcLNwSjQ0nDKDCJ5bdE8awkK54dqAD
	uzb5/h7+qrtQnKsB5v1TJ6KQBQjhThptq55DeExWoxFNYDZQz4mkH2JKWq3cRtd1ukdWU/J5PTsEI
	w7tYalVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3K1-0000000Av60-377L;
	Wed, 03 Jul 2024 16:59:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3Jv-0000000Av28-05dF
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 16:59:06 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sP3Jr-0004uJ-FZ; Wed, 03 Jul 2024 18:58:59 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 03 Jul 2024 18:58:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240703-v2024-05-0-topic-fit-overlay-v3-7-c1fd766fd31d@pengutronix.de>
References: <20240703-v2024-05-0-topic-fit-overlay-v3-0-c1fd766fd31d@pengutronix.de>
In-Reply-To: <20240703-v2024-05-0-topic-fit-overlay-v3-0-c1fd766fd31d@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_095903_234713_CB1ECFCE 
X-CRM114-Status: UNSURE (   7.58  )
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
Subject: [PATCH v3 07/10] of: overlay: drop unnecessary empty check in
 of_overlay_global_fixup_dir
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is now done during of_overlay_global_fixup() so we can drop it
here.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/of/overlay.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index a980e7aa5e02..822487908ede 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -461,9 +461,6 @@ static int of_overlay_global_fixup_dir(struct device_node *root, const char *ovl
 	if (*ovl_dir == '/')
 		return of_overlay_apply_dir(root, ovl_dir, true);
 
-	if (*ovl_dir == '\0')
-		return 0;
-
 	dir = concat_path_file(of_overlay_basedir, ovl_dir);
 
 	ret = of_overlay_apply_dir(root, dir, true);

-- 
2.39.2



