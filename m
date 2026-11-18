Delivery-date: Wed, 18 Nov 2026 15:53:27 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xTh2M-000nfO-15
	for lore@lore.pengutronix.de;
	Wed, 18 Nov 2026 15:53:27 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 74E62205AD4
	for <lore@pengutronix.de>; Wed, 18 Nov 2026 15:53:22 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=vAph1puz;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=M7aCNxlb;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013602;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=eOyHIqYbOUOwlEMF+0mClXu3NMbZUTeU4T3QtOIQi6M=;
	b=PPFaMQ96jYYvvoblNvzz3H3EguDQwN3HNf9uG3c+ljtoFVbIE8iuVgAESR6amdw8UvOwEn
	qtu60f1yMbLnzeMBeonwZULq++5WIF/AJFqTZXKZPQGLlC/bcCTY4gLgvIj+UpQWMOBjPM
	8HRm33DUVy3PFDQSxPPnFJdSuH2v/61Bu1spw4JozpufVvBjh+tlsjpmAiHyAxolwJXr4t
	f70pdBbR5Dzqjr6dWHZrtNHdbUX5twMTPbDiCxzqUiqj6Tk3wXpZ28T5L+/hyxKQZ/GEnB
	nAsZ9AD3i8A+Kol84UF8CLNargbi/3xKVco9drgnD1NCgiRpxhGcKuFclhuDCg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795013602; a=rsa-sha256;
	cv=fail;
	b=Cokbij+SaL8cdYC8XTin1hc4uks0I5MVqXyf57rXQlxmZiyLLeS5nXGmB2mhtcNKE+WBUm
	yg5gdG66ZBXMlQkhKRXhDN7/vNx4d6Wtom8Yb6u9xzoTPMw2qHGmvKaqJft7sjDhSs6G3E
	ME9UTF8hMiq0cY65LSNzH5EFGtb8oOYtpMHZpLfLtwYEnrohEB3TfSw+2zsfigzIT235ct
	6wMdoEbp7I0jcIZ3yKIU06G5o6ut89OZSdR5ghYtZkdUG8blY71WsdhQjcpYJnFOUzYjpa
	LGrDaExJc4chQJUtf2jH5Lehy2y3RLP36FNk/EKzdWEnLF0yNj9tAzRFCn3zfw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=vAph1puz;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=M7aCNxlb;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=eOyHIqYbOUOwlEMF+0mClXu3NMbZUTeU4T3QtOIQi6M=; b=vAph1puztqrcjQ
	MUp6QTFHdLEOvxcoiJaj3ExmTq8eInQFMfVaqLidAFXBAMu1UAURxhE0m0d58CLjf6b2kVpRtvTTO
	59FslVCUtfIMIjNfT2q89Y2FbW2HDMZnlMFNBD2Bg4YMSKuZx25FLo93QCLfri86XdwxyOZK1eD4W
	b7gpAA5dxUK6JWqBROpbjgdFgJxt/PnUvduuHequJsXVZFSpX9ygwa6hp+rqs124hA0zeFIPw8UeH
	LzZ3AWP9bWNphxqnRb9PqrYP9wmw2LkppmZ1Dp/5mkJbjozE8NtEHb3TupQoNStgwEkiEgnaxmtKw
	u12tuyA5/zl4CvJxTHig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh19-000000099kM-46D7;
	Wed, 18 Nov 2026 14:52:11 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh17-000000099i2-1K7T
	for barebox@lists.infradead.org;
	Wed, 18 Nov 2026 14:52:10 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8C4A4200467;
	Wed, 18 Nov 2026 15:52:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013523;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eOyHIqYbOUOwlEMF+0mClXu3NMbZUTeU4T3QtOIQi6M=;
	b=M7aCNxlbAKp/xfyXbqt6l6OHxobGHPXwfNPfomFpats0UlOI27TwWYxDSvoV+wgyNG7NSW
	KxAL64rmg9rULEnMfTgHLZUTMTerKMiTc+bHtIyPI+4BBxM8lPJlSaWakgQGhRJCy2lyjL
	31cwDLysvbqiyTzgvlaFLzJMTMQgQk2cN925XKublvspQNddCuI2rwcg1hx69zeZS8g9JN
	x9r/1AOwG6JtpKFbxsseEs99UMYOPxE7pUzi87o5jqcOEhokNoaBFMCn6NFZyMMn5vOHjC
	UgFApKSc6QJY2gdTSdgsP9rP2hl4EmN49T1iZNQjKoOhj5snovUGFZtRKHvy3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013523;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eOyHIqYbOUOwlEMF+0mClXu3NMbZUTeU4T3QtOIQi6M=;
	b=NNDNZHJOWXghr6SV7rFN31fRoQv0DrzGRh4gjLRrnx0Zzlcqs5Lwfvb+pPjjJkZutujT9x
	9ejp4R3uhhr0hvmSIsnUB9axWJ3x78Wd071bxf3XiBgpoHgGoWv4eVdMw7fyYlGmNN6QI1
	icGpnNwPUF95YR/t4f+xt7lGkJC81SMCIffUiS695ChT8+UOVY/rYa4wYOe3ExdnbxHEcH
	VljdPA3RoectnQFs6948X8u8rddIAEXk7tE0YisD1fWDqaeuTzUYtoh+qgJ/b0/hkehifA
	B+JTfaPZ6XE2uSEBCbEwjvHVD0o2JkiL+1Qpac/s1cncUCDkGTDa6AfQlea37w==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795013523; a=rsa-sha256;
	cv=none;
	b=gMVBshTF2NxSEaFNjRWSYoBOk2Zx/agvjSC79OQfT+I1DbX7XCqq2SnPuEPRizNJUJzPuk
	om5KrYW1oUsERNdAWAS5OBHJfNUbiunD/c8lHZ1Yby4OolbgnqpRhj7VdqVViyfK1souOE
	THALWkwtAwwbYjV9QUod0fmJmgGfB7pczqAXrepjjdmaleojukVpJ1Ve4bmfHUkVq39s7s
	Bibhlb8kkCtyFhVcEKwpBx3Z9B2gPXZwqlF0QSqyIH+c7s5mleC7eyW55zjSMMv2WuKjT/
	umgAilvkUiwwRuQiFspreY1ZZdNTF6r0jTwQMBTG3yfHj7oypSrF3GfiMgBNpA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Nov 2026 15:51:52 +0100
Subject: [PATCH 02/13] fs: fat: zero-fill files grown by truncate
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261118-fs-conformance-fixes-v1-2-59b59ec15d47@pengutronix.de>
References: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
In-Reply-To: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795013515; l=2485;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=gZnYbqwp3POIxtQrlTbpIAURe+dtUB1MgUwvvADrrGk=;
 b=96UlMV8c3KXT/OK3LTj/478x2JZ+6g5FBGIGXeqYPoOu/FORjAVcAQphv6ktCar9/LVcr+B+G
 TiNMz4965QLBzrZkA9JNAHusLLc849unnLU24uiyXaNqOsQJXTiAiUb
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_065209_564315_5DED50F5 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  fat_truncate() grows a file by seeking beyond its end, which
    makes FatFs extend the cluster chain without clearing anything. Whatever
   the newly allocated clusters held before, e.g. the contents of del [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [185.203.200.13 listed in list.dnswl.org]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[185.203.200.13:received]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 74E62205AD4
X-Rspamd-Server: mx1
X-Stat-Signature: yeoigck4z6waikedshmr1cj7idzjaorn

fat_truncate() grows a file by seeking beyond its end, which makes FatFs
extend the cluster chain without clearing anything. Whatever the newly
allocated clusters held before, e.g. the contents of deleted files, and
whatever followed the old end in its last cluster, e.g. data cut off by
an earlier truncate, becomes part of the file:

  write 10000 bytes, ftruncate(3000), ftruncate(6000)
  -> bytes 3000..5999 hold the old data instead of zeroes

Grow files by writing zeroes from the old end instead. The VFS extends a
file by truncating it before writing beyond its end, so this also fills
the hole such a write leaves with zeroes.

Fixes: 17e91068b1 ("fs: add fat filesystem support")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fat/fat.c | 46 ++++++++++++++++++++++++++++++++++++++++------
 1 file changed, 40 insertions(+), 6 deletions(-)

diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index b6f9fd8fe5..1c5aa257b4 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -159,6 +159,34 @@ static int fat_write(struct file *f, const void *buf, size_t insize)
 	return outsize;
 }
 
+/*
+ * Grow @f_file to @size bytes. Seeking past the end would extend the file as
+ * well, but leave whatever the newly allocated clusters and the rest of the
+ * last one held before, so write zeroes instead.
+ */
+static int fat_extend(FIL *f_file, loff_t size)
+{
+	static const u8 zeroes[SZ_4K];
+	UINT now, written;
+	int ret;
+
+	ret = f_lseek(f_file, f_file->fsize);
+	if (ret)
+		return ret;
+
+	while (f_file->fsize < size) {
+		now = min_t(loff_t, size - f_file->fsize, sizeof(zeroes));
+
+		ret = f_write(f_file, zeroes, now, &written);
+		if (ret)
+			return ret;
+		if (written != now)
+			return -ENOSPC;
+	}
+
+	return 0;
+}
+
 static int fat_truncate(struct file *f, loff_t size)
 {
 	FIL *f_file = f->private_data;
@@ -171,13 +199,19 @@ static int fat_truncate(struct file *f, loff_t size)
 
 	lastofs = f_file->fptr;
 
-	ret = f_lseek(f_file, size);
-	if (ret)
-		return ret;
+	if (size > f_file->fsize) {
+		ret = fat_extend(f_file, size);
+		if (ret)
+			return ret;
+	} else {
+		ret = f_lseek(f_file, size);
+		if (ret)
+			return ret;
 
-	ret = f_truncate(f_file);
-	if (ret)
-		return ret;
+		ret = f_truncate(f_file);
+		if (ret)
+			return ret;
+	}
 
 	/* don't extend the file again in case it was shrunk */
 	ret = f_lseek(f_file, min_t(loff_t, lastofs, size));

-- 
2.47.3



