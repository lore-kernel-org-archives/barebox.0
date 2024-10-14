Delivery-date: Mon, 14 Oct 2024 15:33:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LCe-004H9o-08
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:33:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LCd-0004CV-AM
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:33:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xVyc7zHQIk2w+ifl/rbhfUynYwyfeTh607fVZE16/i4=; b=mz4fV013MtF44O5yVWsNLBp4hq
	37yl1B21yRQ35+RY0K7AqSZyAuQIA5LC5hBZwHdVdt5+TyLrOOnK0QVvldi7UJ8rMNHF6gWMF04dZ
	o9AyPLEuB4HmaEvihtOnixceJRdYwHzj4XsUZtlm3xW5Lrmc+DrPlCf2dMGRlYe3spucfNm2CljGv
	R9OnH0DlVne9L5PYdL8rG9HLIZ73CudeHIv4S3EzZAXCBe1/oPLOJ3eKYbzjI5IVDboII2FcJZ7g4
	H0avlSyfG/uvUMNbYXM9fADCm3KWcs70yG9LQ/0/Sr9dPbwvRueEjHJWMViVol4p5vaTVKQk03Rf4
	5UT15duw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LCC-00000005IpZ-1YEB;
	Mon, 14 Oct 2024 13:33:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JsR-000000051rN-36rv
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 12:08:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JsN-0002l0-Ql; Mon, 14 Oct 2024 14:08:39 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JsN-001msx-DF; Mon, 14 Oct 2024 14:08:39 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JPu-00BrES-0P;
	Mon, 14 Oct 2024 13:39:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:39:09 +0200
Message-Id: <20241014113912.2826190-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014113912.2826190-1-a.fatoum@pengutronix.de>
References: <20241014113912.2826190-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_050843_877358_09045E11 
X-CRM114-Status: GOOD (  10.96  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 10/13] bitops: fix missing defintion for DIV_ROUND_UP definitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Macros like BITS_TO_LONGS defined in <linux/bitops.h> expand to
DIV_ROUND_UP, which isn't defined in the same file.

We can't easily include <linux/math.h> however as this leads to a
recursive file inclusion:

In file included from ./include/asm-generic/div64.h:53,
                 from ./include/linux/math64.h:7,
                 from ./include/linux/math.h:6,
                 from ./include/linux/bitops.h:9,
                 from ./include/clock.h:7,
                 from ./include/console.h:15,
                 from ./include/stdio.h:6,
                 from ./include/common.h:10,
                 from ./common/partitions/dos.c:15:
 ./include/linux/log2.h: In function '__ilog2_u32':
 ./include/linux/log2.h:28:16: error: implicit declaration of function 'fls'
		[-Wimplicit-function-declaration]
    28 |         return fls(n) - 1;

Fix this by doing it like Linux does and use the UAPI
__KERNEL_DIV_ROUND_UP definition instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/bitops.h | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index 7646e1563478..44602ad5af84 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -7,12 +7,14 @@
 #include <linux/const.h>
 #include <linux/bits.h>
 
+#include <uapi/linux/kernel.h>
+
 #ifdef	__KERNEL__
 #define BITS_PER_TYPE(type)	(sizeof(type) * BITS_PER_BYTE)
-#define BITS_TO_LONGS(nr)	DIV_ROUND_UP(nr, BITS_PER_TYPE(long))
-#define BITS_TO_U64(nr)		DIV_ROUND_UP(nr, BITS_PER_TYPE(u64))
-#define BITS_TO_U32(nr)		DIV_ROUND_UP(nr, BITS_PER_TYPE(u32))
-#define BITS_TO_BYTES(nr)	DIV_ROUND_UP(nr, BITS_PER_TYPE(char))
+#define BITS_TO_LONGS(nr)	__KERNEL_DIV_ROUND_UP(nr, BITS_PER_TYPE(long))
+#define BITS_TO_U64(nr)		__KERNEL_DIV_ROUND_UP(nr, BITS_PER_TYPE(u64))
+#define BITS_TO_U32(nr)		__KERNEL_DIV_ROUND_UP(nr, BITS_PER_TYPE(u32))
+#define BITS_TO_BYTES(nr)	__KERNEL_DIV_ROUND_UP(nr, BITS_PER_TYPE(char))
 #define BYTES_TO_BITS(nb)	(((BITS_PER_LONG * (nb)) / sizeof(long)))
 #endif
 
-- 
2.39.5



