Delivery-date: Thu, 18 Aug 2022 07:06:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXk1-002c78-K0
	for lore@lore.pengutronix.de; Thu, 18 Aug 2022 07:06:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXjy-0006yx-ST
	for lore@pengutronix.de; Thu, 18 Aug 2022 07:06:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oRaGY1Pf8XiUuHVKJs9wD2pHNOFCA6g2uIBRPH64nAA=; b=q8aJhITSbU0YLa6z0US95c4N//
	NIPlb1OtkM9jVVZd3BaOVV9llSjJLew0GRUDVgySX12ivikuBvGLfgnrKyEJWxuvuwkBbTJR5n3iV
	2BI/0uCp8JcdVIpsZluOyoMnnvKhpareRVBck1jUuKhp+rcrme+Vm/qAxIuoC/Bo0deFFUv/2YEoC
	llbEiezkgOBkTFpRhHUor9Gp03Nb47u+rwy/WfOBs5RvVWTKEA7b0rUEGzoD/bKCmM4rIjSc8yvwI
	gOi0VDOp7jctwaIqVyERWI2MDiIB6227rFXM5IJMCiC9WbuLpHo69C247bq38HHNd4QJZWKmiIHnJ
	xpKioPzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXiI-00FLx4-Oo; Thu, 18 Aug 2022 05:05:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXiA-00FLn6-AB
	for barebox@lists.infradead.org; Thu, 18 Aug 2022 05:04:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXi5-0006TO-SS; Thu, 18 Aug 2022 07:04:49 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXi5-000S1w-6D; Thu, 18 Aug 2022 07:04:49 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXi4-008hJH-3X; Thu, 18 Aug 2022 07:04:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Aug 2022 07:04:47 +0200
Message-Id: <20220818050447.2072932-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220818050447.2072932-1-a.fatoum@pengutronix.de>
References: <20220818050447.2072932-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_220454_390515_CA7FADFC 
X-CRM114-Status: GOOD (  13.29  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/4] pbl: replace __piggydata_end with __image_end
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

__piggydata_end and __image_end used to be synonyms before the addition
of external firmware. Now that external firmware is located after
__piggydata_end, code using it needs to be revisited.

There's no reason to have code reference __piggydata_end. Either they
want all the rest of the image, so they should use __image_end instead
or they want just the piggy data, in which case they can read the data
size embedded into the piggydata itself.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/setupc_64.S       | 2 +-
 arch/arm/lib/pbl.lds.S         | 1 -
 arch/arm/mach-imx/romapi.c     | 2 +-
 arch/mips/lib/pbl.lds.S        | 3 ++-
 arch/riscv/lib/pbl.lds.S       | 2 --
 include/asm-generic/sections.h | 1 -
 6 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/arch/arm/cpu/setupc_64.S b/arch/arm/cpu/setupc_64.S
index b5f4a643fa42..d64281c148fc 100644
--- a/arch/arm/cpu/setupc_64.S
+++ b/arch/arm/cpu/setupc_64.S
@@ -29,7 +29,7 @@ ENDPROC(setup_c)
 					/* x0: target address */
 #ifdef __PBL__
 ENTRY(relocate_to_adr_full)
-	ldr	x2, =__piggydata_end
+	ldr	x2, =__image_end
 	b	1f
 #endif
 
diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 44ad5b335356..d48f27bc43b5 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -99,7 +99,6 @@ SECTIONS
 	.piggydata : {
 		*(.piggydata)
 	}
-	__piggydata_end = .;
 
 	. = ALIGN(4);
 	__pblext_start = .;
diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
index f7d421d73757..5d00d71154d7 100644
--- a/arch/arm/mach-imx/romapi.c
+++ b/arch/arm/mach-imx/romapi.c
@@ -28,7 +28,7 @@ static int imx8m_bootrom_load_image(struct rom_api *rom_api)
 {
 	return imx8m_bootrom_load(rom_api,
 				  (void *)MX8M_ATF_BL33_BASE_ADDR + barebox_pbl_size,
-				  __piggydata_end - __piggydata_start);
+				  __image_end - __piggydata_start);
 }
 
 int imx8mp_bootrom_load_image(void)
diff --git a/arch/mips/lib/pbl.lds.S b/arch/mips/lib/pbl.lds.S
index 75069b0c50d6..413f24b9ab05 100644
--- a/arch/mips/lib/pbl.lds.S
+++ b/arch/mips/lib/pbl.lds.S
@@ -48,7 +48,8 @@ SECTIONS
 	.piggydata : {
 		*(.piggydata)
 	}
-	__piggydata_end = . - BASE;
+
+	.image_end : { KEEP(*(.__image_end)) }
 
 	pbl_image_size =  .;
 
diff --git a/arch/riscv/lib/pbl.lds.S b/arch/riscv/lib/pbl.lds.S
index e238b2bfd34e..ccf64fc6d3aa 100644
--- a/arch/riscv/lib/pbl.lds.S
+++ b/arch/riscv/lib/pbl.lds.S
@@ -74,8 +74,6 @@ SECTIONS
 	.piggydata : {
 		*(.piggydata)
 	}
-	__piggydata_end = .;
-
 	.image_end : { KEEP(*(.__image_end)) }
 
 	pbl_image_size =  .;
diff --git a/include/asm-generic/sections.h b/include/asm-generic/sections.h
index e54123de0ea7..0b2ed5615bd6 100644
--- a/include/asm-generic/sections.h
+++ b/include/asm-generic/sections.h
@@ -11,7 +11,6 @@ extern char _end[];
 extern char __image_start[];
 extern char __image_end[];
 extern char __piggydata_start[];
-extern char __piggydata_end[];
 extern void *_barebox_image_size;
 extern void *_barebox_bare_init_size;
 extern void *_barebox_pbl_size;
-- 
2.30.2



