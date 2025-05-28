Delivery-date: Wed, 28 May 2025 14:04:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWf-001B7i-38
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:04:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWY-0007I2-Tg
	for lore@pengutronix.de; Wed, 28 May 2025 14:04:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j4K3ezWp6FJNlJE/12CUhlHFbEARcKJk5ADW7cONvR4=; b=1hxBlfW4AZ/MWnajK8AP6UEs6r
	RnMrsjRkRvTAle2hxeO6tZaAF9PdEN5zJGLlp10klemk9bQAwEfmkzbviyF+ZeVWcwSVYMp0JN/vf
	H6n59H9oG8osjtkXaGlsH9dbYkkE8fgZpBLOxgH8pwSXLQyeKKMP6jGN9KbgX/rFOY/S3ohsRjwHs
	/a3fDIw11XVko5vdHy8aMLbmEVWqmeUAgNKAKT7FL9suhPcjSrPPgzOG+hW/VXGnoFU4fLnImvByp
	cV0BQMj2c1UooNCDq/EKhUg0Oaz6+g8ZWQq4Rg08thwAUgZhyU0XODXyQm0TDw+E+16uOArj1ojMQ
	7V4sHo+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFVh-0000000D318-0DeL;
	Wed, 28 May 2025 12:03:53 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFUF-0000000D2cV-03TK
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 12:02:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=j4K3ezWp6FJNlJE/12CUhlHFbEARcKJk5ADW7cONvR4=; b=E86ydYt2dLb4LykDJn/tdOPOiM
	zIEAk8UFIXUhZzgBiwrOvkB+SgZsvDK2ZUtdYF7v3pL5DWKfkqlDy6o688Uc06/TIst4k3GofdmNX
	g8IR+kPAFNmJKcgYUZJqN928I0dp4W7gHBSnPhRARD5Ds8lNr3fPbIb4ZrT8Xk7+zI2WnGJgef4JY
	MxHQl42TLwXLy1UNyXKbqE4yJwKKkBg9SkJwfUK4vRzM+OTLmarleA+lO47GDKpQX2iU9+TpYNGtw
	NpsQbOoB20vrvH17oq/xjy/fbH0WnOtBEK3qIa+yhsJC1NTQItlk7oCL2orUBWr1927gfara6uQok
	2JgDI1Qg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFUB-0000000Daux-2iUY
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 12:02:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTq-0004TI-3w; Wed, 28 May 2025 14:01:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTp-000a9x-2x;
	Wed, 28 May 2025 14:01:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00CB0R-1b;
	Wed, 28 May 2025 13:45:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 May 2025 13:45:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-arm-k3-am62l-v1-10-3f88e6d10d99@pengutronix.de>
References: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
In-Reply-To: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748432738; l=13506;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=sJ1lm6RwRCtyrkYUJ60l8v2bs2ZOC8d740YSja5WAlY=;
 b=57q1MJbOI3eVD3o3uvhygqd8FvoPpaOqiHoNsiSZ6hIB0gHOwA7OCYluBR30iSUQzWZBdCVCY
 PcsoFQ+0lj/CzGu+/peIL/6hFDfJL0npwjewOLA9MI2Zx2Pi9TAkhuc
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_130219_769807_4824A644 
X-CRM114-Status: GOOD (  12.63  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/31] ARM: k3: add yaml files for AM62l
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

board-cfg-am62x.yaml can be re-used for AM62l, but we need a AM62l
specific sec-cfg-am62l.yaml. pm-cfg.yaml and rm-cfg.yaml are no longer
needed for AM62l, so create a new k3cfg file with only board-cfg.yaml
and sec-cfg.yaml.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/Makefile           |   7 +
 arch/arm/mach-k3/sec-cfg-am62l.yaml | 379 ++++++++++++++++++++++++++++++++++++
 2 files changed, 386 insertions(+)

diff --git a/arch/arm/mach-k3/Makefile b/arch/arm/mach-k3/Makefile
index b05d90da4b3ad468cdfcdcb286c004f5e9e72925..df77832887e992de934623d0a3384ab82454e2cc 100644
--- a/arch/arm/mach-k3/Makefile
+++ b/arch/arm/mach-k3/Makefile
@@ -6,6 +6,7 @@ obj-pbl-y += ddrss.o
 obj-$(CONFIG_BAREBOX_UPDATE) += bbu.o
 
 extra-$(CONFIG_MACH_K3_CORTEX_R5) += combined-dm-cfg-am62x.k3cfg combined-sysfw-cfg-am62x.k3cfg
+extra-$(CONFIG_MACH_AM62LX) += combined-sysfw-cfg-am62l.k3cfg
 
 $(obj)/combined-dm-cfg-am62x.k3cfg: $(srctree)/arch/arm/mach-k3/schema.yaml \
 				    $(obj)/pm-cfg-am62x.yaml \
@@ -20,3 +21,9 @@ $(obj)/combined-sysfw-cfg-am62x.k3cfg: $(srctree)/arch/arm/mach-k3/schema.yaml \
 				       $(obj)/rm-cfg-am62x.yaml \
 				       FORCE
 	$(call if_changed,k3_cfg)
+
+$(obj)/combined-sysfw-cfg-am62l.k3cfg: $(srctree)/arch/arm/mach-k3/schema.yaml \
+				       $(obj)/board-cfg-am62x.yaml \
+				       $(obj)/sec-cfg-am62l.yaml \
+				       FORCE
+	$(call if_changed,k3_cfg)
diff --git a/arch/arm/mach-k3/sec-cfg-am62l.yaml b/arch/arm/mach-k3/sec-cfg-am62l.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..bea6891eda249e236b2057cc1e6758de2c47016d
--- /dev/null
+++ b/arch/arm/mach-k3/sec-cfg-am62l.yaml
@@ -0,0 +1,379 @@
+# SPDX-License-Identifier: GPL-2.0+
+# Copyright (C) 2025 Texas Instruments Incorporated - https://www.ti.com/
+#
+# Security management configuration for AM62Lx
+#
+---
+
+sec-cfg:
+    rev:
+        boardcfg_abi_maj: 0x0
+        boardcfg_abi_min: 0x1
+    processor_acl_list:
+        subhdr:
+            magic: 0xF1EA
+            size: 164
+
+        proc_acl_entries:
+            -  # 1
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 2
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 3
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 4
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 5
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 6
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 7
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 8
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 9
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 10
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 11
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 12
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 13
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 14
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 15
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 16
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 17
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 18
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 19
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 20
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 21
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 22
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 23
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 24
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 25
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 26
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 27
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 28
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 29
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 30
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 31
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+            -  # 32
+                processor_id: 0
+                proc_access_master: 0
+                proc_access_secondary: [0, 0, 0]
+    host_hierarchy:
+        subhdr:
+            magic: 0x8D27
+            size: 68
+        host_hierarchy_entries:
+            -  # 1
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 2
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 3
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 4
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 5
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 6
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 7
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 8
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 9
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 10
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 11
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 12
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 13
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 14
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 15
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 16
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 17
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 18
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 19
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 20
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 21
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 22
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 23
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 24
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 25
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 26
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 27
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 28
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 29
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 30
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 31
+                host_id: 0
+                supervisor_host_id: 0
+            -  # 32
+                host_id: 0
+                supervisor_host_id: 0
+    otp_config:
+        subhdr:
+            magic: 0x4081
+            size: 69
+        otp_entry:
+            -  # 1
+                host_id: 0
+                host_perms: 0
+            -  # 2
+                host_id: 0
+                host_perms: 0
+            -  # 3
+                host_id: 0
+                host_perms: 0
+            -  # 4
+                host_id: 0
+                host_perms: 0
+            -  # 5
+                host_id: 0
+                host_perms: 0
+            -  # 6
+                host_id: 0
+                host_perms: 0
+            -  # 7
+                host_id: 0
+                host_perms: 0
+            -  # 8
+                host_id: 0
+                host_perms: 0
+            -  # 9
+                host_id: 0
+                host_perms: 0
+            -  # 10
+                host_id: 0
+                host_perms: 0
+            -  # 11
+                host_id: 0
+                host_perms: 0
+            -  # 12
+                host_id: 0
+                host_perms: 0
+            -  # 13
+                host_id: 0
+                host_perms: 0
+            -  # 14
+                host_id: 0
+                host_perms: 0
+            -  # 15
+                host_id: 0
+                host_perms: 0
+            -  # 16
+                host_id: 0
+                host_perms: 0
+            -  # 17
+                host_id: 0
+                host_perms: 0
+            -  # 18
+                host_id: 0
+                host_perms: 0
+            -  # 19
+                host_id: 0
+                host_perms: 0
+            -  # 20
+                host_id: 0
+                host_perms: 0
+            -  # 21
+                host_id: 0
+                host_perms: 0
+            -  # 22
+                host_id: 0
+                host_perms: 0
+            -  # 23
+                host_id: 0
+                host_perms: 0
+            -  # 24
+                host_id: 0
+                host_perms: 0
+            -  # 25
+                host_id: 0
+                host_perms: 0
+            -  # 26
+                host_id: 0
+                host_perms: 0
+            -  # 27
+                host_id: 0
+                host_perms: 0
+            -  # 28
+                host_id: 0
+                host_perms: 0
+            -  # 29
+                host_id: 0
+                host_perms: 0
+            -  # 30
+                host_id: 0
+                host_perms: 0
+            -  # 31
+                host_id: 0
+                host_perms: 0
+            -  # 32
+                host_id: 0
+                host_perms: 0
+        write_host_id: 0
+    dkek_config:
+        subhdr:
+            magic: 0x5170
+            size: 12
+        allowed_hosts: [128, 0, 0, 0]
+        allow_dkek_export_tisci: 0x5A
+        rsvd: [0, 0, 0]
+    sa2ul_cfg:
+        subhdr:
+            magic: 0x0
+            size: 0
+        auth_resource_owner: 0
+        enable_saul_psil_global_config_writes: 0x0
+        rsvd: [0, 0]
+    sec_dbg_config:
+        subhdr:
+            magic: 0x42AF
+            size: 16
+        allow_jtag_unlock: 0x5A
+        allow_wildcard_unlock: 0x5A
+        allowed_debug_level_rsvd: 0
+        rsvd: 0
+        min_cert_rev: 0x0
+        jtag_unlock_hosts: [0, 0, 0, 0]
+    sec_handover_cfg:
+        subhdr:
+            magic: 0x0
+            size: 10
+        handover_msg_sender: 0
+        handover_to_host_id: 0
+        rsvd: [0, 0, 0, 0]

-- 
2.39.5



