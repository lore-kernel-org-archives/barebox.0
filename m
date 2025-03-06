Delivery-date: Thu, 06 Mar 2025 16:30:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqDBL-00AdcD-19
	for lore@lore.pengutronix.de;
	Thu, 06 Mar 2025 16:30:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqDBK-0007e7-8S
	for lore@pengutronix.de; Thu, 06 Mar 2025 16:30:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NseQQ54Q/9BIDGsaLaV2myTCstHNsg1wrQcCYbtBOeg=; b=R+7vUbcrJ0zfxMAOnTdiyQ0klR
	iceNSc7BDw6TOenmGoTG/ES+LdIOISpNe2X9FxZNYS2VPagyHcZYSIFJgt2ww1Sk8ZPjI2EoN8Jwj
	VL17HVrX6IopI+43OzuS+1a7LAl16uBXHj5KU4gdYTtEXOzpfv2ov7w80Pl0SJtvP9TaXBVEpHOda
	J6a1Z8fsrpLT6m33VawTGJ93b1I4DIKPSZ1Ed8aE33HYY9bMWe8nliJ5eFVryidmIsJBNk9S0INf7
	Bo4TeBZJBtds0VTWXm/4NJWH0z9t8tJXu/oLRbH4o7fOwa53eG74jUFAqi20jsbG+uVPjJQ5G40Ns
	SyD4ZyYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqDAb-0000000BKEZ-0OIV;
	Thu, 06 Mar 2025 15:29:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqD5c-0000000BJGH-0wS4
	for barebox@lists.infradead.org;
	Thu, 06 Mar 2025 15:24:49 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1tqD5Y-0006nA-I2; Thu, 06 Mar 2025 16:24:44 +0100
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>
Date: Thu,  6 Mar 2025 16:24:43 +0100
Message-Id: <20250306152443.2519665-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_072448_310073_BA36481D 
X-CRM114-Status: UNSURE (   8.86  )
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
Subject: [PATCH] commands: fix typo in CMD_AUTOMOUNT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 commands/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index e41625e294c..fe459fa862f 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -638,7 +638,7 @@ config CMD_AUTOMOUNT
 	select FS_AUTOMOUNT
 	prompt "automount"
 	help
-	  Automount allows o automatically execute a script when a certain
+	  Automount allows to automatically execute a script when a certain
 	  directory is accessed for the first time. The script should then make
 	  this directory available (discover USB devices, bring network interface
 	  up and finally mount the filesystem).
-- 
2.39.5



