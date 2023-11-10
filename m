Delivery-date: Fri, 10 Nov 2023 13:59:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6s-005rVA-06
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 13:59:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6q-0003Il-QZ
	for lore@pengutronix.de; Fri, 10 Nov 2023 13:59:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zh9y1b63TjmLPbJS5vEIiLGOoQ3M2ouaB575AkePakY=; b=C2oHEognhcAZZpbbC5hDC01uYG
	3QPxWhjSUmb43QsIHlYW/bxh5wqieayEfOfGq1vKllgB1Gld+i3FM3JMIS59O6wbpN34ygkYeXFCl
	rZy5qVSAizcj0oWNF24V6oNndDGmAc9YjMQTUUlmyPjRN6xZVwAcphVSp8x0zjfiUJ+fLSjFiPRYs
	HrCJbZ+CNQIlVrBBEPsrkw6wvVCmiBa5h8y/Br5blV6PUXECQKeD7Kc+st5S8wPd8T5vSKZtzCiCT
	9eVROaK05Iy1D90ASgp+KYSOVVoFHdpb/0SGk8SSRTn8UNyZYQW3Y/brIXVKMWFqlTRZZ00v2yFNJ
	MY16VP3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5k-008kDD-1a;
	Fri, 10 Nov 2023 12:58:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5a-008k0H-1K
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 12:58:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Zh9y1b63TjmLPbJS5vEIiLGOoQ3M2ouaB575AkePakY=; b=UJlh/xwV1mi25Sd14UZ467CXsB
	JkNzCgr6TBeILAhz343IQlxcUWspBqaEFZqLaqC/4ixypJSZWEruaOZQrnH3pWXG7J+ayO87FW3OD
	Wxc9U3IyEDYAYco/UUamAalCvrd3tEk6aAu6L327lNmlfIFu8us8eMe3pc4WQ90+6MshJxzK1quKQ
	gl51+6KInm67Sw3devqkw+sW8icKfAnTul2tuuKQSTRCA32m1o6SCjGobxIF/fJd8HuVdsT72lyLO
	j109YVbHa/b1IKeYXKknyPHSD0AyIa/DoFacbpUnEqSMrUHX+NrkbVTIlMraMo54Z0/8w0Sb2H1pa
	zRj5lnFA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5S-00Fbul-19
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 12:58:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5I-00027I-1h; Fri, 10 Nov 2023 13:58:04 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-0081Xl-4f; Fri, 10 Nov 2023 13:58:03 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-008s26-00;
	Fri, 10 Nov 2023 13:58:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 13:57:55 +0100
Message-Id: <20231110125800.1901232-21-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110125800.1901232-1-s.hauer@pengutronix.de>
References: <20231110125800.1901232-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_125814_834284_19B091D8 
X-CRM114-Status: GOOD (  13.89  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 20/25] ARM: i.MX: atf: add imx93_load_and_start_image_via_tfa()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/atf.c  | 34 ++++++++++++++++++++++++++++++++++
 include/mach/imx/atf.h   |  2 ++
 include/mach/imx/xload.h |  1 +
 3 files changed, 37 insertions(+)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 1a0ac72fff..e1a89ef543 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -329,3 +329,37 @@ __noreturn void imx8mq_load_and_start_image_via_tfa(void)
 
 	imx8m_atf_start_bl31(bl31, bl31_size, (void *)MX8MQ_ATF_BL31_BASE_ADDR);
 }
+
+void __noreturn imx93_load_and_start_image_via_tfa(void)
+{
+	unsigned long atf_dest = MX93_ATF_BL31_BASE_ADDR;
+	void __noreturn (*bl31)(void) = (void *)atf_dest;
+	const void *tfa;
+	size_t tfa_size;
+
+	/*
+	 * On completion the TF-A will jump to MX93_ATF_BL33_BASE_ADDR
+	 * in EL2. Copy the image there, but replace the PBL part of
+	 * that image with ourselves. On a high assurance boot only the
+	 * currently running code is validated and contains the checksum
+	 * for the piggy data, so we need to ensure that we are running
+	 * the same code in DRAM.
+	 *
+	 * The second purpose of this memcpy is for USB booting. When booting
+	 * from USB the image comes in as a stream, so the PBL is transferred
+	 * only once. As we jump into the PBL again in SDRAM we need to copy
+	 * it there. The USB protocol transfers data in chunks of 1024 bytes,
+	 * so align the copy size up to the next 1KiB boundary.
+	 */
+	memcpy((void *)MX93_ATF_BL33_BASE_ADDR, __image_start, ALIGN(barebox_pbl_size, 1024));
+
+	get_builtin_firmware(imx93_bl31_bin, &tfa, &tfa_size);
+
+	memcpy(bl31, tfa, tfa_size);
+
+	asm volatile("msr sp_el2, %0" : :
+		     "r" (MX93_ATF_BL33_BASE_ADDR - 16) :
+		     "cc");
+	bl31();
+	__builtin_unreachable();
+}
diff --git a/include/mach/imx/atf.h b/include/mach/imx/atf.h
index 587e778635..fb367d6a70 100644
--- a/include/mach/imx/atf.h
+++ b/include/mach/imx/atf.h
@@ -17,5 +17,7 @@
 #define MX8M_ATF_BL33_BASE_ADDR		0x40200000
 #define MX8MM_ATF_BL33_BASE_ADDR	MX8M_ATF_BL33_BASE_ADDR
 #define MX8MQ_ATF_BL33_BASE_ADDR	MX8M_ATF_BL33_BASE_ADDR
+#define MX93_ATF_BL31_BASE_ADDR		0x204e0000
+#define MX93_ATF_BL33_BASE_ADDR		0x80200000
 
 #endif
diff --git a/include/mach/imx/xload.h b/include/mach/imx/xload.h
index 11c2738c2d..2c2d2fa3c5 100644
--- a/include/mach/imx/xload.h
+++ b/include/mach/imx/xload.h
@@ -30,6 +30,7 @@ void __noreturn imx8mm_load_and_start_image_via_tfa(void);
 void __noreturn imx8mn_load_and_start_image_via_tfa(void);
 void __noreturn imx8mp_load_and_start_image_via_tfa(void);
 void __noreturn imx8mq_load_and_start_image_via_tfa(void);
+void __noreturn imx93_load_and_start_image_via_tfa(void);
 
 int imx_load_image(ptrdiff_t address, ptrdiff_t entry, u32 offset,
 		   u32 ivt_offset, bool start, unsigned int alignment,
-- 
2.39.2



