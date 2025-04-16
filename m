Delivery-date: Wed, 16 Apr 2025 12:34:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u5065-001QK1-0P
	for lore@lore.pengutronix.de;
	Wed, 16 Apr 2025 12:34:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u5064-0002vO-Dp
	for lore@pengutronix.de; Wed, 16 Apr 2025 12:34:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=y9zIUeU7vsaI4cfp1VBHYdLEIvc7t5JgN8dt74JtMRk=; b=L5XKzkXiCiDmF1GkL/x8K6xiC7
	qG3Yissa0sSUxxu/CtCsfqH/GXy+WXVXebvPKBC/3vnfh8QQD69w7c/gvUF/1V//8MgOrUDV0o8un
	Uz0FxZjIJT/crDeDdjJDFlcT4bMz5IPCued+SaUVkbhSFx/BZhIjXryYOioWi+vzlf9sxtaOsx4P+
	EXOJJPTm7XTRKZbAmibjiDpq+ROqGFxUtSKkn803G+2BH+FA4c4rJ5EaWvVdCnphwbrWAt0+RLp2g
	FHYGDX+h2Bzz1UwdY0fWUnh98sr1GuPUJPSOGqCaD2nsWAncJ4IcK4OeSh9WVAodsm8OhJwYKwJDV
	9d+tdZMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u505Y-00000009D60-0HRw;
	Wed, 16 Apr 2025 10:33:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4zmH-000000095y5-1qVO
	for barebox@lists.infradead.org;
	Wed, 16 Apr 2025 10:13:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4zmF-0003Z4-W8; Wed, 16 Apr 2025 12:13:56 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4zmF-000ZMA-2a;
	Wed, 16 Apr 2025 12:13:55 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4zmF-000tmU-2H;
	Wed, 16 Apr 2025 12:13:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Apr 2025 12:13:54 +0200
Message-Id: <20250416101355.214289-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_031357_494135_7273EA8F 
X-CRM114-Status: GOOD (  19.58  )
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
Subject: [PATCH v2 1/2] Documentation: document querying of barebox version
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a short reference to barebox-version fixup in the device tree section
of the manual. Expand on this by adding a proper documentation section.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - s/integrator/integration/ (Enrico)
  - Fix ReST markup in list (Enrico)
  - Mention CONFIG_IMD_TARGET
---
 Documentation/user/user-manual.rst |  1 +
 Documentation/user/versioning.rst  | 59 ++++++++++++++++++++++++++++++
 2 files changed, 60 insertions(+)
 create mode 100644 Documentation/user/versioning.rst

diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index 83ba9e4c3505..b8272b2235e4 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -33,6 +33,7 @@ Contents:
    reset-reason
    system-reset
    state
+   versioning
    random
    optee
    debugging
diff --git a/Documentation/user/versioning.rst b/Documentation/user/versioning.rst
new file mode 100644
index 000000000000..0c3001b97433
--- /dev/null
+++ b/Documentation/user/versioning.rst
@@ -0,0 +1,59 @@
+.. _versioning:
+
+barebox Artifact Versioning
+===========================
+
+In addition to the usual barebox release (e.g. ``v2025.03.0``), the
+version number can be extended to encode integration-specific version
+information:
+
+  * When built from git, ``scripts/setlocalversion`` will factor in
+    git revision information into the version string.
+  * The ``EXTRAVERSION = `` in the top-level ``Makefile`` can be used
+    to add a suffix to the version. This is useful if patches are applied
+    on top of the tarball release.
+  * The build host can set the ``BUILDSYSTEM_VERSION`` environment variable
+    prior to executing ``make`` to encode a board support package version.
+    This is useful to encode information about built-in environment
+    and firmware.
+
+Query from barebox
+^^^^^^^^^^^^^^^^^^
+
+When ``CONFIG_BANNER`` is enabled, the version information will be printed
+to the console. From the shell, there is the
+:ref:`version command <command_version>` for interactive use and the
+``global.version`` and ``global.buildsystem.version`` :ref:`magicvars`
+for use in scripts.
+
+Query from OS
+^^^^^^^^^^^^^
+
+The barebox version (formatted as ``barebox-$version``) can be queried
+after boot by different means:
+
+ * If the OS is booted with device tree, barebox will fixup a
+   ``/chosen/barebox-version`` property into the kernel device tree with
+   the version string. Under Linux, this can be accessed at:
+
+   * ``/sys/firmware/devicetree/base/chosen/barebox-version``
+   * ``/proc/device-tree/base/chosen/barebox-version``
+
+ * If the system is booted through barebox as EFI application (payload),
+   a ``LoaderInfo`` EFI variable with the systemd vendor GUID will
+   be set to the version string. Under Linux, the string is shown in
+   ``bootctl`` output
+
+Query without booting
+^^^^^^^^^^^^^^^^^^^^^
+
+If the barebox boot medium is known, ``bareboximd`` can be used
+to read the barebox :ref:`imd`, provided that barebox was
+compiled with ``CONFIG_IMD=y`` (and ``CONFIG_IMD_TARGET=y`` for
+the target tool)::
+
+  linux$ bareboximd /dev/mmc2.boot0 -t release
+  2025.03.0-20250403-1
+
+  barebox$ imd /dev/mmc2.boot0 -t release
+  2025.03.0-20250403-1
-- 
2.39.5



