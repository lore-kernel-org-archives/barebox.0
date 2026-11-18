Delivery-date: Wed, 18 Nov 2026 15:53:17 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xTh2C-000neK-2Q
	for lore@lore.pengutronix.de;
	Wed, 18 Nov 2026 15:53:17 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D75C2205AE7
	for <lore@pengutronix.de>; Wed, 18 Nov 2026 15:53:12 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ufsEw3J7;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=OEiQyTCH;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013593;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=CvNhViTSPqDsRukGaTdE1A9ZnWKKBcc2dnoZ3YGG/e0=;
	b=M6OJmcnCXGQANV4ulc9ZQKz9v9uHddp5FxOEWTti/eAhewJqjhokVbLgh11lQxm+QiEqoR
	JiKtM3+SghlmJU0LElX/LcwNPdV0ydTarbyjsekkdxZAdglrz9b1IFh6tbWqU/HpuoCUx0
	DCq426s4GcxD8Yx926SlpupXm8TpI7fbaTBrFVFsHmTkNT0EXgzcMqPSaN+MBl+dCblpxS
	dhFjp1/7KlR9HAI79McDTkyJy5oYBy37LT7jl2fY8VGkziEBsSFba0u/Ytj6aPfukTaWCG
	Ohb+K0sfoqz+4SXVyEJfWTei0c7IsDZuDC5U75HUHky/bwNX3DW5+bdRgY6Mkg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795013593; a=rsa-sha256;
	cv=fail;
	b=cVN8XIn596KC5WHMvYywVKV/qUKISI+sVpzC8brMwgw0t0+Krkzv5hhDCTXspWz3EmyjmF
	V2rQ8QE/3r+Yqf4X0Be1r89utEGxCZDpxDBQoveZJBimW8RQdIPYkdtz1AKxrRP5zrMhj6
	V8mLGl95p+sAhfH+oCIabV2DoH/7R60uL6l/pWcQUa7zHMODL2Cw5errkcI7K00hyiya7x
	/gi3rRpF5MjiDJB7KNZpMSuBYxUA4lZ3ysFKdgMIbi2gyuet5xk+vkyVyX64WHd7nPraEg
	p8guLd+CSa1fQQzKw5iT59ZENjk9AM8X2ni3Q9qCBPT88uDnO1xyVQ/b+WOLsw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ufsEw3J7;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=OEiQyTCH;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=CvNhViTSPqDsRukGaTdE1A9ZnWKKBcc2dnoZ3YGG/e0=; b=ufsEw3J7ErttPs
	TM+f6PQA1CypFmwYNFxuiitKP85Lhx9KoAi5bNk3jdHLl+dwwR/CJ/5eqzNDiTu60OMU9awjYqtDF
	QuqW243iyA/dJMalC4sVo1QXCfH+81FyHPrujUr95qh6RNlecdWCAmBQmwbbO5F8+Z1zyg/MyKNLa
	iQGaj7jypFZ+T/tsrlTmgQnWkTtFei6I44H0K/Di/YU2zw3F02W8Uoof6/fvM8qRJSMI2uDBzXfka
	u0OdtyHs5dxvexx+zPIRHf6lDru/JAW8xjmA5uwMk5CLr8dCJ8DkOPvPqTdHox6vQzrmSD4/o3FSW
	6tyPzQzVD0210OLNZmcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh15-000000099hH-3XTY;
	Wed, 18 Nov 2026 14:52:07 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh13-000000099e2-0RUc
	for barebox@lists.infradead.org;
	Wed, 18 Nov 2026 14:52:06 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 561E6205AE7;
	Wed, 18 Nov 2026 15:51:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013519;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CvNhViTSPqDsRukGaTdE1A9ZnWKKBcc2dnoZ3YGG/e0=;
	b=OEiQyTCHQZnFLEsGFrmjcZf4Dtp8l9paSMNfkm1WMtOnWVzNtirQWIY5RK35tcSGl2Hjaf
	rjKb7embylPWLKOSYhrOjHbPNZneJl+9EstGPvPJpkmHe8IjE5wZgPTK+Y+ZGu+3Ni2Y7h
	TNDHISPEBm1OA6QIOgEI8hlhSDSOslueRH3twV/TILRpIujXR+QmhxehHda+nakb3IaIMO
	mUprjzPOgrK+HMczIveHIu08JQaXz5tfa09GG6OuBLz9Uw+4ZnErrgbZC1Cwt+8MAhDE1c
	KeHIlBALz0woBBLZD0ZmsOwD0k7dLboc6Auq4cv5Kza2RfK4gwHAJ5wNcw79Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013519;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CvNhViTSPqDsRukGaTdE1A9ZnWKKBcc2dnoZ3YGG/e0=;
	b=TPKWcufYhEesad4Sbd2eQIOmZxYKCocpyZ++w9/BmXasbGrs+bFmZ2R9+cWd5saXjb8Yl7
	k2jfUj3OhsrUgQQdcDOs4KC0FPDxIbq1U/K2JztNW5MQDTuXmmSp4QLY8nGC8JbRyMQ0Lx
	Wps92ymuo9PedR6Hz5DfIqLp7lKrL6tIwD5o8LEWOw1b2hG1vmUPis9ollsy0EbPnfN3lN
	H3zG/hmtLH2AHS/irhwrbWeFzYUaXdcjY71u1/tuqQTiEvQ7V6UDScIUkSD5hEAWlwlhOB
	o0w0TdurirazWSxi11BGzCdnhoxJAwAPA4iJw5Bu5VeRxtJQy9HX1T6cJW8bgQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795013519; a=rsa-sha256;
	cv=none;
	b=YN7hm7vA40s5gWFkCaHVKWeQChe1CUHbTEPb4zc+vbeAzOCTl6He3NlcuTfPhEn9AfyGOs
	GNkoVJPXpoMZ+f9DfIPMy/syPEe7NPBosmfvMQeRhwvkI3XpE0DeLz4dtlkvlRnrjOsTVf
	pwXStQOhHY6YXYjux5uapAEWrBwUsvegGua3FNj6EycqXCfiVgcZ/nJZr4WOcgkqd/WesI
	bB2ZjfPzMnjoeI+4zj2NtkGX0Ik3DVVzpPkXOMIQqldBV/tc7qvVsBZ6VMP96xOhtxG+Fa
	UIOz/+0zimYNgzQZxQlYP74OMWtUqc2kY9PYUF9qAtxOYkhkmgzBn/j8bKbfog==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Nov 2026 15:51:51 +0100
Subject: [PATCH 01/13] fs: ramfs: zero the rest of a chunk when truncating
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261118-fs-conformance-fixes-v1-1-59b59ec15d47@pengutronix.de>
References: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
In-Reply-To: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795013515; l=1267;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=nbR5qltWBeCLNTI+d3Vit7rdyKpCt3MP2QbpK2LUqXE=;
 b=jULaIq7emM3vO3H5Pp44ZlYK8IgPgLGWdUr9FgXb+YRGYuH1z6U64DPRJCFrHQ+yrFJo1I72R
 qchGBvKaIW7Dc7/xtD5PIl/iYVjB2SEahcCiW8v5rRKL+k1g+pBjQRZ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_065205_335665_DC86FA91 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Shrinking a file only frees the chunks entirely beyond the
    new size. The chunk the new end falls into keeps its old contents past it,
    and as growing the file again doesn't allocate anything as long as [...] 
 
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
X-Spamd-Result: default: False [-56.40 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.99)[99.97%];
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
X-Rspamd-Queue-Id: D75C2205AE7
X-Rspamd-Server: mx1
X-Stat-Signature: rcz7zmh15spyn7zsg7sdgqrwt9b7kymt

Shrinking a file only frees the chunks entirely beyond the new size. The
chunk the new end falls into keeps its old contents past it, and as
growing the file again doesn't allocate anything as long as the chunks
are big enough, it brings them back:

  write 10000 bytes, ftruncate(3000), ftruncate(6000)
  -> bytes 3000..5999 hold the old data instead of zeroes

Newly allocated chunks are zeroed, so clear the remainder of the chunk
when shrinking to keep everything beyond the end of a file zero.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ramfs.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index d86bf6144e..0df4af5294 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -311,6 +311,14 @@ static void ramfs_truncate_down(struct ramfs_inode *node, unsigned long size)
 			list_del(&data->list);
 			node->alloc_size -= data->size;
 			ramfs_put_chunk(data);
+		} else if (data->ofs + data->size > size) {
+			/*
+			 * Growing the file again reuses the rest of this
+			 * chunk, which must read back as zeroes then, like
+			 * newly allocated chunks do.
+			 */
+			memset(data->data + size - data->ofs, 0,
+			       data->ofs + data->size - size);
 		}
 	}
 

-- 
2.47.3



