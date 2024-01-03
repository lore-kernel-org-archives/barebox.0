Delivery-date: Wed, 03 Jan 2024 19:33:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63u-002Nnh-1s
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:33:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63n-0004mu-MV
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:33:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tCN7EUxlbOP5Fz/p3O0O0RSnrLj7JanW38DudaX6CpU=; b=yx4t0x5zdSmLM3rI8Ia2kYRrtC
	tTBr90YinC/q0UwZ6YgksoxbOlOyt1GpLTWE5FR2LeCie9KNmXU5n3gQKY2Kp5M52F8wTD8Xdzfu4
	Px1YN0nkVICXEAgxZj2+Mfs3bY1kPc9n/AiHhwtJRUvMPVMvYu3BUB0RsoEk3LCE4tzhQq/wzhjQT
	3ZOB1meIsu6IE+OgLOlju52JTRBfgiEiknLxM//JE2D+Z8MTPopfSUUfRaGoEA09jUNAkl87z5k0g
	rRBzENTDtiQE9S8//d+lHrpsOMm87nFDC/Y/nxEvgJpskyaAzQahz1Q2YI/ufha10+SIVMuXRvb5Z
	wT3gq8sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL62D-00BiRv-1v;
	Wed, 03 Jan 2024 18:32:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61F-00BhJI-0d
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=tCN7EUxlbOP5Fz/p3O0O0RSnrLj7JanW38DudaX6CpU=; b=dhkrpwvbMoe/pzcskrXKfZvqV3
	g0K6geUvpokiuUQLE4sTcfIMUyOvluwyIWolmB0XGmLMFYbCF8G3Nag05v2a7I0iYAD3y6iDnueWs
	/sXswSiaLhwvHhQd2qPMMad3fF5tzZbsFSoCAkXAJQ79kkF/f0JtUU4sw8K7QQmHgUPYXeDWtndI3
	cJ06jjsvtqwcNpoJKsFMqPvQORZCOd1Vy194RkiHTeQoen7lE+ZA00xV03aeVHQGTJPy5TRGD8Cfe
	rTGcSruTI9/WGclkhilnkmusu921ZWVr1zxSNYaLEWabi8yoaNwrCv242A3R8bgB+rUscik/OvG9L
	86wxfNVQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL614-005eC5-2q
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL614-0001i9-7P; Wed, 03 Jan 2024 19:30:58 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-000AyA-Qj; Wed, 03 Jan 2024 19:30:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k3-001j4X-25;
	Wed, 03 Jan 2024 19:13:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:20 +0100
Message-Id: <20240103181312.409668-61-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183059_142728_772C1C46 
X-CRM114-Status: GOOD (  11.70  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 060/112] ARM: pbl: add 64K segment alignment for PE/COFF
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

An EFI stubbed ARM64 kernel can be booted either via EFI or via the
normal boot protocol. We'll want barebox to be able to behave the same,
so extend section alignment to enable this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/memory.h | 20 ++++++++++++++++++++
 arch/arm/lib/pbl.lds.S        | 18 ++++++++++++++++++
 2 files changed, 38 insertions(+)

diff --git a/arch/arm/include/asm/memory.h b/arch/arm/include/asm/memory.h
index 23fbbd8438a1..765b089beb59 100644
--- a/arch/arm/include/asm/memory.h
+++ b/arch/arm/include/asm/memory.h
@@ -3,6 +3,9 @@
 #ifndef __ASM_ARM_MEMORY_H
 #define __ASM_ARM_MEMORY_H
 
+#include <linux/sizes.h>
+
+#ifndef __ASSEMBLY__
 #include <memory.h>
 
 #include <linux/const.h>
@@ -13,4 +16,21 @@ static inline int arm_add_mem_device(const char* name, resource_size_t start,
 	return barebox_add_memory_bank(name, start, size);
 }
 
+#endif
+
+
+/*
+ * Alignment of barebox PBL segments (e.g. .text, .data).
+ *
+ *  4  B granule:  Same flat rwx mapping for everything
+ *  4 KB granule:  16 level 3 entries, with contiguous bit
+ * 16 KB granule:   4 level 3 entries, without contiguous bit
+ * 64 KB granule:   1 level 3 entry
+ */
+#ifdef CONFIG_EFI_PAYLOAD
+#define PBL_SEGMENT_ALIGN		SZ_64K
+#else
+#define PBL_SEGMENT_ALIGN		4
+#endif
+
 #endif	/* __ASM_ARM_MEMORY_H */
diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index cafb27b2d55e..95929d7558bc 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -5,6 +5,24 @@
 #include <asm/barebox.lds.h>
 #include <asm-generic/memory_layout.h>
 #include <asm-generic/pointer.h>
+#include <asm/memory.h>
+
+/*
+ * The size of the PE/COFF section that covers the barebox image, which
+ * runs from _stext to _edata, must be a round multiple of the PE/COFF
+ * FileAlignment, which we set to its minimum value of 0x200. '_stext'
+ * itself must be 4 KB aligned, because that's what the adrp instructions
+ * expects, so padding out _edata to a 0x200 aligned boundary should be
+ * sufficient.
+ */
+PECOFF_FILE_ALIGNMENT = 0x200;
+
+#ifdef CONFIG_EFI_STUB
+#define PECOFF_EDATA_PADDING   \
+       .pecoff_edata_padding : { BYTE(0); . = ALIGN(PECOFF_FILE_ALIGNMENT); }
+#else
+#define PECOFF_EDATA_PADDING
+#endif
 
 #ifdef CONFIG_PBL_RELOCATABLE
 #define BASE	0x0
-- 
2.39.2



