Delivery-date: Mon, 13 Apr 2026 12:07:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCECo-00BgDp-1L
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 12:07:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCECn-0000No-Ne
	for lore@pengutronix.de; Mon, 13 Apr 2026 12:07:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aLbk/8P2S+16QK/ymDxA+RX9Dicb5Qab3q6LIK62/eg=; b=xAHGlNOlJMOs8nIJPAYPNhfVWZ
	f3a6iuUYgRlxIIl2E+TY0SReNQ/uZI814rwFXJhlauIR747pIEtAZCpxvp/F9PccDfP5YvNDLArLm
	qYEzcAqfQer/O/OwQl9vBe/xeauLqE4BK5Tj+w1ML/q5Pl4bLz6T9Qp25p99T1kuU8fao9hFT9zIY
	kYyp9DgiWdbZn7Jg68mdWQFLVs0YnZLKoaH4wTFpX9RoLYqNoWSQlQG8pJaWjWJwyAEZ/+fE9M9JL
	qHaOOR0lu3rGkcmvRj4SvOlyndZPYhvjIaNZTSJhYx/z8P7xd1SiutTtIlcL5P2gdlVfjWpGvDcmh
	PYM2XwVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCECR-0000000FPaA-1zLq;
	Mon, 13 Apr 2026 10:07:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCECN-0000000FPYp-2EoG
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 10:07:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=aLbk/8P2S+16QK/ymDxA+RX9Dicb5Qab3q6LIK62/eg=; b=TZVB7sUDw2Vs09r9Rjbe9CzGbs
	HcE4BpyCz9AXtGN/6nQG+Athm+Z6rKjyHerjagOdGy9341zh9ApQDL/hxisqur0OXMJceua/CFP1K
	6aLiU3pEKoFbnXkjF53E2pCevEUr4uwlDqn+mmji2e9rTOYZWKPAqkjQmyv5rELxJE3b4+0P4RpiM
	FHp4bWV5OqqP6YA8EHv/hfXTVI/mxImtB76gzVqWuquTHkFgSXS2iYivLyl9VMeiT7rUnoObXfZWa
	tuTWmkGSQ0IpK0+rLkZPM5zqZ59rFr99h5JubXOSphauS+wDwTfpjXgxNF469w21sS+QB9ID7XNlP
	LGc09Ubw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCECK-0000000GY2M-0tjX
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 10:07:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCECJ-00008e-D3; Mon, 13 Apr 2026 12:07:15 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 12:07:00 +0200
Message-ID: <20260413100710.1459468-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260413100710.1459468-1-a.fatoum@barebox.org>
References: <20260413100710.1459468-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_110716_407919_ACE46454 
X-CRM114-Status: GOOD (  17.10  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] Documentation: add OpenBSD booting guide
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Covers the EFI boot flow, the simplefb stdout-path requirement for
framebuffer console, and the specific steps needed on systems with no
serial port where the framebuffer is the only console available.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/user/booting-openbsd.rst | 72 ++++++++++++++++++++++++++
 Documentation/user/user-manual.rst     |  1 +
 2 files changed, 73 insertions(+)
 create mode 100644 Documentation/user/booting-openbsd.rst

diff --git a/Documentation/user/booting-openbsd.rst b/Documentation/user/booting-openbsd.rst
new file mode 100644
index 000000000000..539e552d40d5
--- /dev/null
+++ b/Documentation/user/booting-openbsd.rst
@@ -0,0 +1,72 @@
+.. _booting_openbsd:
+
+Booting OpenBSD
+===============
+
+barebox can boot OpenBSD on EFI-capable ARM64 systems.  It acts as an EFI
+loader, exposing EFI protocols (block devices, GOP framebuffer, RNG, …) to
+subsequently loaded EFI binaries before handing off to the OS.
+
+Basic boot
+----------
+
+When ``CONFIG_EFI_LOADER_BOOTMGR`` is enabled, barebox's default boot order
+includes the ``efibootmgr`` target, which scans all storage devices for an
+ESP partition and boots ``EFI/BOOT/BOOTAA64.EFI`` from it.  If the OpenBSD
+installer placed its EFI bootloader on the ESP in the standard location, a
+plain ``boot`` invocation should find and start it without any additional
+configuration.
+
+To boot from a specific disk explicitly:
+
+.. code-block:: sh
+
+  boot virtioblk0
+
+or to persist:
+
+.. code-block:: sh
+
+  #!/bin/sh
+  nv boot.default=virtioblk0
+
+Framebuffer console
+-------------------
+
+OpenBSD's kernel discovers its framebuffer console by reading
+``/chosen/stdout-path`` from the device tree.  If that property points at a
+``simple-framebuffer`` node, the framebuffer is attached as the system console
+before the kernel's driver subsystem starts.
+
+barebox sets this up when the ``register_simplefb`` parameter on the
+framebuffer device is set to ``stdout-path``:
+
+.. code-block:: sh
+
+  fb0.register_simplefb=stdout-path
+
+The three valid values are:
+
+``disabled``
+  No simplefb DT node is created (default).
+
+``enabled``
+  A simplefb DT node is created but ``stdout-path`` is not set.
+
+``stdout-path``
+  A simplefb DT node is created and ``/chosen/stdout-path`` is pointed at
+  it, directing the OpenBSD kernel to use the framebuffer as its boot console.
+
+Systems without a serial console
+---------------------------------
+
+On laptops and desktops without an accessible serial port, ``stdout-path``
+mode is required, not optional.  Without it the kernel has no console after
+``ExitBootServices()`` and the screen stays black.
+
+Enable the framebuffer before booting and persist both settings:
+
+.. code-block:: sh
+
+  nv dev.fb0.enable=1
+  nv dev.fb0.register_simplefb=stdout-path
diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index aa55017c69d7..b312f60e8187 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -26,6 +26,7 @@ Contents:
    usb
    ubi
    booting-linux
+   booting-openbsd
    devboot
    bootchooser
    remote-control
-- 
2.47.3



