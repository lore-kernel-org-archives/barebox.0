Delivery-date: Mon, 14 Apr 2025 08:26:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DHP-000Wpt-1I
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:26:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DHO-00083Z-ST
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:26:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sCZhaioXYi6biDieXN7buYjkIt7/jwAITgvcDxAonqA=; b=hUTeWTHDXD/CN8Z0wnzMvQlyaF
	6+8tOYldjkNSUbNFoTnt07BaUl7YulwJwn6M5/VVXiLWG8cC/JHnW1pm1rL9pGumxFwkp9/IGC2tI
	49S1uFQ3gq0u1HXbRKPGkidBANqJSwAzCxQn1aeHKqr5eoogcSO8uCp8CJmRSUk7lqzwoPNSgdw9l
	4vcvJTuObGaaclD9JNIro8OMbfwwbmpgMuni5EH2kgNNDjqXv41+p6D5WBXrNHYj4wvceZtHoc4Kd
	UzefCUvcq5gUt8wLUC+BwG00EGBtH1CZRmG9P8j4rOdo1sG1ETWM4ZRw0jj5TwCbGqOZidUULjgZY
	7laQAYOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DH1-00000000nJd-3ifB;
	Mon, 14 Apr 2025 06:26:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DGy-00000000nJA-443o
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:26:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DGx-0007uF-Ih; Mon, 14 Apr 2025 08:26:23 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DGx-000Cgf-1F;
	Mon, 14 Apr 2025 08:26:23 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DGx-00BT5A-0w;
	Mon, 14 Apr 2025 08:26:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:26:22 +0200
Message-Id: <20250414062622.2733364-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_232625_006531_CE16C231 
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: saveenv: remove outdated info about envfs directories
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Directories in the environment (nv, init) are common-place, at least
nowadays, so remove that inaccurate limitation in the help text.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 7eff747ffdb6..0f3155d123ab 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -873,8 +873,7 @@ config CMD_SAVEENV
 
 	  ENVFS is usually a block in flash but can be any other file. If
 	  omitted, DIRECTORY defaults to /env and ENVFS defaults to
-	  /dev/env0. Note that envfs can only handle files, directories are being
-	  skipped silently.
+	  /dev/env0.
 
 config CMD_SETENV
 	tristate
-- 
2.39.5



