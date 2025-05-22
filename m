Delivery-date: Thu, 22 May 2025 21:00:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uIB9G-001cqF-0x
	for lore@lore.pengutronix.de;
	Thu, 22 May 2025 21:00:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uIB9F-0000Ph-0D
	for lore@pengutronix.de; Thu, 22 May 2025 21:00:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k8p5MubA5QDOzIMQ8H2Ktdtd6AlzBu+sMZzz/UNcy2w=; b=3tCHfBtxO36PNWK7togJhsHnFV
	jm/9ZFd7wXUpnLVJFDb5gSTdRQmAtdRnkI5HyDJqh6mvEpd8C4wcdHCwdQODOZWaxInQgX0wblrXa
	x55E/ehIP2atkvXN8hLyaRyjAKHjoroDhaG/gqYbPJpv/Th22s7Lt4do5BUq8rabumgH5qpLuQz55
	UQXD74bR5RLSIH0bvx6GDieucirtI4ZSIExrTt3iy4BuhWMJQH9eTsodHpy2JXZMp3i2Fk5ymUJqK
	GsAFuEz/IVnyy+HD51n0dIuIMxtyGT0/nGz8/DOTntul3xHjuhVSu2CV76hc0F8JGK5XRiuqNZ109
	Xfer6IaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIB8f-00000001vYe-0bIR;
	Thu, 22 May 2025 18:59:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIB8I-00000001vUF-0aVk
	for barebox@lists.infradead.org;
	Thu, 22 May 2025 18:59:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uIB8G-0008H0-6u; Thu, 22 May 2025 20:59:08 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uIB8G-000mMV-00;
	Thu, 22 May 2025 20:59:08 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uIB8F-002Agr-2y;
	Thu, 22 May 2025 20:59:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 May 2025 20:59:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-uncompress-fixes-v1-1-18e796fa5e45@pengutronix.de>
References: <20250522-uncompress-fixes-v1-0-18e796fa5e45@pengutronix.de>
In-Reply-To: <20250522-uncompress-fixes-v1-0-18e796fa5e45@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747940347; l=3448;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=uvTyUURS90P/ITvKcG7uIssDjtOSuwnPgz3ti4XSSPU=;
 b=xUT9oLsalTk7XzGB4NiJnqwbK54UojwKOOUs2Wn4tz+bJOjcbxY8tkIeAui4p17sVPRFNJ+bF
 GJkDdixbaSlDcnz0168f3EyHmC9Be98rUgTTK3iO448TVbd0zJVLPkq
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_115910_245196_48DD011C 
X-CRM114-Status: GOOD (  17.36  )
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
Subject: [PATCH 1/2] initrd: fix lz4 decompress with initrd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is an adoption of the corresponding Linux commit:

| commit 4d4b866aee039d609c0b40e7e5b27204607ce614
| Author: Yinghai Lu <yinghai@kernel.org>
| Date:   Fri Aug 8 14:23:10 2014 -0700
|
| During testing initrd (>2G) support, find decompress/lz4 does not work
| with initrd at all.
|
| decompress_* should support:
| 1. inbuf[]/outbuf[] for kernel preboot.
| 2. inbuf[]/flush() for initramfs
| 3. fill()/flush() for initrd.
|
| in the unlz4 does not handle case 3, as input len is passed as 0, and it
| failed in first try.
|
| Fix that add one extra if (fill) checking, and get out if EOF from the
| fill().
|
| Signed-off-by: Yinghai Lu <yinghai@kernel.org>
| Cc: Kyungsik Lee <kyungsik.lee@lge.com>
| Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
| Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>

In barebox case 3 is used when called from uncompress_fd_to_fd() which
is used in the uncompress command. This seems to never have worked with
LZ4 compressed files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/decompress_unlz4.c | 65 +++++++++++++++++++++++++++++++++-----------------
 1 file changed, 43 insertions(+), 22 deletions(-)

diff --git a/lib/decompress_unlz4.c b/lib/decompress_unlz4.c
index a18e6591e9fd1e63158ac58c6d265df4f002fdf5..2bb30e71bb1ca1d73ae20f815f0a2be93d4ea7da 100644
--- a/lib/decompress_unlz4.c
+++ b/lib/decompress_unlz4.c
@@ -90,13 +90,20 @@ static inline int unlz4(u8 *input, long in_len,
 	if (posp)
 		*posp = 0;
 
-	if (fill)
-		fill(inp, 4);
+	if (fill) {
+		size = fill(inp, 4);
+		if (size < 4) {
+			error("data corrupted");
+			goto exit_2;
+		}
+	}
 
 	chunksize = get_unaligned_le32(inp);
 	if (chunksize == ARCHIVE_MAGICNUMBER) {
-		inp += 4;
-		size -= 4;
+		if (!fill) {
+			inp += 4;
+			size -= 4;
+		}
 	} else {
 		error("invalid header");
 		goto exit_2;
@@ -107,29 +114,44 @@ static inline int unlz4(u8 *input, long in_len,
 
 	for (;;) {
 
-		if (fill)
-			fill(inp, 4);
+		if (fill) {
+			size = fill(inp, 4);
+			if (size == 0)
+				break;
+			if (size < 4) {
+				error("data corrupted");
+				goto exit_2;
+			}
+		}
 
 		chunksize = get_unaligned_le32(inp);
 		if (chunksize == ARCHIVE_MAGICNUMBER) {
-			inp += 4;
-			size -= 4;
+			if (!fill) {
+				inp += 4;
+				size -= 4;
+			}
 			if (posp)
 				*posp += 4;
 			continue;
 		}
-		inp += 4;
-		size -= 4;
+
 
 		if (posp)
 			*posp += 4;
 
-		if (fill) {
+		if (!fill) {
+			inp += 4;
+			size -= 4;
+		} else {
 			if (chunksize > lz4_compressbound(uncomp_chunksize)) {
 				error("chunk length is longer than allocated");
 				goto exit_2;
 			}
-			fill(inp, chunksize);
+			size = fill(inp, chunksize);
+			if (size < chunksize) {
+				error("data corrupted");
+				goto exit_2;
+			}
 		}
 #ifdef PREBOOT
 		if (out_len >= uncomp_chunksize) {
@@ -155,18 +177,17 @@ static inline int unlz4(u8 *input, long in_len,
 		if (posp)
 			*posp += chunksize;
 
-		size -= chunksize;
+		if (!fill) {
+			size -= chunksize;
 
-		if (size == 0)
-			break;
-		else if (size < 0) {
-			error("data corrupted");
-			goto exit_2;
+			if (size == 0)
+				break;
+			else if (size < 0) {
+				error("data corrupted");
+				goto exit_2;
+			}
+			inp += chunksize;
 		}
-
-		inp += chunksize;
-		if (fill)
-			inp = inp_start;
 	}
 
 	ret = 0;

-- 
2.39.5



