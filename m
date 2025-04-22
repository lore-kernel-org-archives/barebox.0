Delivery-date: Tue, 22 Apr 2025 10:39:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u79AG-003ydK-0C
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:39:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u79A9-0002an-UY
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:39:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RJDsF0+ryYSX1yDh8c/9V9sSDYmxMCZzVFb1pLxlIV4=; b=SLR0hjIkFWdnU3dFfy+twBdgbY
	h/m1Hh1MLcXK3mXD/r6jeoJBY/xTQxdjemHBw8rc2bGBCEQx4KJgkPHUBKrOUvUww4XpoSNpYbUD8
	pC7Am/zmnKBIQSx5vgMTxW2IEmUyzGa1jYRPRQ4js2acWNoup+YBA14JWUz0kX9d85adLz13Kuv6f
	SVjCdKuflg4dlxYi1HhHnh74YTbe5lHkGJhmhtZkisj4Ypy7S38zW/7323K2EkijBOz+3MRG01WPu
	gi6UGXH/AGmmGVYI2V7Ir3od9Qbt70ZF8nfcLWpXnobl5lRpZJYhmO9peE9vESv78pBjt8xs0QhPB
	klZZI88g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u799H-00000006Mtq-29Pl;
	Tue, 22 Apr 2025 08:38:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78VI-00000006CbE-3hAn
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:57:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78VH-0000ow-Om
	for barebox@lists.infradead.org; Tue, 22 Apr 2025 09:57:15 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78VH-001Vwg-1o
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:57:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78VH-000vdi-1V
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:57:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Apr 2025 09:57:12 +0200
Message-Id: <20250422075714.221527-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005716_933340_E2EE2AF0 
X-CRM114-Status: UNSURE (   7.85  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] ARM: drop unused mmiocpy/mmioset symbols
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

These are unused and we have memcpy_toio/fromio and memset_io
functions that should be used instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/lib32/memcpy.S | 2 --
 arch/arm/lib32/memset.S | 2 --
 2 files changed, 4 deletions(-)

diff --git a/arch/arm/lib32/memcpy.S b/arch/arm/lib32/memcpy.S
index 90f2b645aa0d..ffa4c8f394bf 100644
--- a/arch/arm/lib32/memcpy.S
+++ b/arch/arm/lib32/memcpy.S
@@ -56,11 +56,9 @@ UNWIND( .save	{r0, \regs}		)
 /* Prototype: void *memcpy(void *dest, const void *src, size_t n); */
 
 ENTRY(__memcpy)
-ENTRY(mmiocpy)
 WEAK(memcpy)
 
 #include "copy_template.S"
 
 ENDPROC(memcpy)
-ENDPROC(mmiocpy)
 ENDPROC(__memcpy)
diff --git a/arch/arm/lib32/memset.S b/arch/arm/lib32/memset.S
index de75ae4d5ab4..b0c0e11e991b 100644
--- a/arch/arm/lib32/memset.S
+++ b/arch/arm/lib32/memset.S
@@ -14,7 +14,6 @@
 	.align	5
 
 ENTRY(__memset)
-ENTRY(mmioset)
 WEAK(memset)
 UNWIND( .fnstart         )
 	and	r1, r1, #255		@ cast to unsigned char
@@ -132,7 +131,6 @@ UNWIND( .fnstart            )
 	b	1b
 UNWIND( .fnend   )
 ENDPROC(memset)
-ENDPROC(mmioset)
 ENDPROC(__memset)
 
 ENTRY(__memset32)
-- 
2.39.5



