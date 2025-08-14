Delivery-date: Thu, 14 Aug 2025 15:16:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umXou-000WFI-2b
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 15:16:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umXot-0008Ge-Md
	for lore@pengutronix.de; Thu, 14 Aug 2025 15:16:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1Q6n82mCrFDm8aWDaO7stxgzpHgECfAMcRrYaMT22no=; b=1ryQ0IrUR12qmxHYcEjRmP0rtz
	/4y3j4vdFdfq/BzeROZUAcAjBio6iA8llc5SsYwUBHLHt95vK8CNiq4Xw4ROVmPRSc1HuJ2sxfdmd
	shGRTLKje5noQXIz88fN/wfm/w7j49/mrqsNFKZwN0LI4cIzv4vYdV0iFQZK8hwzQr7FDRB8po4eY
	bbJrmIb37ldxNhrubBi5TeqNAJO0bW23BoOGKxQ3i4HNRGzwALu/CrFr/qh83I8jsRiSWlw00HVFj
	9LubqkUBCh2o/ET1w8XKLHvcZvzB4jLShSjbhijrak8BdwXtUrvE9aQv1XLHb18X05abKh8mKOLDX
	LKWGOCXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umXoR-0000000H06u-413Z;
	Thu, 14 Aug 2025 13:16:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umVYm-0000000GfGB-1g6f
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 10:51:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umVYj-00013R-Dt; Thu, 14 Aug 2025 12:51:49 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umVYj-000Exg-0m;
	Thu, 14 Aug 2025 12:51:49 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umVYj-00FdKd-0T;
	Thu, 14 Aug 2025 12:51:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Aug 2025 12:51:48 +0200
Message-Id: <20250814105148.3725922-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_035152_435768_89C7BF6E 
X-CRM114-Status: UNSURE (   6.31  )
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
Subject: [PATCH] fixup! commands: introduce new security command group
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Documentation: commands: add security commands back to docs

Now that these commands are in a separate group, a warning alerts us to
the fact that they are unreferenced in the documentation. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/commands.rst | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/commands.rst b/Documentation/commands.rst
index 261af2a07825..549e064b2ced 100644
--- a/Documentation/commands.rst
+++ b/Documentation/commands.rst
@@ -73,6 +73,14 @@ Hardware Manipulation
 
    commands/hwmanip/*
 
+Security
+--------
+.. toctree::
+   :titlesonly:
+   :glob:
+
+   commands/security/*
+
 Miscellaneous
 -------------
 .. toctree::
-- 
2.39.5



