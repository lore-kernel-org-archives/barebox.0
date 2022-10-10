Delivery-date: Mon, 10 Oct 2022 08:13:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm2W-0033hA-0o
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:13:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm2T-0001Hx-34
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:13:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VgUWgme3miZ+660YvCMOCiX0NW7XkgSd7D1kSi7b4eM=; b=Br39HadyispxD3wmb3j0wipWHj
	dKFN1JdGqJydNZhdcxFZLdrjOfFHIFEo26JKc1FDoQhQ2dHZGvtmisbuFUphIcSLGQ5VUwI8FQ9uz
	QH0UzoZIBMtCA2ZTdYq90c4d/jLDXF+u9jsuk7d8vAVeDY+kSCnAy3sN4p1ed87faAh4LOsMFuMQ3
	l9lsq6CImHpqTH3PThLsUfjaqT/8HAOHZROPVC5fR0a9aNl/SzPtm5u0nov//9Maz7/oUn4fE68Sj
	jGeP8042tXihT1cCDHMyYiSXAw6pSSn9bLbDD9qsXORPk3o36mo70kwhL0rckL2f6vYY7bp9Kfoxg
	GbIgR/Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm0x-00HAhB-Jv; Mon, 10 Oct 2022 06:11:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm0e-00HAWi-7C
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:11:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0d-0000Yr-06; Mon, 10 Oct 2022 08:11:27 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0c-000dAB-Aa; Mon, 10 Oct 2022 08:11:26 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0a-008kAz-6M; Mon, 10 Oct 2022 08:11:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Oct 2022 08:11:19 +0200
Message-Id: <20221010061122.2084009-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221010061122.2084009-1-a.fatoum@pengutronix.de>
References: <20221010061122.2084009-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_231128_277318_C7D3FC08 
X-CRM114-Status: GOOD (  10.89  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/10] ARM: lds: define and use BAREBOX_RELOCATION_TABLE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The structure of the relocation table is one of the main differences
between different architectures' linker scripts. Hoist it out for ARM
into <asm/barebox.lds.h>.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/barebox.lds.h | 15 +++++++++++++++
 arch/arm/lib/pbl.lds.S             | 12 +-----------
 arch/arm/lib32/barebox.lds.S       |  8 +-------
 arch/arm/lib64/barebox.lds.S       |  8 +-------
 4 files changed, 18 insertions(+), 25 deletions(-)

diff --git a/arch/arm/include/asm/barebox.lds.h b/arch/arm/include/asm/barebox.lds.h
index e358064ec6f8..b9c824c4dbf1 100644
--- a/arch/arm/include/asm/barebox.lds.h
+++ b/arch/arm/include/asm/barebox.lds.h
@@ -12,4 +12,19 @@
 #define BAREBOX_OUTPUT_ARCH	"aarch64"
 #endif
 
+#ifdef CONFIG_CPU_32
+#define BAREBOX_RELOCATION_TYPE	rel
+#else
+#define BAREBOX_RELOCATION_TYPE	rela
+#endif
+
+#define BAREBOX_RELOCATION_TABLE					\
+	.rel_dyn_start : { *(.__rel_dyn_start) }			\
+	.BAREBOX_RELOCATION_TYPE.dyn : { *(.BAREBOX_RELOCATION_TYPE*) }	\
+	.rel_dyn_end : { *(.__rel_dyn_end) }				\
+	.__dynsym_start :  { *(.__dynsym_start) }			\
+	.dynsym : { *(.dynsym) }					\
+	.__dynsym_end : { *(.__dynsym_end) }
+
+
 #include <asm-generic/barebox.lds.h>
diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 42c7a4f91fb4..ae1babdcfd27 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -58,17 +58,7 @@ SECTIONS
 	}
 	__shasum_end = .;
 
-	.rel_dyn_start : { *(.__rel_dyn_start) }
-#ifdef CONFIG_CPU_32
-	.rel.dyn : { *(.rel*) }
-#else
-	.rela.dyn : { *(.rela*) }
-#endif
-	.rel_dyn_end : { *(.__rel_dyn_end) }
-
-	.__dynsym_start :  { *(.__dynsym_start) }
-	.dynsym : { *(.dynsym) }
-	.__dynsym_end : { *(.__dynsym_end) }
+	BAREBOX_RELOCATION_TABLE
 
 	pbl_code_size =  . - BASE;
 
diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index ea66b3c3feaf..ec145569bea3 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -71,13 +71,7 @@ SECTIONS
 
 	. = .;
 
-	.rel_dyn_start : { *(.__rel_dyn_start) }
-	.rel.dyn : { *(.rel*) }
-	.rel_dyn_end : { *(.__rel_dyn_end) }
-
-	.__dynsym_start :  { *(.__dynsym_start) }
-	.dynsym : { *(.dynsym) }
-	.__dynsym_end : { *(.__dynsym_end) }
+	BAREBOX_RELOCATION_TABLE
 
 	_edata = .;
 	.image_end : { *(.__image_end) }
diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index e2049753fdd5..de777ddb542b 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -49,13 +49,7 @@ SECTIONS
 
 	.barebox_imd : { BAREBOX_IMD }
 
-	.rel_dyn_start : { *(.__rel_dyn_start) }
-	.rela.dyn : { *(.rela*) }
-	.rel_dyn_end : { *(.__rel_dyn_end) }
-
-	.__dynsym_start :  { *(.__dynsym_start) }
-	.dynsym : { *(.dynsym) }
-	.__dynsym_end : { *(.__dynsym_end) }
+	BAREBOX_RELOCATION_TABLE
 
 	_edata = .;
 
-- 
2.30.2



