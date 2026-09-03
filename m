Delivery-date: Thu, 03 Sep 2026 18:31:04 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2AL9-00APon-23
	for lore@lore.pengutronix.de;
	Thu, 03 Sep 2026 18:31:04 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=BIvq00or;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BEA462058C4
	for <lore@pengutronix.de>; Thu, 03 Sep 2026 18:30:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LYiw/CbuUKSgc1bjH0RRaIt3bnUsrtoj48VknamHJCY=; b=BIvq00orpXeNqKEo0I7Zfwh2B1
	P/VdfBHJrDyNz/cwu1dgpdrTnproTvAQ2UStThNkPgLWVMwf/BSzfy6KlYVZlbobLxD5IvSJPMv2Y
	v8FR0jMK7wgwwldgfMyR7dSTYbbCVLxGka/HmOWrV/ZNKu9xVrCohgP0sNVxy93pjZL4eWqXiTvsG
	7oblKLIZKtgjGw78giZQNgTPwLKiQlFxsrYozqRHnmzglv6+mzDUAo8NIJxTFGu2HmZgL7FXhrV0H
	vyYE/46tzDD+xb0gsDGPvqI2JQCZlAnwxIA7khy+B+dcPQs5qiFATm8p/QkFsxnRYIelxY/XF6HMT
	aDO3t/Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2AJl-00000000AXY-32Ty;
	Thu, 03 Sep 2026 16:29:37 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2AJi-00000000AVZ-1llC
	for barebox@lists.infradead.org;
	Thu, 03 Sep 2026 16:29:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E8B5820591C;
	Thu, 03 Sep 2026 18:29:26 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1x2AJa-004mQp-2f;
	Thu, 03 Sep 2026 18:29:26 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1x2AJa-0000000FX2j-3Am1;
	Thu, 03 Sep 2026 18:29:26 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 03 Sep 2026 18:29:14 +0200
Subject: [PATCH 2/2] fs: __write: fix EOF growth checks for negative file
 sizes
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260903-fix-fs_read_write_eof_checks-v1-2-7afd44db1793@pengutronix.de>
References: <20260903-fix-fs_read_write_eof_checks-v1-0-7afd44db1793@pengutronix.de>
In-Reply-To: <20260903-fix-fs_read_write_eof_checks-v1-0-7afd44db1793@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_092934_614399_BF667517 
X-CRM114-Status: GOOD (  19.94  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  __write() grows the file when the write end would pass EOF,
    but based the decision on the same target dependent mixed sign comparison
    that __read() had: f->f_pos + count > f->f_size compares the signe [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 7tooxccdjqzek4s9a5hauq6eowju1df3
X-Rspamd-Queue-Id: BEA462058C4
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]

__write() grows the file when the write end would pass EOF, but based
the decision on the same target dependent mixed sign comparison that
__read() had: f->f_pos + count > f->f_size compares the signed 64-bit
position and size (loff_t) against count (size_t), which is 32-bit on
32-bit arches and 64-bit on 64-bit arches. For negative file sizes
except for the FILE_SIZE_STREAM sentinel this is broken:

- On 32-bit arches count is converted to the signed 64-bit type of
  f->f_pos, so for e.g. f->f_size = -512 the comparison evaluated true.
  fsdev_truncate() was then called for the corrupted file size,
  attempting to grow the file to f->f_pos + count.

- On 64-bit arches size_t cannot be represented by signed 64-bit, so the
  usual arithmetic conversions turned the whole comparison unsigned:
  f->f_size = -512 was reinterpreted as a value near 2^64, the
  comparison stayed false, the file was never grown and the write
  proceeded unclamped against the bogus size.

Additionally, when writing at a position past the end of the file
(reachable via pwrite() with a large offset) and fsdev_truncate() failed
with -ENOSPC, the fallback count f->f_size - f->f_pos was negative and
wrapped to a huge value in the unsigned count.

__write() now rejects negative file sizes with -EINVAL, like __read()
does. The write end f->f_pos + count is computed in u64, making the
growth check target independent, and extending the file beyond
MAX_LFS_FILESIZE is rejected with -EFBIG. On -ENOSPC the write is now
limited to the bytes remaining until EOF, or aborted when f->f_pos is at
or past the end of the file, instead of wrapping the negative remainder.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 fs/fs.c | 42 +++++++++++++++++++++++++++++++-----------
 1 file changed, 31 insertions(+), 11 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index a8f2b78294..3803decc2a 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -482,7 +482,10 @@ EXPORT_SYMBOL(read);
 
 static ssize_t __write(struct file *f, const void *buf, size_t count)
 {
+	u64 size = (u64)f->f_size;
+	u64 pos = (u64)f->f_pos;
 	struct fs_driver *fsdrv;
+	u64 end;
 	int ret;
 
 	fsdrv = f->fsdev->driver;
@@ -495,18 +498,35 @@ static ssize_t __write(struct file *f, const void *buf, size_t count)
 	if (fsdrv != ramfs_driver)
 		assert_command_context();
 
-	if (f->f_size != FILE_SIZE_STREAM && f->f_pos + count > f->f_size) {
-		ret = fsdev_truncate(f, f->f_pos + count);
-		if (ret) {
-			if (ret == -EPERM)
-				ret = -ENOSPC;
-			if (ret != -ENOSPC)
+	if (f->f_size != FILE_SIZE_STREAM) {
+		if (f->f_size < 0) {
+			ret = -EINVAL;
+			goto out;
+		}
+
+		/* Writing past the end of the file requires growing it first */
+		end = pos + count;
+		if (end > size) {
+			/* New file size must be representable as loff_t */
+			if (end > (u64)MAX_LFS_FILESIZE ||
+			    (f->f_pos >= 0 && end < pos)) {
+				ret = -EFBIG;
 				goto out;
-			count = f->f_size - f->f_pos;
-			if (!count)
-				goto out;
-		} else {
-			f->f_size = f->f_pos + count;
+			}
+
+			ret = fsdev_truncate(f, end);
+			if (ret) {
+				if (ret == -EPERM)
+					ret = -ENOSPC;
+				if (ret != -ENOSPC)
+					goto out;
+				/* Truncate failed; write what fits into the file */
+				count = pos < size ? size - pos : 0;
+				if (!count)
+					goto out;
+			} else {
+				f->f_size = end;
+			}
 		}
 	}
 

-- 
2.47.3



