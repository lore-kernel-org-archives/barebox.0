Delivery-date: Thu, 20 Mar 2025 06:17:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Hd-001l01-2f
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 06:17:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Hc-0002XN-By
	for lore@pengutronix.de; Thu, 20 Mar 2025 06:17:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fjJwC7wAwkcCJLH4TZ0Bd0O0EOAONbaYiEBaZajsJ5U=; b=msrhWLgU55aBUUE6JG5gLVndoO
	A4a/+nVaGr+0xEjLSCSiiHeTGe600No3SsSlmlsR5128QjUKW7QBsc3Eyur3pT24qCth5PtTk+BlM
	AR6xTMsibLzeQCJIsE0911pnWFl17z6dLtt8/MULWNYzzVqLQFltOHdRmsMoSfF82hZi2JNW+m+/L
	AvSiFnifcUo1HztN/D8vwMXteljtlsQQUj+15Zavkgj3hy9y/Kac1Ul39N8ah0Jc5dmXNjihiuFmJ
	o/Ct61hufE3ZFqY/uNPR29ojDOM1qOibdXXa+EaD3Sk+1Mnb1ufrOPGTYqU/XJGz69fVQKhAIVOm4
	XOsyBrEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8Gx-0000000BBgK-08Yj;
	Thu, 20 Mar 2025 05:16:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8Gt-0000000BBei-0pBJ
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 05:16:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Gq-0001yU-Sj; Thu, 20 Mar 2025 06:16:44 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Go-000huN-1b;
	Thu, 20 Mar 2025 06:16:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Go-007EvV-2a;
	Thu, 20 Mar 2025 06:16:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Mar 2025 06:16:35 +0100
Message-Id: <20250320051641.1721377-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250320051641.1721377-1-a.fatoum@pengutronix.de>
References: <20250320051641.1721377-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_221647_241923_F54820E8 
X-CRM114-Status: UNSURE (   9.86  )
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
Subject: [PATCH master 2/8] include: asm-generic/pointer.h: fix ASM_PTR definition for i386
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For GNU as on i386, a .word is 16-bit wide, unlikes ARM, where it's
32-bit. The code in asm-generic/pointer.h expects .word to be
32-bit wide though, therefore to switch to .long.

Unlike C's long, an assembly .long is always 32-bit (and thus
identical to .int).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch to fix compile error with IMD on i386 sandbox
---
 include/asm-generic/pointer.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/asm-generic/pointer.h b/include/asm-generic/pointer.h
index 89817ce59ebc..fbd1a831b8be 100644
--- a/include/asm-generic/pointer.h
+++ b/include/asm-generic/pointer.h
@@ -16,12 +16,12 @@
 #endif
 #elif __SIZEOF_POINTER__ == 4
 #ifdef __ASSEMBLY__
-#define ASM_PTR		.word
+#define ASM_PTR		.long
 #define ASM_SZPTR	4
 #define ASM_LGPTR	2
 #define ASM_LD_PTR(x)	LONG(x)
 #else
-#define ASM_PTR		".word"
+#define ASM_PTR		".long"
 #define ASM_SZPTR	"4"
 #define ASM_LGPTR	"2"
 #endif
-- 
2.39.5



