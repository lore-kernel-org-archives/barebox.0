Delivery-date: Thu, 14 Aug 2025 15:54:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYPY-000WhJ-1D
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 15:54:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYPW-0005qC-3s
	for lore@pengutronix.de; Thu, 14 Aug 2025 15:54:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kttH63x13DuoP6KVkEAbzXMarTkzTzJTlyuSJKv22xQ=; b=UWbO/tV7WVsHbV4iFlvSIwMk9w
	kXKLtJGuEpq5Zm1rkTE1p5bbgqUSx3w+gPNFXmf4ZOZA9fTFn5r97VX8O1PK82ibflqRwzDPBUi1N
	SVN90eFD6LYS7aTMzGEGQZc43rjDgWUhHOEMfj2jitQdrGDjVxkj+uONldQnGafcvmfT5LQCRWeLJ
	4uawpd0zxzxkyUCbYitVSeNQIBLJojE/xZNVVQ5TczqUiqVUMiFBXUd5P0WOWyj28x7seMEPKrafH
	10q5ZlNvb4jYReE3r1aBr0ZR2XVODdW2lCY0lUg00iJf9lpQu3eZPgLGymY56KWZmpvgUhy90+HD1
	y8HiLUoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umYP6-0000000H7Yu-1lRK;
	Thu, 14 Aug 2025 13:54:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umXg2-0000000GvYF-1Gn1
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 13:07:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfd-0006HO-22; Thu, 14 Aug 2025 15:07:05 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-000GH8-1g;
	Thu, 14 Aug 2025 15:07:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-00Gwpv-1N;
	Thu, 14 Aug 2025 15:07:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Aug 2025 15:06:54 +0200
Message-Id: <20250814130702.4039241-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
References: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_060730_497298_954F5478 
X-CRM114-Status: GOOD (  22.24  )
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
Subject: [PATCH RFC 09/17] docs: security-policies: add documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Let's add some first documentation for the newly added security policy
support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devel/devel.rst             |   1 +
 Documentation/devel/security-policies.rst |  89 +++++++++++++++++
 Documentation/user/security-policies.rst  | 110 ++++++++++++++++++++++
 Documentation/user/user-manual.rst        |   1 +
 4 files changed, 201 insertions(+)
 create mode 100644 Documentation/devel/security-policies.rst
 create mode 100644 Documentation/user/security-policies.rst

diff --git a/Documentation/devel/devel.rst b/Documentation/devel/devel.rst
index b90805263bbd..84074d142e03 100644
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
index 000000000000..af2faa7352fe
--- /dev/null
+++ b/Documentation/devel/security-policies.rst
@@ -0,0 +1,89 @@
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
+      if (!IS_ALLOWS(SCONFIG_ENV_HANDLING))
+          return -EPERM;
+
+3. **Update policies**:
+
+   Every existing ``.sconfig`` policy must define a value for the new symbol
+   as there are no implicit defaults to ensure every policy explicitly encodes
+   all options in accordance with its security requirements.
+
+   Example in ``lockdown.sconfig``:
+
+   .. code-block:: none
+
+      SCONFIG_ENV_HANDLING=n
+
+   And in ``devel.sconfig``:
+
+   .. code-block:: none
+
+      SCONFIG_ENV_HANDLING=y
+
+Linking Policy Files
+--------------------
+
+Policies must be added to the build using ``policy-y`` in the board’s
+Makefile:
+
+.. code-block:: make
+
+   policy-y += lockdown.sconfig
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
index 000000000000..b1002285b414
--- /dev/null
+++ b/Documentation/user/security-policies.rst
@@ -0,0 +1,110 @@
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
+- **Policies**: Named configurations like ``lockdown.sconfig``,
+  ``open.sconfig`` specific to each board.
+
+Usage
+-----
+
+1. **Configure a policy** using menuconfig (or another frontend):
+
+   .. code-block:: shell
+
+      make KPOLICY=arch/arm/boards/myboard/lockdown.sconfig security_oldconfig
+      make sercurity_menuconfig # Iterates over all policies
+
+2. **Configuration files** (e.g. ``lockdown.sconfig``) are in Kconfig
+   format with ``SCONFIG_``-prefixed entries.
+
+3. **Build integration**:
+
+   The sconfig files for the board are placed into the ``security/``
+   directory in the source tree and their file names (without slashes)
+   are added to ``CONFIG_SECURITY_POLICY_PATH``.
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
+     sconfig_set_policy("lockdown");
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
index ce0792000a3c..cb01721863dd 100644
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
-- 
2.39.5



