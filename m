Delivery-date: Thu, 14 Aug 2025 15:16:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umXog-000WEe-1K
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 15:16:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umXoe-00087z-De
	for lore@pengutronix.de; Thu, 14 Aug 2025 15:16:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9aa1w+V2NNUxeExW+B0MZtpaFEUY7yjvV4abbu4mYoI=; b=xhLh0BJBxso2ogiLp1wD+RY1Os
	l4g5SrfZJyt/uDf1Dq9VxrPbQlXqKS1ron0FD/MxhIfPNp85wDjvXgwE0KJb/tTBmQbcnAOa5Gj+W
	uGf2ykeVQX9+A1H357cChffcoS6RxjYFlPgXStiFgESU8/QnJfAUtXBOQIT6/nTL4jPlX+bBAJC7x
	NlMWensXBuaibrguj+Z6vWDRDh84AVFg2QeVvY5D8Bgmz1JcBnUtfDoabARJ3alARBtC+lbUS5Q8B
	p+OSyXS0GivhAX5DvhoVTle47qyt/cTs/3OarkM4X40dokChox6qGPbbKG300UOodYQq60PUGIv+Y
	Mnruqxbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umXo0-0000000GzH9-0QVv;
	Thu, 14 Aug 2025 13:15:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umVU4-0000000Ge17-3DhJ
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 10:47:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVTv-0000NZ-L1; Thu, 14 Aug 2025 12:46:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVTv-000Ewx-1B;
	Thu, 14 Aug 2025 12:46:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVTv-004nMh-0u;
	Thu, 14 Aug 2025 12:46:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Aug 2025 12:46:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-k3-am62l-updates-v1-5-9934277d8757@pengutronix.de>
References: <20250814-k3-am62l-updates-v1-0-9934277d8757@pengutronix.de>
In-Reply-To: <20250814-k3-am62l-updates-v1-0-9934277d8757@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755168411; l=24579;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=xfzPN2VmJm5MGApe1/gudKjh8K0b0+Yl6HYqmX5V/FQ=;
 b=898zrISXy8+2l/CsRCMreUe7wh87b6u2QcjhkX77aOIpAVGMBJA5HQeyQiO1lRqhMSCbv0vEv
 pTfqGC/jImFBKu3gpvjYBIIE+55ROZwlQ8KXI9LUAKapamhrHyvF2Pq
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_034701_143029_59D17093 
X-CRM114-Status: GOOD (  12.95  )
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
Subject: [PATCH 5/6] ARM: K3: Update yaml files for AM62L
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The yaml files for configuring the boot images need to be different on
AM62x/AM62L. Without it for example the fuses can't be read. These yaml
files are now based on TI U-Boot 11.01.07

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/Makefile             |   2 +-
 arch/arm/mach-k3/board-cfg-am62l.yaml |  32 +++
 arch/arm/mach-k3/schema-am62l.yaml    | 427 ++++++++++++++++++++++++++++++++++
 arch/arm/mach-k3/sec-cfg-am62l.yaml   | 131 +++++------
 4 files changed, 526 insertions(+), 66 deletions(-)

diff --git a/arch/arm/mach-k3/Makefile b/arch/arm/mach-k3/Makefile
index df77832887e992de934623d0a3384ab82454e2cc..c9edde63c143cabfe02167961f83528938d97112 100644
--- a/arch/arm/mach-k3/Makefile
+++ b/arch/arm/mach-k3/Makefile
@@ -22,7 +22,7 @@ $(obj)/combined-sysfw-cfg-am62x.k3cfg: $(srctree)/arch/arm/mach-k3/schema.yaml \
 				       FORCE
 	$(call if_changed,k3_cfg)
 
-$(obj)/combined-sysfw-cfg-am62l.k3cfg: $(srctree)/arch/arm/mach-k3/schema.yaml \
+$(obj)/combined-sysfw-cfg-am62l.k3cfg: $(srctree)/arch/arm/mach-k3/schema-am62l.yaml \
 				       $(obj)/board-cfg-am62x.yaml \
 				       $(obj)/sec-cfg-am62l.yaml \
 				       FORCE
diff --git a/arch/arm/mach-k3/board-cfg-am62l.yaml b/arch/arm/mach-k3/board-cfg-am62l.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..a0297c284a67539d4984ab0486011cc2a853bfc5
--- /dev/null
+++ b/arch/arm/mach-k3/board-cfg-am62l.yaml
@@ -0,0 +1,32 @@
+# SPDX-License-Identifier: GPL-2.0+
+# Copyright (C) 2025 Texas Instruments Incorporated - https://www.ti.com/
+#
+# Board configuration for the emulated AM62Lx
+#
+---
+board-cfg:
+  rev:
+    boardcfg_abi_maj: 0x0
+    boardcfg_abi_min: 0x1
+
+  control:
+    subhdr:
+      magic: 0xC1D3
+      size: 7
+    main_isolation_enable: 0x5A
+    main_isolation_hostid: 0x2
+
+  bm_writer_cfg:
+    subhdr:
+      magic: 0x7D8A
+      size: 5
+    allowed_host: 10
+
+  reserved: [0, 0, 0, 0, 0, 0, 0]
+
+  debug_cfg:
+    subhdr:
+      magic: 0x020C
+      size: 8
+    trace_dst_enables: 0x00
+    trace_src_enables: 0x00
diff --git a/arch/arm/mach-k3/schema-am62l.yaml b/arch/arm/mach-k3/schema-am62l.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..6c7cc78f0179ddaf9e9ec0665214f49ce7bc6ce1
--- /dev/null
+++ b/arch/arm/mach-k3/schema-am62l.yaml
@@ -0,0 +1,427 @@
+# SPDX-License-Identifier: GPL-2.0-only OR MIT
+#
+# Copyright (C) 2025 Texas Instruments Incorporated - https://www.ti.com/
+#
+# Config schema for TI AM62L devices
+#
+
+---
+
+definitions:
+    u8:
+        type: integer
+        minimum: 0
+        maximum: 0xff
+    u16:
+        type: integer
+        minimum: 0
+        maximum: 0xffff
+    u32:
+        type: integer
+        minimum: 0
+        maximum: 0xffffffff
+
+
+
+type: object
+properties:
+    pm-cfg:
+        type: object
+        properties:
+            rev:
+                type: object
+                properties:
+                    boardcfg_abi_maj:
+                        $ref: "#/definitions/u8"
+                    boardcfg_abi_min:
+                        $ref: "#/definitions/u8"
+    board-cfg:
+        type: object
+        properties:
+            rev:
+                type: object
+                properties:
+                    boardcfg_abi_maj:
+                        $ref: "#/definitions/u8"
+                    boardcfg_abi_min:
+                        $ref: "#/definitions/u8"
+            control:
+                type: object
+                properties:
+                    subhdr:
+                        type: object
+                        properties:
+                            magic:
+                                $ref: "#/definitions/u16"
+                            size:
+                                $ref: "#/definitions/u16"
+                    main_isolation_enable:
+                        $ref: "#/definitions/u8"
+                    main_isolation_hostid:
+                        $ref: "#/definitions/u16"
+
+            bm_writer_cfg:
+                type: object
+                properties:
+                    subhdr:
+                        type: object
+                        properties:
+                            magic:
+                                $ref: "#/definitions/u16"
+                            size:
+                                $ref: "#/definitions/u16"
+                    allowed_host:
+                        $ref : "#/definitions/u8"
+
+            reserved:
+                type: array
+                minItems: 7
+                maxItems: 7
+                items:
+                    $ref: "#/definitions/u8"
+
+            debug_cfg:
+                type: object
+                properties:
+                    subhdr:
+                        type: object
+                        properties:
+                            magic:
+                                $ref: "#/definitions/u16"
+                            size:
+                                $ref: "#/definitions/u16"
+                    trace_dst_enables:
+                        $ref: "#/definitions/u16"
+                    trace_src_enables:
+                        $ref: "#/definitions/u16"
+
+    sec-cfg:
+        type: object
+        properties:
+            rev:
+                type: object
+                properties:
+                    boardcfg_abi_maj:
+                        $ref: "#/definitions/u8"
+                    boardcfg_abi_min:
+                        $ref: "#/definitions/u8"
+
+            processor_acl_list:
+                type: object
+                properties:
+                    subhdr:
+                        type: object
+                        properties:
+                            magic:
+                                $ref: "#/definitions/u16"
+                            size:
+                                $ref: "#/definitions/u16"
+                    proc_acl_entries:
+                        type: array
+                        minItems: 32
+                        maxItems: 32
+                        items:
+                            type: object
+                            properties:
+                                processor_id:
+                                    $ref: "#/definitions/u8"
+                                proc_access_master:
+                                    $ref: "#/definitions/u8"
+                                proc_access_secondary:
+                                    type: array
+                                    minItems: 3
+                                    maxItems: 3
+                                    items:
+                                        $ref: "#/definitions/u8"
+            host_hierarchy:
+                type: object
+                properties:
+                    subhdr:
+                        type: object
+                        properties:
+                            magic:
+                                $ref: "#/definitions/u16"
+                            size:
+                                $ref: "#/definitions/u16"
+                    host_hierarchy_entries:
+                        type: array
+                        minItems: 32
+                        maxItems: 32
+                        items:
+                            type: object
+                            properties:
+                                host_id:
+                                    $ref: "#/definitions/u8"
+                                supervisor_host_id:
+                                    $ref: "#/definitions/u8"
+
+            otp_config:
+                type: object
+                properties:
+                    subhdr:
+                        type: object
+                        properties:
+                            magic:
+                                $ref: "#/definitions/u16"
+                            size:
+                                $ref: "#/definitions/u16"
+                    otp_entry:
+                        type: array
+                        minItems: 32
+                        maxItems: 32
+                        items:
+                            type: object
+                            properties:
+                                host_id:
+                                    $ref: "#/definitions/u8"
+                                host_perms:
+                                    $ref: "#/definitions/u8"
+                    write_host_id:
+                        $ref: "#/definitions/u8"
+
+            dkek_config:
+                type: object
+                properties:
+                    subhdr:
+                        type: object
+                        properties:
+                            magic:
+                                $ref: "#/definitions/u16"
+                            size:
+                                $ref: "#/definitions/u16"
+                    allowed_hosts:
+                        type: array
+                        minItems: 4
+                        maxItems: 4
+                        items:
+                            $ref: "#/definitions/u8"
+                    allow_dkek_export_tisci:
+                        $ref: "#/definitions/u8"
+                    rsvd:
+                        type: array
+                        minItems: 3
+                        maxItems: 3
+                        items:
+                            $ref: "#/definitions/u8"
+
+            sa2ul_cfg:
+                type: object
+                properties:
+                    subhdr:
+                        type: object
+                        properties:
+                            magic:
+                                $ref: "#/definitions/u16"
+                            size:
+                                $ref: "#/definitions/u16"
+                    rsvd:
+                        type: array
+                        minItems: 2
+                        maxItems: 4
+                        items:
+                            $ref: "#/definitions/u8"
+                    enable_saul_psil_global_config_writes:
+                        $ref: "#/definitions/u8"
+                    auth_resource_owner:
+                        $ref: "#/definitions/u8"
+
+            sec_dbg_config:
+                type: object
+                properties:
+                    subhdr:
+                        type: object
+                        properties:
+                            magic:
+                                $ref: "#/definitions/u16"
+                            size:
+                                $ref: "#/definitions/u16"
+                    allow_jtag_unlock:
+                        $ref: "#/definitions/u8"
+                    allow_wildcard_unlock:
+                        $ref: "#/definitions/u8"
+                    allowed_debug_level_rsvd:
+                        $ref: "#/definitions/u8"
+                    rsvd:
+                        $ref: "#/definitions/u8"
+                    min_cert_rev:
+                        $ref: "#/definitions/u32"
+                    jtag_unlock_hosts:
+                        type: array
+                        minItems: 4
+                        maxItems: 4
+                        items:
+                            $ref: "#/definitions/u8"
+
+
+            sec_handover_cfg:
+                type: object
+                properties:
+                    subhdr:
+                        type: object
+                        properties:
+                            magic:
+                                $ref: "#/definitions/u16"
+                            size:
+                                $ref: "#/definitions/u16"
+                    handover_msg_sender:
+                        $ref: "#/definitions/u8"
+                    handover_to_host_id:
+                        $ref: "#/definitions/u8"
+                    rsvd:
+                        type: array
+                        minItems: 4
+                        maxItems: 4
+                        items:
+                            $ref: "#/definitions/u8"
+
+    rm-cfg:
+        type: object
+        properties:
+            rm_boardcfg:
+                type: object
+                properties:
+                    rev:
+                        type: object
+                        properties:
+                            boardcfg_abi_maj:
+                                $ref: "#/definitions/u8"
+                            boardcfg_abi_min:
+                                $ref: "#/definitions/u8"
+
+                    host_cfg:
+                        type: object
+                        properties:
+                            subhdr:
+                                type: object
+                                properties:
+                                    magic:
+                                        $ref: "#/definitions/u16"
+                                    size:
+                                        $ref: "#/definitions/u16"
+                            host_cfg_entries:
+                                type: array
+                                minItems: 0
+                                maxItems: 32
+                                items:
+                                    type: object
+                                    properties:
+                                        host_id:
+                                            $ref: "#/definitions/u8"
+                                        allowed_atype:
+                                            $ref: "#/definitions/u8"
+                                        allowed_qos:
+                                            $ref: "#/definitions/u16"
+                                        allowed_orderid:
+                                            $ref: "#/definitions/u32"
+                                        allowed_priority:
+                                            $ref: "#/definitions/u16"
+                                        allowed_sched_priority:
+                                            $ref: "#/definitions/u8"
+                    resasg:
+                        type: object
+                        properties:
+                            subhdr:
+                                type: object
+                                properties:
+                                    magic:
+                                        $ref: "#/definitions/u16"
+                                    size:
+                                        $ref: "#/definitions/u16"
+                            resasg_entries_size:
+                                        $ref: "#/definitions/u16"
+                            reserved:
+                                        $ref: "#/definitions/u16"
+
+            resasg_entries:
+                type: array
+                minItems: 0
+                maxItems: 468
+                items:
+                    type: object
+                    properties:
+                        start_resource:
+                            $ref: "#/definitions/u16"
+                        num_resource:
+                            $ref: "#/definitions/u16"
+                        type:
+                            $ref: "#/definitions/u16"
+                        host_id:
+                            $ref: "#/definitions/u8"
+                        reserved:
+                            $ref: "#/definitions/u8"
+
+    tifs-rm-cfg:
+        type: object
+        properties:
+            rm_boardcfg:
+                type: object
+                properties:
+                    rev:
+                        type: object
+                        properties:
+                            boardcfg_abi_maj:
+                                $ref: "#/definitions/u8"
+                            boardcfg_abi_min:
+                                $ref: "#/definitions/u8"
+
+                    host_cfg:
+                        type: object
+                        properties:
+                            subhdr:
+                                type: object
+                                properties:
+                                    magic:
+                                        $ref: "#/definitions/u16"
+                                    size:
+                                        $ref: "#/definitions/u16"
+                            host_cfg_entries:
+                                type: array
+                                minItems: 0
+                                maxItems: 32
+                                items:
+                                    type: object
+                                    properties:
+                                        host_id:
+                                            $ref: "#/definitions/u8"
+                                        allowed_atype:
+                                            $ref: "#/definitions/u8"
+                                        allowed_qos:
+                                            $ref: "#/definitions/u16"
+                                        allowed_orderid:
+                                            $ref: "#/definitions/u32"
+                                        allowed_priority:
+                                            $ref: "#/definitions/u16"
+                                        allowed_sched_priority:
+                                            $ref: "#/definitions/u8"
+                    resasg:
+                        type: object
+                        properties:
+                            subhdr:
+                                type: object
+                                properties:
+                                    magic:
+                                        $ref: "#/definitions/u16"
+                                    size:
+                                        $ref: "#/definitions/u16"
+                            resasg_entries_size:
+                                        $ref: "#/definitions/u16"
+                            reserved:
+                                        $ref: "#/definitions/u16"
+
+            resasg_entries:
+                type: array
+                minItems: 0
+                maxItems: 468
+                items:
+                    type: object
+                    properties:
+                        start_resource:
+                            $ref: "#/definitions/u16"
+                        num_resource:
+                            $ref: "#/definitions/u16"
+                        type:
+                            $ref: "#/definitions/u16"
+                        host_id:
+                            $ref: "#/definitions/u8"
+                        reserved:
+                            $ref: "#/definitions/u8"
diff --git a/arch/arm/mach-k3/sec-cfg-am62l.yaml b/arch/arm/mach-k3/sec-cfg-am62l.yaml
index bea6891eda249e236b2057cc1e6758de2c47016d..30511ed72b1f96c49adfbb3f672a9935bcb20c80 100644
--- a/arch/arm/mach-k3/sec-cfg-am62l.yaml
+++ b/arch/arm/mach-k3/sec-cfg-am62l.yaml
@@ -9,6 +9,7 @@ sec-cfg:
     rev:
         boardcfg_abi_maj: 0x0
         boardcfg_abi_min: 0x1
+
     processor_acl_list:
         subhdr:
             magic: 0xF1EA
@@ -250,102 +251,102 @@ sec-cfg:
             size: 69
         otp_entry:
             -  # 1
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 2
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 3
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 4
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 5
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 6
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 7
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 8
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 9
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 10
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 11
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 12
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 13
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 14
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 15
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 16
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 17
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 18
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 19
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 20
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 21
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 22
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 23
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 24
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 25
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 26
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 27
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 28
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 29
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 30
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 31
-                host_id: 0
-                host_perms: 0
+                host_id: 10
+                host_perms: 2
             -  # 32
-                host_id: 0
-                host_perms: 0
-        write_host_id: 0
+                host_id: 10
+                host_perms: 2
+        write_host_id: 10
     dkek_config:
         subhdr:
             magic: 0x5170

-- 
2.39.5



