Delivery-date: Thu, 03 Sep 2026 18:31:07 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2ALC-00APpU-0z
	for lore@lore.pengutronix.de;
	Thu, 03 Sep 2026 18:31:07 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=lZKRfCnK;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D31A42016CA
	for <lore@pengutronix.de>; Thu, 03 Sep 2026 18:31:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=txP+ohxBzTYLdWeyEBOnYasWJl3Os6hmotHXoJft+IY=; b=lZKRfCnKgMmoSpGweOufm62/4a
	WMskZfgoAgaF3jJ6h79+eu/x64R8Ffwng6T33rVUoNeZQgrtu3n/jilab7+4p4ymzs0YKUcBu6E7D
	5/SnlpRG/KdpR4ToE9xity2nH15C/6Cq6BpgqgPdpGgbsW/h+bo59G3G2DZB3AxHYHQNox0dugPVR
	FJO18QF9l9ZD/39bEXJcktSV1nCvpolQUIv1QNAVvkQerVDPOJ3ysR+duRcAH6V4ob3j1oqWI5gTi
	795i1HQaSWlYN2miaPH9OrirKI3IUrdAcomPFWrsn4nX8T24WnhATYhiaLUPmqcjRYeIXZA821916
	her0jkkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2AJl-00000000AXR-2gy2;
	Thu, 03 Sep 2026 16:29:37 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2AJi-00000000AVY-1liv
	for barebox@lists.infradead.org;
	Thu, 03 Sep 2026 16:29:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E56052058ED;
	Thu, 03 Sep 2026 18:29:26 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1x2AJa-004mQo-2e;
	Thu, 03 Sep 2026 18:29:26 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1x2AJa-0000000FX2j-3AGk;
	Thu, 03 Sep 2026 18:29:26 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 03 Sep 2026 18:29:13 +0200
Subject: [PATCH 1/2] fs: __read: fix EOF count clamping for negative file
 sizes
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260903-fix-fs_read_write_eof_checks-v1-1-7afd44db1793@pengutronix.de>
References: <20260903-fix-fs_read_write_eof_checks-v1-0-7afd44db1793@pengutronix.de>
In-Reply-To: <20260903-fix-fs_read_write_eof_checks-v1-0-7afd44db1793@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_092934_612996_E67E81E6 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  __read() clamps count to the bytes remaining until EOF, but
    compared the signed 64-bit f->f_pos/f->f_size (loff_t) against count (size_t),
    which is 32-bit on 32-bit arches and 64-bit on 64-bit arches. 
 
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
X-Stat-Signature: qwf5xukuzyrgy9msaxr5maxturb55bpo
X-Rspamd-Queue-Id: D31A42016CA
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::54:received];
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

__read() clamps count to the bytes remaining until EOF, but compared
the signed 64-bit f->f_pos/f->f_size (loff_t) against count (size_t),
which is 32-bit on 32-bit arches and 64-bit on 64-bit arches.

This made the comparison type targent dependent, breaking it for
negative file sizes except for the FILE_SIZE_STREAM sentinel.

- On 32-bit arches count is converted to the signed 64-bit type of
  f->f_pos, so for e.g. f->f_size = -512 the comparison f->f_pos + count
  > f->f_size evaluated true. The clamp then assigned the negative
  difference of f->f_size - f->f_pos to the unsigned count, wrapping it
  to a value near 2^32 and turning a small read into a huge out of
  bounds read request.

- On 64-bit arches size_t cannot be represented by signed 64-bit, so the
  arithmetic C conversions turned the whole comparison unsigned:
  f->f_size = -512 was reinterpreted as a value near 2^64, the
  comparison stayed false and the clamp never ran, leaving count
  unclamped and the bogus size undetected.

__read() now rejects negative file sizes (except for the
FILE_SIZE_STREAM sentinel) with -EINVAL. Reads at or past the end of the
file (reachable via pread() with an offset beyond EOF) now return 0.
Remaining reads are clamped to the bytes left until EOF.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 fs/fs.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index dc6c30802d..a8f2b78294 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -427,8 +427,16 @@ static ssize_t __read(struct file *f, void *buf, size_t count)
 	if (fsdrv != ramfs_driver)
 		assert_command_context();
 
-	if (f->f_size != FILE_SIZE_STREAM && f->f_pos + count > f->f_size)
-		count = f->f_size - f->f_pos;
+	if (f->f_size != FILE_SIZE_STREAM) {
+		if (f->f_size < 0) {
+			ret = -EINVAL;
+			goto out;
+		}
+		if (f->f_pos > f->f_size)
+			count = 0;
+		else
+			count = min_t(u64, (u64)f->f_size - (u64)f->f_pos, count);
+	}
 
 	if (!count)
 		return 0;

-- 
2.47.3



