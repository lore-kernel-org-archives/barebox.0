Delivery-date: Mon, 31 Mar 2025 14:50:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEbE-006ZSM-0N
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 14:50:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEbD-0008Q1-BS
	for lore@pengutronix.de; Mon, 31 Mar 2025 14:50:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DZRFDsiqtLNexmgT5sWNFqewxCrfDDbQrge74PU25so=; b=ljMeb73KFCoV3nBsF2QsT3s8eU
	2/+ok/lehZUGEdPefNtn5OPxUiMP0EEKZcjgt2oVcN0VosAWe64JTFkJ/kAxvkpVxkZBERKGV6FmB
	Aiwo5AsxjMs6aKAfoDrCHnJBgc2m16GvziM8gZqiAvRzVxDpcQ74njcn8fGg9kDA7dYgFyuqTjIhx
	UkqxY7Gj9qu5W4KXC9KBl6kDKGo6YtYpB6//3VilHDCL93m+ADyt7oRbI6PNuajdDwMmvzXUguWLZ
	UbJZoiA5CCHu/yVjySMIyjF+02yj25eUGW14ODywET5SuoRdfEdw5nz1gADjMaj/2vgsUVO8Y+A5b
	dNIizcoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEaj-00000000OCl-3hWT;
	Mon, 31 Mar 2025 12:50:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEac-00000000O5x-48D0
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 12:50:09 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1tzEaa-0007tJ-HA; Mon, 31 Mar 2025 14:50:04 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>,
	Bastian Krause <bst@pengutronix.de>
Date: Mon, 31 Mar 2025 14:49:30 +0200
Message-Id: <20250331124932.901033-7-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250331124932.901033-1-bst@pengutronix.de>
References: <20250331124932.901033-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_055007_054778_9242C1D5 
X-CRM114-Status: GOOD (  14.81  )
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
Subject: [PATCH 7/9] doc: bootchooser: document defaults of global.bootchooser.*
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index 01c5c86edb6..53bf5f329fd 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -37,12 +37,15 @@ following configuration variables are needed to describe a *bootchooser* boot ta
 
 ``global.bootchooser.<targetname>.boot``
   This controls what barebox actually boots for this boot target. This string can
-  contain anything that the :ref:`boot <command_boot>` command understands.
+  contain anything that the :ref:`boot <command_boot>` command understands. If
+  unset, the boot script ``/env/boot/<targetname>`` is called.
 
 ``global.bootchooser.<targetname>.default_attempts``
   The default number of attempts that a boot target shall be tried before skipping it.
+  Defaults to ``bootchooser.default_attempts``, see below.
 ``global.bootchooser.<targetname>.default_priority``
   The default priority of a boot target.
+  Defaults to ``global.bootchooser.default_priority``, see below.
 
 
 Additionally the following run-time variables are needed. Unlike the configuration
@@ -125,20 +128,20 @@ options not specific to any boot target.
 
 ``global.bootchooser.disable_on_zero_attempts``
   Boolean flag. If set to 1, *bootchooser* disables a boot target (sets priority
-  to 0) whenever the remaining attempts counter reaches 0.
+  to 0) whenever the remaining attempts counter reaches 0. Defaults to 0.
 ``global.bootchooser.default_attempts``
   The default number of attempts that a boot target shall be tried before skipping
   it, used when not overwritten with the boot target specific variable of the same
-  name.
+  name. Defaults to 3.
 ``global.bootchooser.default_priority``
   The default priority of a boot target when not overwritten with the target
-  specific variable of the same name.
+  specific variable of the same name. Defaults to 1.
 ``global.bootchooser.reset_attempts``
   A space-separated list of conditions (checked during bootchooser start) that
   shall cause the ``remaining_attempts`` counters of all enabled targets to be
   reset. Possible values:
 
-  * empty: Counters will never be reset.
+  * empty: Counters will never be reset (default).
   * ``power-on``: If a power-on reset (``$global.system.reset="POR"``) is detected.
     Happens after a power cycle.
   * ``reset``: If a generic reset (``$global.system.reset="RST"``) is detected.
@@ -148,21 +151,22 @@ options not specific to any boot target.
   A space-separated list of conditions (checked during bootchooser start) that
   shall cause the ``priority``  of all boot targets to be reset. Possible values:
 
-  * empty: Priorities will never be reset.
+  * empty: Priorities will never be reset (default).
   * ``all-zero``: If all boot targets have zero ``priority``.
 ``global.bootchooser.retry``
   If set to 1, *bootchooser* retries booting until one succeeds or no more valid
   boot targets exist.
   Otherwise the ``boot`` command will return with an error after the first failed
-  boot target.
+  boot target. Defaults to 0.
 ``global.bootchooser.state_prefix``
   If set, this makes *bootchooser* use the *state* framework as backend for
   storing run-time data and defines the name of the state instance to use, see
-  :ref:`below <bootchooser,state_framework>`.
+  :ref:`below <bootchooser,state_framework>`. Defaults to an empty string.
 ``global.bootchooser.targets``
   Space-separated list of boot targets that are used. For each entry in the list
   a corresponding
   set of ``global.bootchooser.<targetname>.<variablename>`` variables must exist.
+  Defaults to an empty string.
 ``global.bootchooser.last_chosen``
   *bootchooser* sets this to the boot target that was chosen on last boot (index).
 
-- 
2.39.5



