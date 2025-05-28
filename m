Delivery-date: Wed, 28 May 2025 15:16:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKGeC-001CTF-08
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 15:16:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKGeB-00058c-7n
	for lore@pengutronix.de; Wed, 28 May 2025 15:16:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UqlpmAnyKrIBgOG/LIo12y497fFR1eRddB8FgkWFlFw=; b=rsqwZeVEK0kj+0brnIShdRKojc
	/7KSOJ5FrmsDOkgM6i29+1eJmtRzVhuvLq8jslDirP5lxKRVQIhB5sHuqz2BObRFUqnRz7awgLIRT
	uVaEMz4qDfpGeKurSSQCgQXJ1VzYf+4sjZLA9ndiKp3rnrMU3JbbijGyfDzZObN8h/niqsQ6XJ0Kw
	j2O9VxGIHjoBn1tWPEg3VOH7/Mx3hnq5NUBInO8jTYGdZREh2h/72WW4bFd474TrPxGbPS7FrdjuZ
	KCn+rmHsIHq8nQ5uY9NCxGJkAqMF+CYgCNejN04zmAnndkOW0ysRS8WE3UhTyiEn7d3tdamAeQiWl
	PvxPceVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKGdT-0000000DDEc-2L9K;
	Wed, 28 May 2025 13:15:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKGbl-0000000DD79-3NAL
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 13:14:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uKGbk-0003JX-4A; Wed, 28 May 2025 15:14:12 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 28 May 2025 15:14:08 +0200
Message-Id: <20250528131411.935668-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250528131411.935668-1-a.fatoum@barebox.org>
References: <20250528131411.935668-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_061413_839873_DC08EBBD 
X-CRM114-Status: GOOD (  23.26  )
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
X-Spam-Status: No, score=-7.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] common: deep-probe: support specifying support in DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

New boards should be deep probe enabled by default, which is currently
done via board code. We want to support second stage boot on new boards
without board code however, which means we need the possibility to make
deep probe opt-out instead of opt-in.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 .../bindings/barebox/barebox,deep-probe.rst   | 39 +++++++++++++++++++
 common/deep-probe.c                           | 26 +++++++++++--
 drivers/base/Kconfig                          | 22 +++++++++++
 3 files changed, 84 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/barebox/barebox,deep-probe.rst

diff --git a/Documentation/devicetree/bindings/barebox/barebox,deep-probe.rst b/Documentation/devicetree/bindings/barebox/barebox,deep-probe.rst
new file mode 100644
index 000000000000..bfc28ac9d1ca
--- /dev/null
+++ b/Documentation/devicetree/bindings/barebox/barebox,deep-probe.rst
@@ -0,0 +1,39 @@
+Deep probe properties
+=====================
+
+A ``barebox,deep-probe`` property in the top-level node indicates to barebox
+that the barebox board and device drivers support recursively probing devices
+on demand (deep probe).
+
+For drivers to support deep probe, they must not rely on initcall ordering.
+Resources needed by drivers should be referenced via device tree, e.g.,
+instead of direct use of hardcoded GPIO numbers, GPIOs must either be:
+
+* described in the device's device tree node and requested using API that
+  that takes the device or the device tree node as argument
+
+* probe of the GPIO controller be ensured via ``of_device_ensure_probed``,
+  e.g., ``of_devices_ensure_probed_by_property("gpio-controller");``
+
+The inverted flag is ``barebox,disable-deep-probe``, which means that the
+board is not deep probe capable (or tested) yet.
+
+The ``barebox,disable-deep-probe`` property takes precedence over
+``barebox,deep-probe``, but not over ``BAREBOX_DEEP_PROBE_ENABLE``
+in the board code.
+
+If neither property exists, the default deep probe behavior depends on
+the ``CONFIG_DEEP_PROBE_DEFAULT`` variable.
+
+.. code-block:: none
+
+   / { /* SoM Device Tree */
+   	barebox,deep-probe;
+   };
+
+   / { /* Board Device Tree */
+        /* FIXME: While the SoM supports deep probe, our board code is broken
+	 * currently, so override until it's fixed
+	 */
+   	barebox,disable-deep-probe;
+   };
diff --git a/common/deep-probe.c b/common/deep-probe.c
index ab1da87b626b..0a7f2f3769ae 100644
--- a/common/deep-probe.c
+++ b/common/deep-probe.c
@@ -20,11 +20,18 @@ static enum deep_probe_state boardstate = DEEP_PROBE_UNKNOWN;
 
 bool deep_probe_is_supported(void)
 {
+	bool deep_probe_default = IS_ENABLED(CONFIG_DEEP_PROBE_DEFAULT);
 	struct deep_probe_entry *board;
+	struct device_node *root;
 
 	if (boardstate > DEEP_PROBE_UNKNOWN)
 		return boardstate;
 
+	/* deep probe requires resources to be described in DT */
+	root = of_get_root_node();
+	if (!root)
+		return false;
+
 	/* determine boardstate */
 	for (board = __barebox_deep_probe_start;
 	     board != __barebox_deep_probe_end; board++) {
@@ -39,8 +46,21 @@ bool deep_probe_is_supported(void)
 		}
 	}
 
-	boardstate = DEEP_PROBE_NOT_SUPPORTED;
-	pr_info("not activated\n");
-	return false;
+	if (of_property_read_bool(root, "barebox,disable-deep-probe")) {
+		boardstate = DEEP_PROBE_NOT_SUPPORTED;
+		pr_info("disabled in device tree\n");
+	} else if (of_property_read_bool(root, "barebox,deep-probe")) {
+		boardstate = DEEP_PROBE_SUPPORTED;
+		pr_debug("enabled in device tree\n");
+	} else if (deep_probe_default) {
+		boardstate = DEEP_PROBE_SUPPORTED;
+		pr_debug("activated by default\n");
+	} else {
+		boardstate = DEEP_PROBE_NOT_SUPPORTED;
+		pr_warn("DT missing barebox,deep-probe or barebox,disable-deep-probe property\n");
+		pr_info("not activated by default\n");
+	}
+
+	return boardstate;
 }
 EXPORT_SYMBOL_GPL(deep_probe_is_supported);
diff --git a/drivers/base/Kconfig b/drivers/base/Kconfig
index 21a4793cfa47..5766e2afda9a 100644
--- a/drivers/base/Kconfig
+++ b/drivers/base/Kconfig
@@ -1,5 +1,27 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+config DEEP_PROBE_DEFAULT
+	bool "Probe devices recursively on-demand"
+	help
+          The barebox 'deep probe' or 'probe on demand' mechanism gets
+          rid of the EPROBE_DEFER error code from probes by reordering
+          the device population and the driver registration.
+          All drivers are registered first and afterwards devices are
+          populated. When a device probing requires a resource that's
+          not yet available, the device providing that resource is probed
+          recursively, hence the probe callstack gets deeper until all
+          resources are available.
+
+          This changes the order in which drivers are initialized, which
+          can unearth bugs in drivers. Board code that makes use of
+          different initcall levels to interleave with driver probes
+          will behave differently.
+
+          If unsure and you want to fix implicit assumptions that may
+          break your startup, say 'y'.
+          If unsure and you want deep probe to only be enabled
+          explicitly per top-level machine compatible, say 'n'.
+
 config PM_GENERIC_DOMAINS
 	bool
 
-- 
2.39.5



