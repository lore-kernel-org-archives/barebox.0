Delivery-date: Fri, 29 Sep 2023 10:55:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qm9HW-00G5Ym-Uc
	for lore@lore.pengutronix.de; Fri, 29 Sep 2023 10:55:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qm9HU-0001pA-IG
	for lore@pengutronix.de; Fri, 29 Sep 2023 10:55:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GZygMANaMX5ypG5pDsYgTPQ1MP+luKZqG4gmUcS6JsY=; b=U79ar0S2TU32H5ORkzAc15gHiA
	yehSTp+/M/R6QqN7sWKDfN2REEiSFURsQHB/yasFhtmQ3UunjHDQZ6BEfhlzPFzjNaN3a6hX+lbjO
	5H8z1P0XxK5eC9swrlP5aNLlhsjS51Z679eHAhtAfOBVhS1DnJiBmS9FJJx8Bj/LTOc2iOrcqnY6t
	x/lIcD2TRbhWke38amILoDvlvm298MvWunhMnKSP1a2t1nWcRap3yXnoEiUgULAUMIYLiMlNKz6uc
	DoV3j+HEhubisNSjjC9ksqlpMS8nBQIBXgJuGDlPzSZZ1vwgJPGetXAHIdylLXjvVWc1nAi7Osqo3
	21mzztZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qm9Fq-007PfC-2r;
	Fri, 29 Sep 2023 08:53:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qm9Fl-007PeX-2t
	for barebox@lists.infradead.org;
	Fri, 29 Sep 2023 08:53:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <has@pengutronix.de>)
	id 1qm9Fi-0001aI-Vh; Fri, 29 Sep 2023 10:53:38 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <has@pengutronix.de>)
	id 1qm9Fi-009lve-Iy; Fri, 29 Sep 2023 10:53:38 +0200
Received: from has by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <has@pengutronix.de>)
	id 1qm9Fi-007x0a-7u; Fri, 29 Sep 2023 10:53:38 +0200
From: Holger Assmann <h.assmann@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Holger Assmann <h.assmann@pengutronix.de>
Date: Fri, 29 Sep 2023 10:53:37 +0200
Message-Id: <20230929085337.1894936-1-h.assmann@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230929_015343_919720_BFFEB8A3 
X-CRM114-Status: GOOD (  27.80  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] bootchooser: honour reset source
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With some systems it is possible to determine the source that triggered
the most recent reset (see $global.system.reset).

This information can be used at the subsequent boot to evaluate whether
the respective target works as intended by defining reset reasons that
are to be used exclusively. Any other reset source would therefore be
considered to be bad, which should lead to a decrease of the counter
variable "remaining_attempts" for that target.
Until now, such an investigation and the consecutive decision of marking
the last boot successful has either to be done by a custom script in
barebox or by a service that runs on the eventually booted operating
system.

Since (if supported by the system) analyzing the reset reason is
probably the most obvious factor for the marking decision, we might as
well integrate the functionality in bootchooser directly.

This patch therefore introduces "$global.bootchooser.good_reset_source"
as a new variable in which good reset sources can be listed to be
matched against the actual reset reason.

Note: In order to allow for proper matching of the reset source with the
possible good reasons, a bitmask is used. To make this work, we had to
make the variable "reset_src_names[]" accessible from outside of
"reset_source.c". It has hence been moved into the respective header
file where it now fittingly resides alongside "reset_src_type".

Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>
---

Changes v1 -> v2:

1. changed matching mechanism of reset sources to an approach that utilizes a
   bitmask and "globalvar_add_simple_bitmask", instead of
   "globalvar_add_simple_string" and string comparison
2. properly handle "last_boot_successful" as boolean
3. removed some trailing whitespaces

---
 Documentation/user/bootchooser.rst | 67 +++++++++++++++++++++++++-----
 common/bootchooser.c               | 21 ++++++++++
 common/reset_source.c              | 12 ------
 include/reset_source.h             | 12 ++++++
 4 files changed, 90 insertions(+), 22 deletions(-)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index db0a4f8898..4618d7cda0 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -108,6 +108,20 @@ While the bootchooser algorithm handles attempts decrementation, retries and
 selection of the right boot target itself, it cannot decide if the system
 booted successfully on its own.
 
+However, for systems where barebox is able to detect the actual :ref:`reset reason <reset_reason>`
+(e.g. WDG), bootchooser will look for matches in ``global.bootchooser.good_reset_sources``.
+This variable may contain a space-separated list of those reset reasons that are
+considered *good*. If a matching entry is found, bootchooser will mark the last
+boot successful.
+
+This marking can also be performed manually or from within a script by calling
+the barebox :ref:`bootchoser command <command_bootchooser>`::
+
+  bootchooser -s
+
+Marking the preceding boot successful will result in the ``remaining_attempts`` counter of the
+*last chosen* slot to be reset to its default value (``reset_attempts``).
+
 In case only the booted system itself knows when it is in a good state,
 it can report this to the bootchooser from Linux userspace using the
 *barebox-state* tool from the dt-utils_ package.::
@@ -116,16 +130,6 @@ it can report this to the bootchooser from Linux userspace using the
   barebox-state -n system_state -s bootstate.system1.remaining_attempts=3
   barebox-state -s system1.remaining_attempts=3
 
-If instead the bootchooser can detect a failed boot itself using the
-:ref:`reset reason <reset_reason>` (WDG), one can mark the boot successful
-using the barebox :ref:`bootchoser command <command_bootchooser>`::
-
-  bootchooser -s
-
-to mark the last boot successful.
-This will reset the ``remaining_attempts`` counter of the *last chosen* slot to
-its default value (``reset_attempts``).
-
 
 .. _dt-utils: https://git.pengutronix.de/cgit/tools/dt-utils
 
@@ -147,6 +151,8 @@ options not specific to any boot target.
   specific variable of the same name.
 ``global.bootchooser.reset_attempts``
   Already described in :ref:`Bootchooser Algorithm <bootchooser,algorithm>`
+``bootchooser.good_reset_sources``
+  Already described in :ref:`Bootchooser Algorithm <bootchooser,algorithm>`
 ``global.bootchooser.reset_priorities``
   A space-separated list of events that cause *bootchooser* to reset the priorities of
   all boot targets. Possible values:
@@ -268,6 +274,7 @@ are reset to their defaults and the first boot target is tried again.
 Settings
 ^^^^^^^^
 - ``global.bootchooser.reset_attempts="all-zero"``
+- ``global.bootchooser.good_reset_sources=""``
 - ``global.bootchooser.reset_priorities="all-zero"``
 - ``global.bootchooser.disable_on_zero_attempts=0``
 - ``global.bootchooser.retry=1``
@@ -302,6 +309,7 @@ Settings
 ^^^^^^^^
 
 - ``global.bootchooser.reset_attempts=""``
+- ``global.bootchooser.good_reset_sources=""``
 - ``global.bootchooser.reset_priorities=""``
 - ``global.bootchooser.disable_on_zero_attempts=0``
 - ``global.bootchooser.retry=1``
@@ -337,6 +345,7 @@ Settings
 ^^^^^^^^
 
 - ``global.bootchooser.reset_attempts="power-on"``
+- ``global.bootchooser.good_reset_sources=""``
 - ``global.bootchooser.reset_priorities=""``
 - ``global.bootchooser.disable_on_zero_attempts=1``
 - ``global.bootchooser.retry=1``
@@ -358,6 +367,44 @@ through due to the lack of bootable targets. This target can be:
 - a system that will be booted as recovery.
 - a barebox script that will be started.
 
+Scenario 4
+##########
+
+- a system with multiple boot targets
+- one recovery system
+- detection of the :ref:`cause of the preceding reset <reset_reason>` is
+  supported by the hardware
+
+  - POR (Power On Reset) and RST (ReSeT) are considered *good* causes
+
+Booting a boot target three times without success disables it.
+
+Settings
+^^^^^^^^
+
+- ``global.bootchooser.reset_attempts=""``
+- ``global.bootchooser.good_reset_sources="POR RST"``
+- ``global.bootchooser.reset_priorities=""``
+- ``global.bootchooser.disable_on_zero_attempts=1``
+- ``global.bootchooser.retry=1``
+- ``global.boot.default="bootchooser recovery"``
+- bootchooser marks as good.
+
+Deployment
+^^^^^^^^^^
+
+#. barebox or flash robot fills all boot targets with valid systems.
+#. barebox or flash robot marks boot targets as good.
+
+Recovery
+^^^^^^^^
+
+Done by 'recovery' boot target which is booted after the *bootchooser* falls
+through due to the lack of bootable targets. This target can be:
+
+- a system that will be booted as recovery.
+- a barebox script that will be started.
+
 .. _bootchooser,state_framework:
 
 Using the *State* Framework as Backend for Run-Time Variable Data
diff --git a/common/bootchooser.c b/common/bootchooser.c
index eb3dda52ab..b3499332be 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -86,6 +86,7 @@ enum reset_priorities {
 };
 
 static unsigned long reset_priorities;
+static unsigned long good_reset_src_type;
 
 static int bootchooser_target_ok(struct bootchooser_target *target, const char **reason)
 {
@@ -348,6 +349,7 @@ struct bootchooser *bootchooser_get(void)
 {
 	struct bootchooser *bc;
 	struct bootchooser_target *target;
+	enum reset_src_type type = reset_source_get();
 	char *targets, *str, *freep = NULL, *delim;
 	int ret = -EINVAL, id = 1;
 	uint32_t last_chosen;
@@ -451,6 +453,19 @@ struct bootchooser *bootchooser_get(void)
 		}
 	}
 
+	if (!last_boot_successful &&
+		test_bit(type, &good_reset_src_type)) {
+		/*
+		 * If there are reset sources defined that are considered good
+		 * and the reset source detected by the system fits an entry of
+		 * that list, we do not want to further decrement the
+		 * remaining_attempts counter.
+		 */
+  		pr_info("Good Reset '%s', marking last boot successful\n",
+  				reset_source_to_string(type));
+		last_boot_successful = true;
+  	}
+
 	ret = getenv_u32(bc->state_prefix, "last_chosen", &last_chosen);
 	if (!ret && last_chosen > 0) {
 		bc->last_chosen = bootchooser_target_by_id(bc, last_chosen);
@@ -932,6 +947,8 @@ static int bootchooser_init(void)
 	globalvar_add_simple_string("bootchooser.state_prefix", &state_prefix);
 	globalvar_add_simple_int("bootchooser.default_attempts", &global_default_attempts, "%u");
 	globalvar_add_simple_int("bootchooser.default_priority", &global_default_priority, "%u");
+	globalvar_add_simple_bitmask("bootchooser.good_reset_sources", &good_reset_src_type,
+			          reset_src_names, ARRAY_SIZE(reset_src_names));
 	globalvar_add_simple_bitmask("bootchooser.reset_attempts", &reset_attempts,
 				  reset_attempts_names, ARRAY_SIZE(reset_attempts_names));
 	globalvar_add_simple_bitmask("bootchooser.reset_priorities", &reset_priorities,
@@ -951,6 +968,10 @@ BAREBOX_MAGICVAR(global.bootchooser.targets,
 		 "bootchooser: Space separated list of target names");
 BAREBOX_MAGICVAR(global.bootchooser.default_attempts,
 		 "bootchooser: Default number of attempts for a target");
+BAREBOX_MAGICVAR(global.bootchooser.reset_attempts,
+		"bootchooser: Choose condition to reset number of attempts for all targets ('power-on', 'all-zero')");
+BAREBOX_MAGICVAR(global.bootchooser.good_reset_sources,
+		"bootchooser: Space separated list of good reset sources consulted to not decrease remainin attempts counter");
 BAREBOX_MAGICVAR(global.bootchooser.default_priority,
 		 "bootchooser: Default priority for a target");
 BAREBOX_MAGICVAR(global.bootchooser.state_prefix,
diff --git a/common/reset_source.c b/common/reset_source.c
index f28be90dcb..2016329e5e 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -10,18 +10,6 @@
 #include <globalvar.h>
 #include <reset_source.h>
 
-static const char * const reset_src_names[] = {
-	[RESET_UKWN] = "unknown",
-	[RESET_POR] = "POR",
-	[RESET_RST] = "RST",
-	[RESET_WDG] = "WDG",
-	[RESET_WKE] = "WKE",
-	[RESET_JTAG] = "JTAG",
-	[RESET_THERM] = "THERM",
-	[RESET_EXT] = "EXT",
-	[RESET_BROWNOUT] = "BROWNOUT",
-};
-
 static enum reset_src_type reset_source;
 static unsigned int reset_source_priority;
 static int reset_source_instance;
diff --git a/include/reset_source.h b/include/reset_source.h
index 3766208b6d..e55cc2fadc 100644
--- a/include/reset_source.h
+++ b/include/reset_source.h
@@ -21,6 +21,18 @@ enum reset_src_type {
 	RESET_BROWNOUT,	/* Brownout Reset */
 };
 
+static const char * const reset_src_names[] = {
+	[RESET_UKWN] = "unknown",
+	[RESET_POR] = "POR",
+	[RESET_RST] = "RST",
+	[RESET_WDG] = "WDG",
+	[RESET_WKE] = "WKE",
+	[RESET_JTAG] = "JTAG",
+	[RESET_THERM] = "THERM",
+	[RESET_EXT] = "EXT",
+	[RESET_BROWNOUT] = "BROWNOUT",
+};
+
 #ifdef CONFIG_RESET_SOURCE
 
 enum reset_src_type reset_source_get(void);
-- 
2.39.2



