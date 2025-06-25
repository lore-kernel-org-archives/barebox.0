Delivery-date: Wed, 25 Jun 2025 14:32:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUPIY-00Avhz-1D
	for lore@lore.pengutronix.de;
	Wed, 25 Jun 2025 14:32:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUPIU-00015h-JU
	for lore@pengutronix.de; Wed, 25 Jun 2025 14:32:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jZ7skIF+/sT/pD2L5fiQSMx1zqWFK5yJRvosp+qEBmc=; b=LUid+/Thf8lNteAebPt6/0GEY6
	OEk9lalX5ZwVfQvIbohydlnudPb9mz0f8Z6P5rEeB0fTWgHqUFwIsev14cJmu1Q62sXOW6Gaw9mKm
	yHRwfQy11QuWSSv9JAmj5VFPUiI5sVO35yEUd7h+3MlxnjTmZe1tFV5Lw/GmSaA4NnELe4/mw53aW
	AxGKZWxWuMEFvda9vMH0WKuE7pUgs3u2NU7GnHBulNIBvF+f9u3A9SBL8C4ipoRd46IQ4/xZpJASK
	laIWJHaMbEtj+rh1Y5jWdLXF6dssZWr1NF/FbtKf9ZOP1pdjTfWrLL3HYsYYrIlswfes+0AUXJF7A
	RWKPgNew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUPHw-00000008dGM-39Ps;
	Wed, 25 Jun 2025 12:31:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUNjJ-00000008N6u-3biW
	for barebox@lists.infradead.org;
	Wed, 25 Jun 2025 10:51:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1uUNjG-0001ZL-Nv; Wed, 25 Jun 2025 12:51:46 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1uUNjG-005GZJ-1k;
	Wed, 25 Jun 2025 12:51:46 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1uUNjG-00FDVn-1Q;
	Wed, 25 Jun 2025 12:51:46 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Wed, 25 Jun 2025 12:51:43 +0200
Message-Id: <20250625105145.3626715-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_035149_911700_4516900A 
X-CRM114-Status: UNSURE (   9.32  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] doc: user: rename appendix section and keep it as last entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This additional appendix section describes how to set up the development
host. Adjust its title to reflect its contents. An appendix also looks
bad in the middle of a table of contents, so move it to the bottom.
Rename the file accordingly.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 .../{system-setup.rst => appendix-development-host-setup.rst} | 4 ++--
 Documentation/user/user-manual.rst                            | 3 ++-
 2 files changed, 4 insertions(+), 3 deletions(-)
 rename Documentation/user/{system-setup.rst => appendix-development-host-setup.rst} (96%)

diff --git a/Documentation/user/system-setup.rst b/Documentation/user/appendix-development-host-setup.rst
similarity index 96%
rename from Documentation/user/system-setup.rst
rename to Documentation/user/appendix-development-host-setup.rst
index 5651569dc2b2..88baf5f3794a 100644
--- a/Documentation/user/system-setup.rst
+++ b/Documentation/user/appendix-development-host-setup.rst
@@ -1,5 +1,5 @@
-Appendix: System Setup
-======================
+Appendix: Development Host Setup
+================================
 
 Serial Console Access
 ---------------------
diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index a14f6905f9ee..ce0792000a3c 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -29,7 +29,6 @@ Contents:
    bootchooser
    remote-control
    security
-   system-setup
    reset-reason
    system-reset
    state
@@ -42,6 +41,8 @@ Contents:
    virtio
    barebox-tlv
 
+   appendix-development-host-setup
+
 * :ref:`search`
 * :ref:`genindex`
 
-- 
2.39.5



