Delivery-date: Fri, 26 Jun 2026 18:23:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd9KZ-00A8Gf-1z
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 18:23:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd9KY-0001wm-Fb
	for lore@pengutronix.de; Fri, 26 Jun 2026 18:23:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SjmvbAs9peTBCq5cbatojWS3pozbNPmwdd3q9SnYqXg=; b=K1W8EI1KT1hHUtlExR7FjuNP+o
	S+750ylb4WFqe5Dohn8J/Q+Jyiq+6F/z7sl+aBGT9CFUE5GF/PcwNMVR2v8GmaDrPr7vDF+FzL3za
	TSOXUuuqASzoBs1jB1P9EandUwV5DlnaiBSGQkVT0RpHWJmfFa3CODfERN7/be9C9f9+URaRgas8a
	ZVRixIBNk71y0SFUOEfmYeMkuqCg6tvBWnR+MM+bVuk9SIvnsb7o49Aiv9x3u/H0DNjWwbeKGq5yS
	oQF2pRY7ar1Ra835gr/6u+kRAdApOlFeJr6rLt4ZNaC56xHXCxNTogo+nyxheBIG0dAGIyHQ+J/y0
	QZB8ZhGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9JN-0000000BcSi-0kSb;
	Fri, 26 Jun 2026 16:21:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9JK-0000000BcPG-18P5
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 16:21:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd9JI-0006R9-D4; Fri, 26 Jun 2026 18:21:44 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 18:19:35 +0200
Message-ID: <20260626162136.1885999-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626162136.1885999-1-a.fatoum@barebox.org>
References: <20260626162136.1885999-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_092146_308657_67AAFBF9 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/9] scripts: qemu_interactive.py: add new --usbblk option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To be able to easily exercise the new xhci-pci support, add into
qemu_interactive.py a new --usbblk option that behaves like --blk, but
instead of creating a Virt I/O block device, creates a removable USB
storage.

As the ARM 64-bit Virt machine has no USB host by default, enable
xhci-pci there, so it can be readily used.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - use > YAML block
---
 scripts/qemu_interactive.py           | 10 ++++++++++
 test/arm/virt@multi_v8_defconfig.yaml |  2 ++
 2 files changed, 12 insertions(+)

diff --git a/scripts/qemu_interactive.py b/scripts/qemu_interactive.py
index a8605d23b132..827a831725ba 100755
--- a/scripts/qemu_interactive.py
+++ b/scripts/qemu_interactive.py
@@ -49,6 +49,9 @@ def register_shared_options(parser):
     _add_option(parser, "--blk", action="append", dest="qemu_block",
                 default=[], metavar="FILE",
                 help="Pass block device to emulated barebox. Can be specified more than once")
+    _add_option(parser, "--usbblk", action="append", dest="qemu_usbblock",
+                default=[], metavar="FILE",
+                help="Pass USB block device to emulated barebox. Can be specified more than once")
     _add_option(parser, "--env", action="append", dest="qemu_fw_cfg",
                 type=_assignment, default=[],
                 metavar="[envpath=]content | [envpath=]@filepath",
@@ -257,6 +260,13 @@ def apply_shared_options(strategy, target, options, *, interactive, fail=None):
         else:
             fail("--blk unsupported for target\n")
 
+    for i, blk in enumerate(_get_list_option(options, "qemu_usbblock")):
+        _append_qemu_args(
+            strategy, fail,
+            "-drive", f"if=none,format=raw,id=usbstorage{i},file={blk}",
+            "-device", f"usb-storage,drive=usbstorage{i},bus=usb-bus.0,removable=on"
+        )
+
     envopts = {}
 
     for i, fw_cfg in enumerate(_get_list_option(options, "qemu_fw_cfg")):
diff --git a/test/arm/virt@multi_v8_defconfig.yaml b/test/arm/virt@multi_v8_defconfig.yaml
index 4eb75da4610e..209b59c8fff7 100644
--- a/test/arm/virt@multi_v8_defconfig.yaml
+++ b/test/arm/virt@multi_v8_defconfig.yaml
@@ -8,6 +8,8 @@ targets:
         memory: 1024M
         bios: barebox-qemu-virt.img
         display: qemu-default
+        extra_args: >
+          -device qemu-xhci
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
-- 
2.47.3



