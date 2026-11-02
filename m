Delivery-date: Mon, 02 Nov 2026 10:32:30 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xNoP0-006K0G-0v
	for lore@lore.pengutronix.de;
	Mon, 02 Nov 2026 10:32:30 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2C11820177D
	for <lore@pengutronix.de>; Mon, 02 Nov 2026 10:32:30 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="Ap/36WRm";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=CdnWzx+z;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793611950;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=lXXaCPRmA3gcub62Tj3tTLlCfGa4/Fjw8Rc1VSRZLw8=;
	b=Wc+QnXan4EuK9s/j61Ey7xqDZdeo6YZVAUn8tA3+WQZ0cjTaunq3DAUYl0eIrUDeA1qjMy
	lOZYJ7V48QOw64zg4oYRUs12ClDKWlWGU2YujXO4KBDJvGQB1nAI0dssfyxVbXj2i6kBQc
	Zl3YPjDNoEjV2uMF+d0Dr7ttnDI4PrhgHpTqETZo2WjuSA3iSs30ZRPVqVm/6Z9sgUS5TV
	rzr6II3zZsfFhqbG/zF89QvyLUqC8cHNavuHWOUPhmieMwYx3B8kqIMT5Tmaz2i3qUCffU
	LS3wVe6EekVqKtmPOmvbyHHbobr5CMwNBsgsiyVwljSugJ7QLzFLf7RkmkdNOw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="Ap/36WRm";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=CdnWzx+z;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793611950; a=rsa-sha256;
	cv=fail;
	b=GIEC2AvEJmGj7R/s5XGtLLEDM2v4PzQjNUaC5F79v8FpOO4eDYhgMzTtU8t892xrqwhSWG
	+MHVqiQU7m9u+/mMQQqoy1ToweSCMU7Eu20stkKqAZ5C57pw6sroG3eO57O/jpXonuW7Ht
	Vbssba5ewrgCeRDN5QK6e2Hakc8vlnFaLmMKSfAxcnQZuLJpiuASTiIHjVBJRxKiPRTKGb
	vgZpIzu/nbNp2hZwPQ/RyR31TngqprqyXPIy4HdoPixs5xnigZZHRkE+VlSGxBLEICYrh+
	5VhXoCLRyyhPuJdcPcEbMsmusl5XvRBFkTfaeT90BuYaUTKniy6+5vbnMrGAyg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=lXXaCPRmA3gcub62Tj3tTLlCfGa4/Fjw8Rc1VSRZLw8=; b=Ap/36WRmUD6sMI
	2prlF5NwI1t1lLEcYebfkgtX0P6FwPIJ8V3csoJPfVCYr7DkuUBsBYcEOCwFoKppGf5PAIG6K+Fzq
	BW5wN6AY7q2Zn0EMDGX8jWcxl6gIBkxhFWDQMGyn7MboBBH1ekzi+CPV0Pm2C7jto5NAxh2wPEpOs
	LhPtkzPLXFxUvPEpfVP4gYqZ1o0IRC4h7PQK8jBMZr88AKnFAGL0XrJsW4bt9A8eC2JWegIqutt2A
	yYqfjSfZJjyRagkxXZaS+xc4LDYyTj7xEDw9czw/YIrR6SKNX5P6FC5iEE0LVa77oi5GecKGD32VL
	h7SIshzW2oUbvdukyYrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoO0-0000000G1IE-3A7c;
	Mon, 02 Nov 2026 09:31:28 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoNv-0000000G1Ej-2scy
	for barebox@lists.infradead.org;
	Mon, 02 Nov 2026 09:31:26 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4D100200878;
	Mon, 02 Nov 2026 10:31:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793611881;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lXXaCPRmA3gcub62Tj3tTLlCfGa4/Fjw8Rc1VSRZLw8=;
	b=CdnWzx+zcVbBUO+kuyjVWE6CEMN2tcpTjKXZonWYYyAZKnUHgBe7fcqO0lX9pomoQldIc0
	Bo7IdHW5JtLBl8JqhPp6NZkE5wPgJIxWAWuMw7tv+D+6u5CwA7KX/d4n6uzGuMe/PmHOoT
	SbsA/WuxRFz6H1gMxXksH7XIKit2mNGee4Y2kj4K/q2HVjB23TcfdUoEeHKuJzDUzAfecn
	Tt5FjFdUnjSNIA92TARt5qPeil+h2QEi8dsxh0yYTj/HraOh6PDMK1hA4EsZ2eFPo1stOs
	87osQ1E7zcy27JhOcsemCnWYCB3WOwJZXlQ1v0Ch2oIno1Ig0AhYdOhtO0zwrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793611881;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lXXaCPRmA3gcub62Tj3tTLlCfGa4/Fjw8Rc1VSRZLw8=;
	b=dDPPynVJRyUuCJ8JfDA1KkIJfPJqWUcWSpjPBDaO6lLqX/OiUytdo+1oGFidAVagbxMCkr
	L/3GOe7UweqidgcM2BtjB6oPP+XkfMbfgWkDh3YYqh+qI0RM6+CKN0OudAIrtNz9/40CO3
	2MxOM4b2eHNfwH78BrGSfZojtOF5TM2Biy5IZZ4Mdzz+gzJjx/6+HbLlAnJYghNewcvarD
	N+SMGScgjGnKvsOkpfmpd6aW2xAXsbtohFiCV9OeFuIe6e8msWg2Ecp+oCaCeisFp7bzI5
	KkRmG8dcljijIJwYVzmZeHfiDvve4ui69gyOM51+gWZisENW8yiqrxWWz/OHPg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793611881; a=rsa-sha256;
	cv=none;
	b=I+Ag6ajRFwnQdWEw4h6t+7gkM8lwywMOWnc5F3tMYEQpy2N80ECfkdBhzD/fSpZ4acSyDn
	1BDZtMecxUqw4rTdH3meg3XXJCP1x9szM4JsejU7qBgJTUGELb/0wTK45CTA+9lWDtGBuq
	Jue42bLJi7mQi7x7ekFIBgkdz0ljaUx16hYbMPkrfBap2F9g6nraa0cKGJDwg16FARJXAH
	GVRehbggwKRNNI3UBjBZJV47xqSbTyyN/84D6NWeaiwKlbh1T8AQ0iMeGPx7ZF9B8jPPkl
	1zLefBaeu3uvQWQQ6XtTbfYENLW4tSyAXn5v2q0zMvfu4sOwiqF7UzLiab3UDw==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 02 Nov 2026 10:31:20 +0100
Subject: [PATCH v2 1/4] fs: cramfs: don't ignore decompression errors
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261102-fs-getlink-fixes-v2-1-37df92e4d0d3@pengutronix.de>
References: <20261102-fs-getlink-fixes-v2-0-37df92e4d0d3@pengutronix.de>
In-Reply-To: <20261102-fs-getlink-fixes-v2-0-37df92e4d0d3@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793611881; l=1289;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ILmXZ8UIj7MRzLvPILapZb1sBNOZagJVwa2oTken85k=;
 b=iy97VC+Hj3Zzhkb0v2CCONPyB+LIqwEpJ9g2/l8VI0wLUNRYJA+YrvYebuEqpj+MQVSgdSnQt
 6BuIn38HRWDBcTchg4RtGedtB2klGR8Z48AQhd1ry32yxRRkYYmPHJv
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_013123_891009_311DE6DE 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  cramfs_uncompress_block() returns -EIO when a block fails
   to decompress, but cramfs_read_file() stores that in a size_t, so its check
    for an error, curr_block_len <= 0, only catches empty blocks. The [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
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
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: qit8g1m3c193aqx41ou66om3fp8fyibm
X-Rspamd-Queue-Id: 2C11820177D

cramfs_uncompress_block() returns -EIO when a block fails to
decompress, but cramfs_read_file() stores that in a size_t, so its
check for an error, curr_block_len <= 0, only catches empty blocks.
The error becomes a block length of nearly SIZE_MAX: the read copies
whatever priv->buf holds, the previous block or nothing that was ever
written, returns it as success, and keeps it cached as the content of
the failed block.

Store the length in an int, so that the error ends the read.

Fixes: b42f481fa4 ("reactivate cramfs")
Assisted-by: Claude:claude-opus-5-5
---
 fs/cramfs/cramfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index d66cce8df8..fcb9aeeab8 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -46,7 +46,7 @@ struct cramfs_priv {
 	struct cramfs_super super;
 	int curr_base;
 	char buf[4096];
-	size_t curr_block_len;
+	int curr_block_len;
 	struct cdev *cdev;
 };
 
@@ -149,7 +149,7 @@ static int cramfs_read_file(struct inode *inode, unsigned long offset,
 			priv->curr_base = base;
 		}
 
-		copy = min(priv->curr_block_len, size);
+		copy = min_t(size_t, priv->curr_block_len, size);
 
 		memcpy(buf, priv->buf + ofs, copy);
 		ofs = 0;

-- 
2.47.3



