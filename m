Delivery-date: Mon, 26 May 2025 12:07:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJUjn-000U68-27
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 12:07:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJUjn-0001oC-2d
	for lore@pengutronix.de; Mon, 26 May 2025 12:07:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=a2fVdb4UmFFs/BTrchDPwys8WLjomJHP+wOw9+IqxBk=; b=FUPmFH2SZeSMmDRU827+D5Lxq5
	xoWsm/aHe8OmfnqXW9uarhV3LtD9fseu9OifJ/PGK10AtOZEl8SU6TglPhlvMaOXELqEla5HZ0UoW
	QezBp1bZSfOv6FocTfZomYra9rqXvQca3KbSaXxmvw3zSMwVOorF81JqutVFyOtR31N0IKcYYb0Xs
	3RbgWjVZLd1r15uYGjJllifuoHPZr/2MarQOC6Xy43vQ9/HAngaXKiWMFv96Tn+hNM8YOzZwQJuUW
	aehXS768k3rXgfNmYq/uLvmduzQQxa9COqrCpqmJB6NhMY1t3qzCW30E0h1m48h/U8crUI2gevomb
	bnoj/AQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJUjB-00000008aWO-1qcY;
	Mon, 26 May 2025 10:06:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJUj1-00000008aUE-1mnv
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 10:06:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uJUiy-0001XL-O9; Mon, 26 May 2025 12:06:28 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uJUiy-000EQf-1p;
	Mon, 26 May 2025 12:06:28 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uJUiy-00DRBJ-1W;
	Mon, 26 May 2025 12:06:28 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 26 May 2025 12:06:27 +0200
Message-Id: <20250526100627.3202658-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_030631_464637_8BB27B8D 
X-CRM114-Status: GOOD (  14.70  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: devicetree: mention when symbols are required in base DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The barebox error message:

  ERROR: of_resolver: __symbols__ missing from base devicetree

can be a bit cryptic if unfamiliar with how overlays work internally.

Let's mention the error message in the documentation, so it turns up in
a search and add some extra information.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/devicetree.rst | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/user/devicetree.rst b/Documentation/user/devicetree.rst
index 91afffdcda76..9f46eee4ea95 100644
--- a/Documentation/user/devicetree.rst
+++ b/Documentation/user/devicetree.rst
@@ -83,6 +83,14 @@ barebox has support for device tree overlays. barebox knows two different trees,
 the live tree and the device tree the kernel is started with. Both can be applied
 overlays to.
 
+.. note:: Compiling a device tree discards label information by default. To be able
+ to use phandles into the base device tree from inside an overlay, pass to dtc the
+ ``-@`` option when compiling the base device tree.
+   This will populate ``/__symbols__`` in the base device tree.
+
+ Having ``__fixups__`` in the overlay, but no ``__symbols__`` in the base device
+ tree is not allowed: ``ERROR: of_resolver: __symbols__ missing from base devicetree``.
+
 Device tree overlays on the live tree
 .....................................
 
@@ -91,6 +99,9 @@ detect any changes to the live tree. To let the overlays have any effect, board
 code must make sure the live tree is patched before the devices are instanciated
 from it.
 
+The ``CONFIG_OF_OVERLAY_LIVE`` option will need to be enabled to generate
+``__symbols__`` into the barebox device tree.
+
 Device tree overlays on the kernel device tree
 ..............................................
 
@@ -118,3 +129,9 @@ the kernel. The behaviour is controlled by different variables:
   ``global.of.overlay.compatible`` above. The default is ``filepattern compatible``
   which means the two generic filters are active. This list may be replaced or
   supplemented by board specific filters.
+
+The kernel device trees need to be built with symbols (``dtc -@`` option) enabled.
+For upstream device trees, this is currently done on a case-by-case basis in the
+Makefiles::
+
+  DTC_FLAGS_bcm2711-rpi-4-b := -@
-- 
2.39.5



