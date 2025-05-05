Delivery-date: Mon, 05 May 2025 16:08:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBwUg-002TzP-2M
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 16:08:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBwUf-0002fI-WB
	for lore@pengutronix.de; Mon, 05 May 2025 16:08:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zRrRIE0RWltaTXVcqlcdIsIVhrkaSxx/y1FJMhhuSlU=; b=UiXWEg9LJ8JKchOVGnIyzZjlrx
	rd99jceqK3H8ILQBKthG5HsnJY9X4GqucYHN+S2ofNagsFj1L/oK7mBmDuqKIJid/QjL83E7MkGLA
	2V+19j63aqtnztWAwViuziDqN4HuLWHq+NuKLZLnlfG21o4XRC4clldFwvAiiG9k7QYUyNdPMagxH
	C+zOnE523JCBQAtELZuz+n00kKFzn7MfwppIRyriWF8l8Vr9DKVM2RCTvQx4S8QYcOzMWJjyDt3fS
	JejtP/Rvct8Pa7c+25uK7/ueLx0DR2aqyBvoLUx6s1J4X5Hxdee0FPBNN2/x5bpL1ajQh1tSs4hs4
	DGF1upRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBwU6-00000007ZbN-2MtD;
	Mon, 05 May 2025 14:07:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBwU3-00000007ZaW-1q7u
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 14:07:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBwU1-0002TK-SF; Mon, 05 May 2025 16:07:49 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBwU1-001EyB-2C;
	Mon, 05 May 2025 16:07:49 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBwU2-00AquT-0A;
	Mon, 05 May 2025 16:07:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 May 2025 16:07:46 +0200
Message-Id: <20250505140746.2583140-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_070751_476869_1FDBA1CB 
X-CRM114-Status: GOOD (  19.16  )
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
Subject: [PATCH] Documentation: add migration guide for v2025.05.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To simplify barebox updates, let's commit to the documentation a guide
about potential breakage that users and integrators may run into after
an update, e.g. renamed Kconfig symbols.

This is inspired by the migration guides of the Yocto project[1].

[1]: https://docs.yoctoproject.org/3.4/migration-guides/migration-3.4.html

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/index.rst                       |  1 +
 Documentation/migration-guides/index.rst      | 13 ++++
 .../migration-guides/migration-2025.05.0.rst  | 71 +++++++++++++++++++
 3 files changed, 85 insertions(+)
 create mode 100644 Documentation/migration-guides/index.rst
 create mode 100644 Documentation/migration-guides/migration-2025.05.0.rst

diff --git a/Documentation/index.rst b/Documentation/index.rst
index a3e019e9f0a2..e03f7f7ee946 100644
--- a/Documentation/index.rst
+++ b/Documentation/index.rst
@@ -20,6 +20,7 @@ Contents:
    glossary
    devicetree/*
    devel/devel.rst
+   migration-guides/index
    talks
 
 * :ref:`search`
diff --git a/Documentation/migration-guides/index.rst b/Documentation/migration-guides/index.rst
new file mode 100644
index 000000000000..fbe7a0205980
--- /dev/null
+++ b/Documentation/migration-guides/index.rst
@@ -0,0 +1,13 @@
+Release Migration Guides
+========================
+
+Each document in this chapter provides information about how to move to one
+release of barebox from the previous one.
+
+The goal is to help integrators and users of barebox to adapt their
+configuration and downstream board support. barebox API breakage that
+cause build errors are generally out-of-scope for these documents.
+
+.. toctree::
+
+   migration-2025.05.0
diff --git a/Documentation/migration-guides/migration-2025.05.0.rst b/Documentation/migration-guides/migration-2025.05.0.rst
new file mode 100644
index 000000000000..fe734a2921e5
--- /dev/null
+++ b/Documentation/migration-guides/migration-2025.05.0.rst
@@ -0,0 +1,71 @@
+Release v2025.05.0
+==================
+
+Configuration options
+---------------------
+
+* ``CONFIG_CMD_NFS`` and the ``nfs`` command have been removed.
+  Users should use the NFS filesystem implementation instead via
+  :ref:`command_mount`.
+
+* ``CONFIG_STORAGE_BY_UUID`` has been renamed to ``CONFIG_STORAGE_BY_ALIAS``.
+  No functional change for the ``diskuuid`` binding use-case.
+
+* ``CONFIG_ROOTWAIT_BOOTARG`` is now enabled by default and will instruct
+  barebox to append ``rootwait`` when booting from SD/eMMC/USB/NFS if
+  barebox is already configured to generate the ``root=`` option dynamically.
+
+  This can be customized via setting the ``global`` ``linux.rootwait``
+  variable or by disabling the option.
+
+Bootloader Specification
+------------------------
+
+* Special handling for ``devicetree none`` has been finally removed in the
+  bootloader specification parser after triggering an error message for 4 years.
+  To migrate, remove the line.
+
+* GPT partitions with ``DPS_TYPE_FLAG_NO_AUTO`` are now ignored in accordance
+  with the UAPI discoverable partition specification.
+
+* All XBOOTLDR partitions (without ``DPS_TYPE_FLAG_NO_AUTO``) are now
+  considered for bootloader spec files.
+
+  Previously only the first partition with the XBOOTLDR partition type
+  was considered.
+
+* The XBOOTLDR GPT Partition Type UUID is now parsed and handled
+  identically to the MBR partition type.
+
+  If an XBOOTLDR partition exists, barebox will no longer walk
+  all partitions to find further
+  bootloader spec entries.
+
+* Any existing ESP partitions are now searched for entries after
+  XBOOTLDR partitions if any and before iterating over the full
+  list of partitions.
+
+Board support
+-------------
+
+* Legacy STM32MP1 images have been finally dropped from barebox after
+  having been removed from TF-A in 2022.
+
+  Users should migrate to FIP images with barebox as nontrusted firmware
+  (BL33) and the barebox device tree as hardware config.
+
+  Use of multiple device trees is not support directly by the FIP format
+  and can be substituted by a barebox image embedding multiple device trees
+  and using the hardware config FIP slot only as dummy.
+  See the lxa-tac board for an example.
+
+Shell and magic variables
+-------------------------
+
+* ``/dev/fw_cfg0`` has been renamed to ``/dev/fw_cfg``
+
+* ``global.boot.default`` is now ``bootsource net`` by default.
+
+  This does not affect users setting ``nv boot.default``, but for
+  others, barebox will look for bootloader spec on the bootsource
+  medium first.
-- 
2.39.5



