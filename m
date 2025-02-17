Delivery-date: Mon, 17 Feb 2025 19:23:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk5m7-003aQs-2f
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 19:23:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk5m5-0003ZK-Ve
	for lore@pengutronix.de; Mon, 17 Feb 2025 19:23:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sB8YV/tKKKnijVsafvI41xDq4HHvFbK5YGbpwKFJaJs=; b=dckoMBYfJ0OqQpnVDE/tl1x3Xk
	EAFDlGJAgjpbJzLrmCwVhjjmJc7+uohm0cJOPQRzC962/TvV1PpwV3TODtj4WFsA5w8roa9TJF9fI
	D3JaaYS7kxo+/jso+4xwFCYmHxHf3p9fdB9zBUKDfQqIPJ8frgmD5lonsGj6M1nDnRAeAfxmLzmSM
	aWadtH+kKT2mxYjhg5uWbJEPtURL37cOAROkKu23JtHMoDBBdPrst309riV3W9BBxTYxiIvjh4+VD
	FucLsipCNqlto5msiZm8BrCF0tM+v8gyvLajGcPdja/7MSLd6q+dQ0l+TGZe4Jzj5NT4O5jvs1cN8
	DSI588HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5lO-00000005af1-1Gaw;
	Mon, 17 Feb 2025 18:22:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5Z3-00000005Z8N-3BVg
	for barebox@bombadil.infradead.org;
	Mon, 17 Feb 2025 18:09:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=sB8YV/tKKKnijVsafvI41xDq4HHvFbK5YGbpwKFJaJs=; b=XtcuATXTcIYSuYYnisdBm7cv+i
	t9wA0KVWEixviwalx3sIwt/8E/TMcavv4YY4poMxAUhedEk9aIXIkdg/LpAzbEPTx0D0TtkHYi6bV
	654efddMlh2RnEDDzDaWOWQiqISDHr/IcWWJ6argMQLgtwI0EyK/phuVQmOkptAIiSWYsVdLgXai9
	9EZ4gDvwMMHm/CCeuMMY/Ku40iJoNQp1j5T9QJ/IsV8+UgSmVAUr/cj8yYVGd5Gm7NB5Y5UoyO7pl
	gd5mnzl1XgJCd/ZIkTbsU1PAqAdROUw+BFsWkoxsQiq9T6Z7llxlDs6JAf8cpEdCEtTmUJ8BMNcGi
	/8unA3fQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5Z0-00000001rl3-33JE
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 18:09:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Z0-0001Ct-8J; Mon, 17 Feb 2025 19:09:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Z0-001SKG-09;
	Mon, 17 Feb 2025 19:09:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Yz-00GcfG-35;
	Mon, 17 Feb 2025 19:09:49 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Feb 2025 19:09:49 +0100
Message-Id: <20250217180949.3961860-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250217180949.3961860-1-a.fatoum@pengutronix.de>
References: <20250217180949.3961860-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_180950_910316_D534DB51 
X-CRM114-Status: GOOD (  29.55  )
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
Subject: [PATCH v2 3/3] Documentation: user: add security consideration for using barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There are implicit assumptions around use of barebox in secure systems,
which isn't spelt out anywhere, e.g. that FIT images should be located
in raw partitions.

Let's start by writing down these security considerations.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - Add Marco's R-b
  - Fix typo in warning (Sascha)
  - Add heading for shell & environment (Sascha)
---
 Documentation/boards/imx.rst       |   2 +
 Documentation/user/security.rst    | 172 +++++++++++++++++++++++++++++
 Documentation/user/user-manual.rst |   1 +
 3 files changed, 175 insertions(+)
 create mode 100644 Documentation/user/security.rst

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index 13246599838b..b4adb55d1bea 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -119,6 +119,8 @@ correspond directly to the boot fusemap settings.
 
 See the section on :ref:`Reboot modes<reboot_mode>` for general information.
 
+.. _hab:
+
 High Assurance Boot
 ^^^^^^^^^^^^^^^^^^^
 
diff --git a/Documentation/user/security.rst b/Documentation/user/security.rst
new file mode 100644
index 000000000000..5beedfc9a5bf
--- /dev/null
+++ b/Documentation/user/security.rst
@@ -0,0 +1,172 @@
+.. _security:
+
+Security Considerations
+=======================
+
+As bootloader, barebox is often used as part of a cryptographically verified
+boot chain. Such a boot chain is only as secure as its weakest link and
+special care needs to be taken while configuring and deploying barebox.
+
+Verified Boot
+-------------
+
+In a cryptographically verified boot chain (henceforth termed "Verified Boot"),
+each boot stage must be verified by the previous boot stage before execution.
+
+At the start of the verification chain lies some hardware root of trust, most
+often a public key (or its hash) that's programmed into one-time-programmable
+(OTP) eFuses while the board is still in the factory.
+
+The SoC's mask ROM (sometime called BootROM) will consult the eFuses and
+use them to verify the first stage bootloader image. From there on, it's
+expected that every boot stage will only boot the next one after verification.
+
+Verification can take many forms:
+
+- The mask ROM provides an API to verify later images against the same key
+  used to verify the first boot stage.
+
+- If both first stage and second stage result from the same build, the first
+  stage can embed the hash of the second stage.
+
+- The boot stage has an embedded public key which is used to verify the
+  signature of the later boot stage.
+
+Ensuring barebox is verified
+----------------------------
+
+The way that barebox is verified is highly SoC-specific as it's usually done
+by the SoC mask ROM and in some cases by a different first stage bootloader
+like ARM Trusted Firmware.
+
+For some SoCs, like i.MX :ref:`High Assurance Boot <hab>`, the barebox
+build system has built-in support for invoking the necessary external tools
+to sign the boot images.  In the general case however, the signing happens
+outside the barebox build system and the integrator needs to ensure that
+the images are signed with the correct keys.
+
+In any case, each individual board must be locked down, i.e., configured to
+only boot correctly signed images.
+
+The latter is often done by writing a different set of eFuses, see for
+example the barebox :ref:`hab command <command_hab>` which does the necessary
+fusing for both HABv4 and AHAB.
+
+.. warning:: barebox commands like :ref:`hab command <command_hab>` do only
+   touch the subset of fuses relevant to most users. It's up to the integrators
+   to fuse away unneeded functionality like USB recovery or JTAG as needed.
+
+Loading firmware
+----------------
+
+In systems utilizing the ARM TrustZone, barebox is often tasked with loading
+the secure OS (Usually OP-TEE). After OP-TEE is loaded, the rest of the
+software runs in a less-privileged non-secure or "normal" world.
+
+The installation of OP-TEE (and any higher privileged firmware like ARM Trusted
+Firmware) should happen as early as possible, i.e., within the barebox
+:ref:`prebootloader <pbl>`. Delaying installation of OP-TEE means that most of
+barebox will run with elevated permission, which greatly increases the attack
+surface.
+
+In concrete terms, the deprecated ``CONFIG_BOOTM_OPTEE`` option should be
+disabled in favor of :ref:`loading OP-TEE early <optee_early_loading>`.
+
+Ensuring the kernel is verified
+-------------------------------
+
+barebox can embed one or more RSA or ECDSA public keys that it will use to
+verify signed FIT images. In a verified boot system, barebox should not
+be allowed to boot any images that have not been signed by the correct key.
+This can be enforced by setting ``CONFIG_BOOTM_FORCE_SIGNED_IMAGES=y``
+and disabling any ways that could use used to override this.
+
+Disabling the shell
+^^^^^^^^^^^^^^^^^^^
+
+While useful for development, the barebox shell can be used in creative
+ways to circumvent boot restrictions. It's thus advisable to disable
+the shell completely (``CONFIG_SHELL_NONE=y``) or make it non-interactive
+(``CONSOLE_DISABLE_INPUT=y``). This may be coupled with muxing UART RX
+pin as GPIO for maximum effectiveness.
+
+In addition, there are alternative methods of accessing the shell like
+netconsole, or fastboot. These should preferably be disabled or at least
+not activated by default.
+
+Disabling mutable environment handling
+^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+Anything done interactively by the shell can also be done automatically by
+means of init scripts in the environment. Even without shell support, the
+non-volatile variables in the environment could be used to reconfigure
+barebox in an insecure manner.
+
+A secure barebox should thus only consult the environment that it has built
+in and not parse an externally located environment.
+
+This can be enforced by disabling ``CONFIG_ENV_HANDLING``.
+This does not preclude the use of :ref:`Bootchooser` as the
+:ref:`barebox-state framework <state_framework>` can be used independently.
+
+Avoiding use of file systems
+^^^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+File systems are among the most complex parser code in barebox and a common
+source of bugs.
+Unlike Linux with its dm-verity support, barebox currently has no way to
+verify a file system before mounting it.
+
+The consequence is that in a verified boot setup, barebox should **never**
+be allowed to mount file systems.
+Especially, :ref:`bootloader spec files <bootloader_spec>` should not be used
+in verified boot setups and signed FIT images **must** be located outside
+a file system and directly in a raw partition.
+
+Configuring barebox
+-------------------
+
+To aid identification of security impact of config options, barebox provides
+two top-level security-related options:
+
+- ``CONFIG_INSECURE``: This enables convenient, but insecure, defaults.
+  Any secure system should disable this option.
+
+- ``CONFIG_HAS_INSECURE_DEFAULTS``: This is selected by options that have
+  an outsized potential of compromising security. It's recommended that
+  all configuration options that select ``CONFIG_HAS_INSECURE_DEFAULTS``
+  are disabled.
+  If not possible, special care needs to be taken in vetting the insecure
+  defaults in question.
+
+.. note:: The barebox configuration must be vetted individually according
+ to threat model. Annotating options with HAS_INSECURE_DEFAULTS is
+ a work-in-progress and is bound to be incomplete, because there is
+ no security one-size-fits-all.
+
+Compile-time configuration
+^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+Any code that's eliminated at compile-time is code that can't be exploited by
+an attacker. It's thus strongly advisable to keep a separate secure
+configuration that disables all features that are used for development and
+are not absolutely necessary for booting in the field.
+
+Run-time configuration
+^^^^^^^^^^^^^^^^^^^^^^
+
+It's sometimes desirable to retain some ability to debug locked down systems.
+While attractive, it's not recommended to retain an insecure bootloader for
+the purposes of debugging due to the risk of this bootloader being leaked.
+
+Instead, it's recommended that debugging images are signed specifically to
+target only a specific board.
+
+This is sometimes supported out-of-the-box by the SoC like with the HABv4
+field return feature.
+
+In the generic case, barebox supports verification of JSON Web Tokens against
+a compiled-in RSA public key. Board code should read the JSON Web Token
+(e.g., from a raw partition on a USB mass storage device), verify the
+serial number claim within against the board's actual serial number and only
+then unlock any debugging functionality.
diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index 565e6c11f82f..83ba9e4c3505 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -28,6 +28,7 @@ Contents:
    booting-linux
    bootchooser
    remote-control
+   security
    system-setup
    reset-reason
    system-reset
-- 
2.39.5



