Delivery-date: Wed, 20 Aug 2025 16:08:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojU8-002dio-2D
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 16:08:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojU7-0001mI-10
	for lore@pengutronix.de; Wed, 20 Aug 2025 16:08:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fip+XafetleDTpcyeu2nNbc7MRfJgRH36Ccbg9Q18p4=; b=nsF9SYbAR1z6UU+TezoAdfn7gR
	Q016C/WyK5kG2BdTdyDm3jA5SFHLueyl31AoBVJz2E92GJCJ00QJomPG/aY86bUNuntYSfIPFsDG5
	TWg14lih6omvvTt+4Q50/B6GrO0eZmtPBL2nN7Wqe552aQv7KAUGja7Y8V2rjPWroztYc3x+S3PGO
	L0atFjKgYpvA5ROO73ChGoXjqNDmJkdkdQmdbHiL0vMBE+FKMPmKYeQMswk9fAtLJFbt1P0Ex1AAe
	ATra3gIXWRBvQeZszGH+//BMYSwcyFD/BlIFW32lGzdTSbKbhR9/WVk6tEfA7lcxmbVN8/Ygzm8o4
	k8EsQl+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uojTf-0000000DwhT-1jv6;
	Wed, 20 Aug 2025 14:07:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoihU-0000000Dju1-1813
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 13:18:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihL-0000fz-0x; Wed, 20 Aug 2025 15:17:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-001FpD-1w;
	Wed, 20 Aug 2025 15:17:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-004jSI-1d;
	Wed, 20 Aug 2025 15:17:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 Aug 2025 15:17:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250820-security-policies-v1-9-76fde70fdbd8@pengutronix.de>
References: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
In-Reply-To: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755695870; l=10849;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=FWj1LMHRa2DN/Gs/jWG0JgNv+EgeTbNydXd59ubc+Ko=;
 b=ze7bXAiBL8TjvdQG3v3aQevhS++v8DfpUeXfqkOEzvQTiLgSQrHzjQX4ixc/eiDKLmnUnk3OK
 yfXeFgDkPTSCzzLhRbBOQDG0aokjUUzWkuu7CCQxHF6qtu0I2m7MLQp
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_061800_476257_7B12D0D1 
X-CRM114-Status: GOOD (  23.66  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Ahmad Fatoum <a.fatoum@barebox.org>
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
Subject: [PATCH 09/24] docs: security-policies: add documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Let's add some first documentation for the newly added security policy
support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devel/devel.rst             |   1 +
 Documentation/devel/security-policies.rst |  96 ++++++++++++++++++++++++
 Documentation/user/security-policies.rst  | 121 ++++++++++++++++++++++++++++++
 Documentation/user/user-manual.rst        |   1 +
 Makefile                                  |   2 +-
 security/Kconfig.policy                   |   4 +-
 6 files changed, 222 insertions(+), 3 deletions(-)

diff --git a/Documentation/devel/devel.rst b/Documentation/devel/devel.rst
index b90805263bbd669891979b3323ba3797b4e191b1..84074d142e031ef7bde515151e2d513d215f3293 100644
--- a/Documentation/devel/devel.rst
+++ b/Documentation/devel/devel.rst
@@ -13,6 +13,7 @@ Contents:
    troubleshooting
    filesystems
    background-execution
+   security-policies
    project-ideas
    fuzzing
 
diff --git a/Documentation/devel/security-policies.rst b/Documentation/devel/security-policies.rst
new file mode 100644
index 0000000000000000000000000000000000000000..8d0b5e7fde37f1893b8ddb8acd29f7eed9fc5a6c
--- /dev/null
+++ b/Documentation/devel/security-policies.rst
@@ -0,0 +1,96 @@
+.. _develop_security-policies:
+
+Security Policies (Developer Manual)
+====================================
+
+Overview
+--------
+
+This document describes how to define new SConfig symbols and integrate them
+into Barebox security policies. SConfig uses the same backend as Kconfig, and
+its configuration files live alongside Kconfig files (e.g. ``common/Sconfig``).
+
+Key principles:
+
+- Except for the name, symbols are always ``bool``.
+- Policies are board-specific and described in ``.sconfig`` files at build-time.
+- Every policy is complete and no implicit defaults are applied by mere building
+- Policy ``.sconfig`` files are post-processed into ``.sconfig.c`` files and
+  then compiled and linked into the final barebox binary.
+
+Creating New Symbols
+--------------------
+
+1. **Add a new symbol** to the appropriate ``Sconfig`` file, such as ``common/Sconfig``:
+
+   .. code-block:: kconfig
+
+      config ENV_HANDLING
+          bool "Allow persisting and loading the environment from storage"
+          depends on $(kconfig-enabled ENV_HANDLING)
+
+2. **Reference it in code** using:
+
+   .. code-block:: c
+
+      #include <security/config.h>
+
+      if (!IS_ALLOWED(SCONFIG_ENV_HANDLING))
+          return -EPERM;
+
+3. **Update policies**:
+
+   Every existing ``.sconfig`` policy must define a value for the new symbol
+   as there are no implicit defaults to ensure every policy explicitly encodes
+   all options in accordance with its security requirements.
+
+   Example in ``myboard-lockdown.sconfig``:
+
+   .. code-block:: none
+
+      SCONFIG_ENV_HANDLING=n
+
+   And in ``myboard-devel.sconfig``:
+
+   .. code-block:: none
+
+      SCONFIG_ENV_HANDLING=y
+
+Linking Policy Files
+--------------------
+
+Policies can be added to the build using ``policy-y`` in the board’s
+Makefile:
+
+.. code-block:: make
+
+   policy-y += myboard-lockdown.sconfig
+
+As policies are enforced to be complete, they may require resynchronization
+(e.g., with ``make olddefconfig``) if the config changes. A build failure
+will alert the user to this fact.
+
+``virt32_secure_defconfig`` is maintained as reference configuration for
+trying out security policies and that it's buildable is ensured by CI.
+
+Tips for Symbol Design
+----------------------
+
+- Avoid naming symbols after board names. Favor functionality.
+- Prefer giving Sconfig symbols the same name as Kconfig symbols, when they
+  address the same goal, but at runtime instead of build-time.
+- When possible, reuse logic in core code by wrapping around
+  ``IS_ALLOWED()`` checks.
+
+Validation & Maintenance
+------------------------
+
+Always run ``make security_olddconfig`` for the security policy reference
+configuration ``virt32_policy_defconfig``::
+
+  export ARCH=arm
+  export CROSS_COMPILE=...
+  make virt32_policy_defconfig
+  make security_olddefconfig
+
+CI also checks this configuration and verifies that it's up-to-date.
diff --git a/Documentation/user/security-policies.rst b/Documentation/user/security-policies.rst
new file mode 100644
index 0000000000000000000000000000000000000000..94b470ee693deb0688b0d61128f5257fa412e403
--- /dev/null
+++ b/Documentation/user/security-policies.rst
@@ -0,0 +1,121 @@
+.. _use_security-policies:
+
+Security Policies (User Manual)
+===============================
+
+Overview
+--------
+
+Barebox supports structured security configuration through **security policies**,
+a runtime configuration mechanism that allows switching between multiple
+predefined security policies (e.g. ``lockdown``, ``devel``),
+depending on operational requirements.
+
+This replaces ad-hoc board code with a clean, reproducible, and
+auditable configuration-based model.
+
+Concepts
+--------
+
+- **SConfig**: A configuration system using the same backend as
+  Kconfig, designed for **runtime security policies**.
+- **Policies**: Named configurations like ``myboard-lockdown.sconfig``,
+  ``myboard-open.sconfig`` specific to each board.
+
+Usage
+-----
+
+1. **Configure a policy** using menuconfig (or another frontend):
+
+   .. code-block:: shell
+
+      make KPOLICY=arch/arm/boards/myboard/myboard-lockdown.sconfig security_oldconfig
+      make security_menuconfig # Iterates over all policies
+
+2. **Configuration files** (e.g. ``myboard-lockdown.sconfig``) are in Kconfig
+   format with ``SCONFIG_``-prefixed entries.
+
+3. **Build integration**:
+
+   The sconfig files for the board are placed into the ``security/``
+   directory in the source tree and their relative file names
+   (i.e., with the ``security/`` prefix) are added to
+   ``CONFIG_SECURITY_POLICY_PATH``.
+
+   Alternatively, policies can also be be referenced in a board's
+   Makefile::
+
+   .. code-block:: make
+
+      lwl-y       += lowlevel.o
+      obj-y       += board.o
+      policy-y    += myboard-lockdown.sconfig myboard-devel.sconfig
+
+   This latter method can be useful when building multiple boards in
+   the same build, but with different security policies.
+
+4. **Registration**:
+
+   Policies added with ``CONFIG_SECURITY_POLICY_PATH`` are automatically
+   registered for all enabled boards.
+
+   Policies added with policy-y need to be explicitly added by symbol
+   to the set of registered policies in board code:
+
+   .. code-block:: c
+
+     #include <security/policy.h>
+
+     security_policy_add(myboard_lockdown)
+     security_policy_add(myboard_devel)
+
+5. **Runtime selection**:
+
+   In board code, switch to a policy by name:
+
+   .. code-block:: c
+
+     #include <security/policy.h>
+
+     security_policy_select("lockdown");
+
+Trying it out
+-------------
+
+``virt32_secure_defconfig`` is the current reference platform for security
+policy development and evaluation. ``images/barebox-dt-2nd.img`` that results
+from building it can be passed as argument to ``qemu-system-arm -M virt -kernel``.
+
+The easiest way to do this is proabably installing labgrid and running
+``pytest --interactive`` after having built the config.
+
+Differences from Kconfig
+------------------------
+
++-------------------------+------------------------------+-----------------------------+
+| Feature                 | Kconfig                      | SConfig                     |
++=========================+==============================+=============================+
+| Purpose                 | Build-time configuration     | Runtime security policy     |
++-------------------------+------------------------------+-----------------------------+
+| File name               | .config                      | ${policy}.sconfig           |
++-------------------------+------------------------------+-----------------------------+
+| policies per build      | One                          | Multiple                    |
++-------------------------+------------------------------+-----------------------------+
+| Symbol types            | bool, int, string, ... etc.  | bool only                   |
++-------------------------+------------------------------+-----------------------------+
+| Symbol dependencies     | Kconfig symbols              | Both Kconfig and Sconfig    |
+|                         |                              | symbols                     |
++-------------------------+------------------------------+-----------------------------+
+
+Best Practices
+--------------
+
+- Maintain all ``.sconfig`` files under version control,
+  either as part of the barebox patch stack or in your BSP
+
+- Document reasoning when changing every single security option
+  (even when doing ``security_olddefconfig``).
+
+- Avoid logic duplication in board code — rely on SConfig conditionals.
+
+- Name policies meaningfully: e.g. ``lockdown``, ``tamper``, ``return``.
diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index ce0792000a3ce68aa3b9dd2ce685ef7b0f40a2d5..cb01721863ddfb133e331487ebb1c6206e4d704c 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -29,6 +29,7 @@ Contents:
    bootchooser
    remote-control
    security
+   security-policies
    reset-reason
    system-reset
    state
diff --git a/Makefile b/Makefile
index 6027b5c37c82a99d1e9518edb790e9934378afab..49658e5fe28f913e4c12b9dd5b52fb91cc19a79a 100644
--- a/Makefile
+++ b/Makefile
@@ -1215,7 +1215,7 @@ security_%config: collect-policies $(KPOLICY.tmp) FORCE
 		$(@:security_%=%),$p.tmp))
 ifeq ($(KPOLICY_TMPUPDATE),)
 	+$(Q)$(foreach p, $(KPOLICY), \
-		cp 2>/dev/null $p.tmp $(call resolve-srctree,$p) || true;)
+		cp 2>/dev/null $p.tmp $(call resolve-srctree,$p);)
 endif
 
 quiet_cmd_sconfigpost = SCONFPP $@
diff --git a/security/Kconfig.policy b/security/Kconfig.policy
index bf938a9f3dd87fc21009f0260f3cf8be7937bd36..afe1c17735edd4387c6b0b88b0429c51ea52dcac 100644
--- a/security/Kconfig.policy
+++ b/security/Kconfig.policy
@@ -54,11 +54,11 @@ config SECURITY_POLICY_INIT
 	  the restrictions if needed instead of the other way round.
 
 choice
-	prompt "Initial Security Policy"
+	prompt "Behavior on missing security policy"
 	default SECURITY_POLICY_DEFAULT_PERMISSIVE
 
 config SECURITY_POLICY_DEFAULT_PERMISSIVE
-	bool "Permissive by default"
+	bool "Permissive"
 	select HAS_INSECURE_DEFAULTS
 	help
 	  In absence of a selected security policy, everything is allowed.

-- 
2.39.5



