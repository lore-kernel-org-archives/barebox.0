Delivery-date: Mon, 31 Mar 2025 14:50:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEbG-006ZTS-1h
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 14:50:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEbF-0008SE-D4
	for lore@pengutronix.de; Mon, 31 Mar 2025 14:50:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hmjoj8Egbw37ajfZDSkZw2GVYqHETxp3CXncPrhVe18=; b=vAlJktHjC2srM6tK/i3E5jnsHZ
	PvSeYatxVqGahaB9yIoj1fKjRglCUYVyC/XPUE2MdKYHrSE6WyykxT5aWNrCbT6yfLk0wJTHCuSZ8
	j6JyutHknFYMEylDRbEKZLl9skuDy5rNdsqpnJyUCnfCEdl5UzWJaQV/SeeA7hUM3fxMhrm+0hM64
	Css9ET1Mcs3a3lDD6ofL5iWicNAwfuSkZzARYRI4hpsJDE2I6DArHBQFh5/jZLVkou/Zlv4F8MRcP
	t4eVgxAVpOWfSMuq2DCqtl8KCnOrduRRLNymMHsWbq/diuEGWkptkxLyC1C9GdKfeELtQ2+0GXNN7
	qhl+EigA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEam-00000000OG9-1MdF;
	Mon, 31 Mar 2025 12:50:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEac-00000000O5q-3ghZ
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 12:50:10 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1tzEaa-0007tJ-7w; Mon, 31 Mar 2025 14:50:04 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>,
	Bastian Krause <bst@pengutronix.de>
Date: Mon, 31 Mar 2025 14:49:24 +0200
Message-Id: <20250331124932.901033-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_055007_104938_A4A87BB9 
X-CRM114-Status: GOOD (  20.63  )
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
Subject: [PATCH 1/9] doc: bootchooser: drop article before bootchooser
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

"bootchooser" is the name of a framework, so drop the "the" before
bootchooser. This aligns with standard naming conventions for technical
terms and makes the section consistent with other parts already using
bootchooser without article.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 36 +++++++++++++++---------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index 1a2ce70bb2f..e318b245c14 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -8,15 +8,15 @@ kernels and multiple root file systems. The *bootchooser* framework provides
 the building blocks to model different use cases without the need to start
 from scratch over and over again.
 
-The *bootchooser* works on abstract boot targets, each with a set of properties
+*Bootchooser* works on abstract boot targets, each with a set of properties
 and implements an algorithm which selects the highest priority target to boot.
 
-To make the *bootchooser* work requires a fixed set of configuration parameters
+Making *bootchooser* work requires a fixed set of configuration parameters
 and a storage backend for saving status information.
 Currently supported storage backends are either nv variables or the
 barebox *state* framework.
 
-The *Bootchooser* itself is executed as a normal barebox boot target, i.e. one
+*Bootchooser* itself is executed as a normal barebox boot target, i.e. one
 can start it via::
 
   boot bootchooser
@@ -24,7 +24,7 @@ can start it via::
 or by e.g. setting ``boot.default`` to ``bootchooser``.
 
 .. note:: As ``boot.default`` accepts multiple values, it can also be used to
-  specify a fallback boot target in case the bootchooser fails booting, e.g.
+  specify a fallback boot target in case bootchooser fails booting, e.g.
   ``bootchooser recovery``.
 
 Bootchooser Targets
@@ -88,17 +88,17 @@ controlled by the ``global.bootchooser.reset_attempts`` variable. It holds a
 list of space-separated flags. Possible values are:
 
 - empty: counters will never be reset
-- ``power-on``: When the bootchooser starts and a power-on reset
+- ``power-on``: When bootchooser starts and a power-on reset
   (``$global.system.reset="POR"``) is detected, the ``remaining_attempts``
   counters of all enabled targets are reset to their defaults.
   This means after a power cycle all boot targets will be tried again for the configured number of retries.
-- ``reset``: When the bootchooser starts and a generic reset
+- ``reset``: When bootchooser starts and a generic reset
   (``$global.system.reset="RST"``) is detected, the ``remaining_attempts``
   counters of all enabled targets are reset to their defaults.
   This means that, if the systems reports a generic restart, the
   ``remaining_attempts`` counters of all enabled targets are reset to
   their defaults.
-- ``all-zero``: When the bootchooser starts and the ``remaining_attempts``
+- ``all-zero``: When bootchooser starts and the ``remaining_attempts``
   counters of all enabled targets are zero, the ``remaining_attempts``
   counters of all enabled targets are reset to their defaults.
 
@@ -115,7 +115,7 @@ selection of the right boot target itself, it cannot decide if the system
 booted successfully on its own.
 
 In case only the booted system itself knows when it is in a good state,
-it can report this to the bootchooser from Linux userspace using the
+it can report this to bootchooser from Linux userspace using the
 *barebox-state* tool from the dt-utils_ package.::
 
   barebox-state [-n <state variable set>] -s [<prefix>.]<target>.remaining_attempts=<reset-value>
@@ -216,7 +216,7 @@ kernel with its corresponding devicetree via boot spec (refer to
 :ref:`Bootloader Spec <bootloader_spec>` for further details).
 
 Either device can be booted with the :ref:`boot <command_boot>` command command,
-and thus can be used by the *bootchooser* and we can start to configure the
+and thus can be used by *bootchooser* and we can start to configure the
 *bootchooser* variables.
 
 The following example shows how to initialize two boot targets, ``system1`` and
@@ -324,7 +324,7 @@ Deployment
 Recovery
 ^^^^^^^^
 
-Done by 'recovery' boot target which is booted after the *bootchooser* falls
+Done by 'recovery' boot target which is booted after *bootchooser* falls
 through due to the lack of bootable targets. This boot target can be:
 
 - a system that will be booted as recovery.
@@ -358,7 +358,7 @@ Deployment
 Recovery
 ^^^^^^^^
 
-Done by 'recovery' boot target which is booted after the *bootchooser* falls
+Done by 'recovery' boot target which is booted after *bootchooser* falls
 through due to the lack of bootable targets. This target can be:
 
 - a system that will be booted as recovery.
@@ -369,13 +369,13 @@ through due to the lack of bootable targets. This target can be:
 Using the *State* Framework as Backend for Run-Time Variable Data
 -----------------------------------------------------------------
 
-Usually the *bootchooser* modifies its data in global variables which are
+Usually *bootchooser* modifies its data in global variables which are
 connected to :ref:`non volatile variables <config_device>`.
 
 Alternatively the :ref:`state_framework` can be used for this data, which
 allows to store this data redundantly in some kind of persistent memory.
 
-In order to let the *bootchooser* use the *state* framework for its storage
+In order to let *bootchooser* use the *state* framework for its storage
 backend, configure the ``bootchooser.state_prefix`` variable with the *state*
 variable set instance name.
 
@@ -392,7 +392,7 @@ At barebox run-time this will result in a *state* variable set instance called
 *some_kind_of_state*. You can also store variables unrelated to *bootchooser* (a
 serial number, MAC address, …) in it.
 
-Extending this *state* variable set by information required by the *bootchooser*
+Extending this *state* variable set by information required by *bootchooser*
 is simply done by adding so called 'boot targets' and optionally one ``last_chosen``
 node. It then looks like:
 
@@ -463,11 +463,11 @@ used to setup the corresponding run-time environment variables in the
 
 .. important:: It is important to provide a ``default`` value for each variable
    for the case when the *state* variable set backend memory is uninitialized.
-   This is also true if default values through the *bootchooser's* environment
+   This is also true if default values through *bootchooser's* environment
    variables are defined (e.g. ``bootchooser.default_attempts``,
    ``bootchooser.default_priority`` and their corresponding boot target specific
-   variables). The former ones are forwarded to the *bootchooser* to make a
-   decision, the latter ones are used by the *bootchooser* to make a decision
+   variables). The former ones are forwarded to *bootchooser* to make a
+   decision, the latter ones are used by *bootchooser* to make a decision
    the next time.
 
 Example
@@ -550,7 +550,7 @@ regular *bootchooser* boot targets updating is done like:
 - Reboot.
 - If necessary update the now inactive, not yet updated boot target the same way.
 
-One way of updating systems is using RAUC_ which integrates well with the *bootchooser*
+One way of updating systems is using RAUC_ which integrates well with *bootchooser*
 in barebox.
 
 .. _RAUC: https://rauc.readthedocs.io/en/latest/
-- 
2.39.5



