Delivery-date: Tue, 27 May 2025 08:27:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJnmY-000liK-2p
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 08:27:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJnmY-0003En-Aq
	for lore@pengutronix.de; Tue, 27 May 2025 08:27:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pH0SmNsXIYz7yW+ZIR7cRVmv/4jJssky1QyY0A7hh4E=; b=WUNgtTYlYD0z8i3BQE5EXoGgNb
	vj/REKLHEz9Eq0STC8b1hoCQA51t8W1V6HDYdQpRZnznwA/68ifOsGVjxOk2XJD5x14HtGxLcqSX+
	caSNyXDdsVP6oqeHxTha8x/tNLmgtPttVBkDhd7vqg2dNqid4Ikr1IJh4bJqLaavPLdoSaDf/GGuK
	Xz6Cgk1A1+hqdC5mpV34EbtsCZYc+/4W/V1x4eZXgYB+7lJpi7Ms+ZgQLAPrPzZmtVTkW1c+quAWQ
	TTeiPWUrUxd4tcrnodiJNXASjF92YZiMyLXvOLgALD4D2XP2yePhdQhn/RVlwL4RNg7Z3FLATMA3S
	LX6RP1og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJnm9-0000000A1xc-1vJG;
	Tue, 27 May 2025 06:27:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJnm6-0000000A1ul-3RkT
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 06:26:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1uJnm4-0002wk-EL; Tue, 27 May 2025 08:26:56 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ejo@pengutronix.de>)
	id 1uJnm4-000N9y-0m;
	Tue, 27 May 2025 08:26:56 +0200
Received: from ejo by dude06.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ejo@pengutronix.de>)
	id 1uJnm4-00C54X-0a;
	Tue, 27 May 2025 08:26:56 +0200
From: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de
Date: Tue, 27 May 2025 08:26:29 +0200
Message-Id: <20250527062632.2879361-2-ejo@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527062632.2879361-1-ejo@pengutronix.de>
References: <20250527062632.2879361-1-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_232658_866228_685B5120 
X-CRM114-Status: GOOD (  13.08  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] doc: user: devicetree: fix indentation and typo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Enrico Jörns <ejo@pengutronix.de>
---
 Documentation/user/devicetree.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/devicetree.rst b/Documentation/user/devicetree.rst
index 9f46eee4ea..ea2945ab2b 100644
--- a/Documentation/user/devicetree.rst
+++ b/Documentation/user/devicetree.rst
@@ -86,7 +86,7 @@ overlays to.
 .. note:: Compiling a device tree discards label information by default. To be able
  to use phandles into the base device tree from inside an overlay, pass to dtc the
  ``-@`` option when compiling the base device tree.
-   This will populate ``/__symbols__`` in the base device tree.
+ This will populate ``/__symbols__`` in the base device tree.
 
  Having ``__fixups__`` in the overlay, but no ``__symbols__`` in the base device
  tree is not allowed: ``ERROR: of_resolver: __symbols__ missing from base devicetree``.
@@ -96,7 +96,7 @@ Device tree overlays on the live tree
 
 While the live tree can be patched by board code, barebox does not
 detect any changes to the live tree. To let the overlays have any effect, board
-code must make sure the live tree is patched before the devices are instanciated
+code must make sure the live tree is patched before the devices are instantiated
 from it.
 
 The ``CONFIG_OF_OVERLAY_LIVE`` option will need to be enabled to generate
-- 
2.39.5



