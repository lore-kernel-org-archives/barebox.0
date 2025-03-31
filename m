Delivery-date: Mon, 31 Mar 2025 14:50:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEbE-006ZSW-0x
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 14:50:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEbC-0008PQ-Pd
	for lore@pengutronix.de; Mon, 31 Mar 2025 14:50:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RuzjGWsyQGzp8rnRp79AmFq+1kSADT0DjTELFqUsLOU=; b=fhFl11qR8vUq7tCT+pX5aH0R33
	9d+MRHWwAcsFZfIAcVwFbVb24vi71YZwxoDOCe2k/7AsVOZhp5gy6e/lzf0g4muyzIJdRG9gj93xt
	rt017vuEonlnnqBUZ6ctqL2LSxyZMIhoAFpq0+hvljgmTdIPHofcncphFr1/zNQxyHGzYuDaZay2i
	+4q/0yW31fLfumZnIpMIP/GpsfjMI1SmHVXpQT1x17Y5i3Rrr9oNOwXcBzpBmRwm70VSCYmCH1UyS
	qskiq3YfgLTs+WVD0oayS0BIiFdxUTkEKPLE1O9sbDzHqlxtfHC7+G4xzoIPXatko3NSOqk8R3C3l
	nKRWXcfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEal-00000000OFE-3EX3;
	Mon, 31 Mar 2025 12:50:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEad-00000000O62-0MKt
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 12:50:10 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1tzEaa-0007tJ-Jf; Mon, 31 Mar 2025 14:50:04 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>,
	Bastian Krause <bst@pengutronix.de>
Date: Mon, 31 Mar 2025 14:49:32 +0200
Message-Id: <20250331124932.901033-9-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250331124932.901033-1-bst@pengutronix.de>
References: <20250331124932.901033-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_055007_130531_1427B909 
X-CRM114-Status: GOOD (  15.00  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 9/9] doc: bootchooser: document NV storage backend separately
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Before, the bootchooser documentation mixed up configuration options and NV
backend storage. Since these are separate concepts, document them
separately.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 42 +++++++++++++++++-------------
 1 file changed, 24 insertions(+), 18 deletions(-)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index 0c236de22fb..351e1d14e1e 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -31,9 +31,10 @@ or by e.g. setting ``boot.default`` to ``bootchooser``.
 Bootchooser Targets
 -------------------
 
-A *bootchooser* boot target represents one target that barebox can boot. It consists
-of a set of variables in the ``global.bootchooser.<targetname>`` namespace. The
-following configuration variables are needed to describe a *bootchooser* boot target:
+A *bootchooser* boot target represents one target that barebox can boot. The
+known targets are set in ``global.bootchooser.targets``. A target consists of a
+set of variables in the ``global.bootchooser.<targetname>`` namespace. The
+following configuration variables describe a *bootchooser* boot target:
 
 ``global.bootchooser.<targetname>.boot``
   This controls what barebox actually boots for this boot target. This string can
@@ -47,17 +48,6 @@ following configuration variables are needed to describe a *bootchooser* boot ta
   The default priority of a boot target.
   Defaults to ``global.bootchooser.default_priority``, see below.
 
-
-Additionally the following run-time variables are needed. Unlike the configuration
-variables their values are automatically updated by the *bootchooser* algorithm:
-
-``global.bootchooser.<targetname>.priority``
-  The current ``priority`` of the boot target. Higher numbers have higher priorities.
-  A ``priority`` of 0 means the boot target is disabled and won't be started.
-``global.bootchooser.<targetname>.remaining_attempts``
-  The ``remaining_attempts`` counter. Only boot targets with a ``remaining_attempts``
-  counter > 0 are started.
-
 The *bootchooser* algorithm generally only starts boot targets that have a ``priority``
 > 0 and a ``remaining_attempts`` counter > 0.
 
@@ -164,11 +154,9 @@ options not specific to any boot target.
   :ref:`below <bootchooser,state_framework>`. Defaults to an empty string.
 ``global.bootchooser.targets``
   Space-separated list of boot targets that are used. For each entry in the list
-  a corresponding
-  set of ``global.bootchooser.<targetname>.<variablename>`` variables must exist.
+  a corresponding set of variables must exist in the chosen *bootchooser* storage
+  backend.
   Defaults to an empty string.
-``global.bootchooser.last_chosen``
-  *bootchooser* sets this to the boot target that was chosen on last boot (index).
 
 .. _bootchooser,setup_example:
 
@@ -541,6 +529,24 @@ instead of the NV run-time environment variables, we just set:
    and ``bootchooser.<targetname>.default_attempts`` values in sync with the
    corresponding default values in the devicetree.
 
+Using NV Run-Time Variable Data
+-------------------------------
+
+.. note:: Using NV variables as bootchooser's storage is only meant for
+   evluation purposes, not for production. It is not power-fail safe.
+
+The following run-time variables are needed. Unlike the configuration
+variables their values are automatically updated by the *bootchooser* algorithm:
+
+``nv.bootchooser.<targetname>.priority``
+  The current ``priority`` of the boot target. Higher numbers have higher priorities.
+  A ``priority`` of 0 means the boot target is disabled and won't be started.
+``nv.bootchooser.<targetname>.remaining_attempts``
+  The ``remaining_attempts`` counter. Only boot targets with a ``remaining_attempts``
+  counter > 0 are started.
+``nv.bootchooser.last_chosen``
+  *bootchooser* sets this to the boot target that was chosen on last boot (index).
+
 Updating systems
 ----------------
 
-- 
2.39.5



