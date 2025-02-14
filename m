Delivery-date: Fri, 14 Feb 2025 15:24:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiwcZ-002IUz-0F
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 15:24:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiwcX-00006S-F7
	for lore@pengutronix.de; Fri, 14 Feb 2025 15:24:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MF4ARp9dkEsLGYkhvs9/d1m74kuwKsZmIYZXi3XT3sc=; b=gdYCGunGv9AJnMoWBfMSzfmexY
	Zlb8UMg2s3OPFcZCCjgtSN0DMn65XuE5pk7w6u2/ih+7rP69PUnwTzwQM20l2rZceJNUIOgpNsY1k
	g2emHmxIsmGX+jItNch5bZXKXkl7LXqhP01Y3G2MmGS+DP3n7HRPaYNTiqYN0gzYZ1ggk4f1Fd5Fu
	9LF6BXqEd9Xo1IW2JXfgCEBheKdSp9VJsr3cdiJUfBKVBUfFK55cj6+KlbAX7WgFF1UAqYSkjkC90
	KaPHag4McDFcOnDcQCw1OB3Tj6Yobt3iaysM2p3VsEJD5EVglV9ndSzlF8NON9vr9iaI5epya59Ta
	hQo3nVjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiwbs-0000000F8eU-1pKL;
	Fri, 14 Feb 2025 14:24:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiwbn-0000000F8dA-3kjU
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 14:24:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tiwbl-0008Fa-UE; Fri, 14 Feb 2025 15:23:57 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tiwbl-000vqI-2Q;
	Fri, 14 Feb 2025 15:23:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tiwbl-00FCw2-28;
	Fri, 14 Feb 2025 15:23:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 15:23:56 +0100
Message-Id: <20250214142356.3624561-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250214142356.3624561-1-a.fatoum@pengutronix.de>
References: <20250214142356.3624561-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_062400_085111_9CA1FCAD 
X-CRM114-Status: GOOD (  29.11  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/3] Documentation: user: add security consideration for using barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There are implicit assumptions around use of barebox in secure systems,
which isn't spelt out anywhere, e.g. that FIT images should be located
in raw partitions.

Let's start by writing down these security considerations.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/imx.rst    |   2 +
 Documentation/user/security.rst | 160 ++++++++++++++++++++++++++++++++
 2 files changed, 162 insertions(+)
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
index 000000000000..507df9a79e84
--- /dev/null
+++ b/Documentation/user/security.rst
@@ -0,0 +1,160 @@
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
+Verifying barebox itself
+------------------------
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
+.. warning:: barebox commands likes :ref:`hab command <command_hab>` do only
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
+Verifying the kernel by barebox
+-------------------------------
+
+barebox can embed one or more RSA or ECDSA public keys that it will use to
+verify signed FIT images. In a verified boot system, barebox should not
+be allowed to boot any images that have not been signed by the correct key.
+This can be enforced by setting ``CONFIG_BOOTM_FORCE_SIGNED_IMAGES=y``
+and disabling any ways that could use used to override this, e.g.:
+
+- While useful for development, the barebox shell can be used in creative
+  ways to circumvent boot restrictions. It's thus advisable to disable
+  the shell completely (``CONFIG_SHELL_NONE=y``) or make it non-interactive
+  (``CONSOLE_DISABLE_INPUT=y``). This may be coupled with muxing UART RX
+  pin as GPIO for maximum effectiveness.
+
+- Anything done interactively by the shell can also be done automatically by
+  means of init scripts in the environment. A secure barebox should only
+  consult the environment that it has built in and not parse an externally
+  located environment.
+  This can be enforced by disabling ``CONFIG_ENV_HANDLING``.
+  This does not preclude the use of :ref:`Bootchooser` as the
+  :ref:`barebox-state framework <state_framework>` can be used independently.
+
+- There are alternative methods of accessing the shell like netconsole,
+  or fastboot. These should preferably be disabled or at least not activated
+  by default.
+
+Note that any list here is bound to be incomplete. The barebox configuration
+needs to be vetted individually according to threat model.
+
+Use of file systems
+^^^^^^^^^^^^^^^^^^^
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
+- ``CONFIG_HAS_INSECURE_DEFAULT``: This is selected by options that have
+  an outsized potential of compromising security. It's recommended that
+  all configuration options that select ``CONFIG_HAS_INSECURE_DEFAULT``
+  are disabled.
+  If not possible, special care needs to be taken in vetting the insecure
+  defaults in question.
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
-- 
2.39.5



