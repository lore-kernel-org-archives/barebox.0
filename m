Delivery-date: Fri, 26 Jun 2026 18:23:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd9Ka-00A8HK-1V
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 18:23:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd9KZ-00021E-M8
	for lore@pengutronix.de; Fri, 26 Jun 2026 18:23:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jQ4ldtZewLbxb4ZCuraBSLADnpygdDwVy/aemZQDF4c=; b=2bx9GW0/iZ6ynnGj7eza5DPVmH
	ntsZsHIpKOi22kxu5Jr+LmpmwlkkR7Q3Y390c5c9ct27PpCgl9fyg+h7R/hPs1s1Qq68hyQjr4qM8
	Xu5Y2MdjmweDy6jnPXWPS2RPn/ze6bXIbOcP3uwqhTYollQ3fRlMFMDlKBNQFOYJD1uu4rRk+1Fp5
	CF0mXTiJMF4bS8agYBAAZ2Nn85CtE5AmETHyYIVUIAg8zi9mKVXfrVC/8+Q8ArSUUj0HtlJkvyqrb
	SFYt6XJGDEGiRzQ6sElEMBoPeZ2V2Htce4Ya9aF3+Dr4S+QWFMW/A57NozK/gzRzq6O5ZU7yY5r1d
	TKpb3lVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9JM-0000000BcST-3hZf;
	Fri, 26 Jun 2026 16:21:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9JK-0000000BcPN-17wp
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 16:21:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd9JI-0006R9-JS; Fri, 26 Jun 2026 18:21:44 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 18:19:36 +0200
Message-ID: <20260626162136.1885999-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626162136.1885999-1-a.fatoum@barebox.org>
References: <20260626162136.1885999-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_092146_311505_DC43C1B0 
X-CRM114-Status: UNSURE (   8.77  )
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
Subject: [PATCH v2 5/9] scripts: qemu_interactive.py: add new --nvmeblk option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To be able to test the recent non-512-byte block support, add a
--nvmeblk option that behaves like --blk, but appears to the guest as
block device.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - no change
---
 arch/arm/configs/multi_v8_defconfig |  2 ++
 scripts/qemu_interactive.py         | 10 ++++++++++
 2 files changed, 12 insertions(+)

diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 9712113bf1cd..5ea63372d050 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -103,6 +103,7 @@ CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_LN=y
+CONFIG_CMD_STAT=y
 CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_SHA1SUM=y
 CONFIG_CMD_SHA224SUM=y
@@ -284,6 +285,7 @@ CONFIG_PHY_ROCKCHIP_USBDP=y
 CONFIG_ROCKCHIP_IODOMAIN=y
 CONFIG_ROCKCHIP_PM_DOMAINS=y
 CONFIG_TI_SCI_PM_DOMAINS=y
+CONFIG_BLK_DEV_NVME=y
 CONFIG_NVMEM_REBOOT_MODE=y
 CONFIG_VIRTIO_MMIO=y
 CONFIG_VIRTIO_PCI=y
diff --git a/scripts/qemu_interactive.py b/scripts/qemu_interactive.py
index 827a831725ba..77ff6f9fc8b4 100755
--- a/scripts/qemu_interactive.py
+++ b/scripts/qemu_interactive.py
@@ -49,6 +49,9 @@ def register_shared_options(parser):
     _add_option(parser, "--blk", action="append", dest="qemu_block",
                 default=[], metavar="FILE",
                 help="Pass block device to emulated barebox. Can be specified more than once")
+    _add_option(parser, "--nvmeblk", action="append", dest="qemu_nvmeblock",
+                default=[], metavar="FILE",
+                help="Pass NVMe block device with 4K sector size to emulated barebox. Can be specified more than once")
     _add_option(parser, "--usbblk", action="append", dest="qemu_usbblock",
                 default=[], metavar="FILE",
                 help="Pass USB block device to emulated barebox. Can be specified more than once")
@@ -260,6 +263,13 @@ def apply_shared_options(strategy, target, options, *, interactive, fail=None):
         else:
             fail("--blk unsupported for target\n")
 
+    for i, blk in enumerate(_get_list_option(options, "qemu_nvmeblock")):
+        _append_qemu_args(
+            strategy, fail,
+            "-drive", f"if=none,format=raw,id=nvme{i},file={blk}",
+            "-device", f"nvme,drive=nvme{i},serial=0ba2eb08,logical_block_size=4096,physical_block_size=4096"
+        )
+
     for i, blk in enumerate(_get_list_option(options, "qemu_usbblock")):
         _append_qemu_args(
             strategy, fail,
-- 
2.47.3



