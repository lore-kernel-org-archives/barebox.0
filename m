Delivery-date: Tue, 20 Oct 2026 09:14:50 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJ43d-000wG1-2s
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 09:14:50 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B282820227A
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 09:14:49 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SdoKfYJb;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=PepX+llT;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792480490; a=rsa-sha256;
	cv=fail;
	b=A7kfNvlOV+bLCysi4EUp9Nx7WoZpe+DJuh2tAhRyVprZZAZc5XXNjeBGa5fQqvIuWcsSqH
	ZvYZWUpRFETJAxVZhaF4iKVQqNUQaWD+5EQ91p8XLq3dlvOiGTisJQuNBtaOEE2VgMOD6X
	7kEeReBvBGznDzoLhisCY+yTz7SldwlZD8C/d1vGe3NRTPNaIplQ0appM5xcRSdQ5YGVCD
	PcmmL98FTj6x7FmEbKtIcPrmGjEk8WfaS92o1EDUXzBzC48cHiJA5XhVHMTrLljaC04Qz1
	C2vtHlqDoPEcc9h9U3PeL0tFZQS6Mp0kOuphovJkIsxYj+S6QaezOWzd0MJcwA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SdoKfYJb;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=PepX+llT;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480490;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=HynsiKPvSeQnUq9B3qfIM5muz2/f42uXCnybJOqewNk=;
	b=GHC7fMZdCOVbeVl9ehZ4TXEF7GawpEwYjTG10SeK4VJTZbriUrw/iLbOxOv0OWRqwRLnr9
	2yaXrKa4w08qtR0r+3V/d/erllWR3ng+d2QoeWE757NGKLy76/VyeYU5j2Nmm1owAsOYU2
	zqwh71rdMzAvGx/aaeQZRqBnOnPBOOC2mP80/w8QAliTF8f3WND/Lcc/OAcwIezYi6SQvU
	f/bn7Gz8YcnP6IRhAxtvv5GqvHzDabgqse4KkI7em2TFM0v9X0Rz6r/Ye/YY5tZhWfTe5J
	dwYUW5Wj8Zoy4QkX48JiLNJ17TTFrJb9+LIKa2XcPQQJzsSwFOG6BaT523KkrQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HynsiKPvSeQnUq9B3qfIM5muz2/f42uXCnybJOqewNk=; b=SdoKfYJbkCvi0LTipyj/9PCRub
	gAC96XGjIEh0XIsTnMu8k9Ml55e9+SbOmKaaDvgJfCsWsNO9AnwBQnwcstzgSITmmKtz9f8EuW5Lg
	tsCilypoutAYhiZmiwMmNTGgeMqQADFuX59iLZPBf9qAgpMCXMhPnNmRPg4ChwpVY/xSJ+R1cDoGG
	13XLcPHKsbJe1vCXJ94LJk+DYnyQnfoIWpOR1ds9BR9tzMYCrdLPN9V2zhOzgfvICeO4xU2SWpJVA
	iWfoy8y3YJ0M/PBvhnQSjcCqENmP52fAtuJC1Q+K690mHBI/+rU4YwduyGu5GOlvcsEsjG34y9Cj+
	4HPetEQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3ye-00000008zK7-3Euj;
	Tue, 20 Oct 2026 07:09:40 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3yZ-00000008zGf-43F4
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 07:09:38 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E0602202285;
	Tue, 20 Oct 2026 09:09:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480170;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HynsiKPvSeQnUq9B3qfIM5muz2/f42uXCnybJOqewNk=;
	b=PepX+llT7GNWxsHv3iLIG3tBC/QlVyKHAt6yRCyer+W+2qxuT25RwsgGwFEpBH1wu/IVxc
	AjG38atqA894xg1WQy2WCqE60MWOs6ADSmu2OEOsbGO3Ov2n8rtxC2cLEXQPWqAEnM4lvE
	1gAa1MZi1VF4FP+nPjhvBCn7tcQAep+b+i15TJohfuQhAzXz4mDoIqFSoZI117zGVxXFZL
	kLrqyLcD3vp1tHay5Haf1nBdDgEAusHw4A0e0Fo1JPqgN0e4Av+1ODNzolIO41EY2l4mG8
	iAeS8+9XrhFRoOqfiwTM0V6/iANWeZjhURltNCyomymMhvC7D6M5r1sVu7RmCA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792480170; a=rsa-sha256;
	cv=none;
	b=NlkATatXFf0/B6OIN/ONTNKRFzYuFTya9HuEQKhtcxxiEKhIlnoKH8db+oyD9c7oa00yyP
	UovJAr3Nu23GqVH7MUHgbF64xyhuxLouneni3qv5AsnAX0MDDVWp/VJHCDC6xW9VrcczYx
	Sz3laQYU+f+gPmaGDzJGnzUUqGtr3Fjs/6gjTg6Q6yjklNzgXf5PreeJ1Wpcml15juosE0
	DDZ4gd7D5sG/dYbXN5RlsagwYZDgnyfCgHrd6UwL5oyn3Q/EE0xeO2XXsoGv8rR9D5skeX
	wExHu0af4cXGK9f23QuWqcBBcmsgQ0IcQQ+kd9ZgYUZM3yb9VajLN/dSX69j9A==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480170;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HynsiKPvSeQnUq9B3qfIM5muz2/f42uXCnybJOqewNk=;
	b=enYV/gceZtO0GncZGicSqxSccZVmVO5XIG0Y21viwhSCgUT3E/zGsIlbcqum6vYIzH8WCv
	5xcOSwWr9uUbAxB2jXtynnzdPLncCo+K7WI25VXRsavRlodspoDOiQKnVahiBgWk/ulQGa
	d53R8ys50BboG6cYGdAhqhUcLGT00qW7FeyhNMrfpeDUEdmFi+s1zA+vDMyv+WqE04/wz7
	+sxDTs3haFq61HVJ26b2RqFRjh8ztxOZO02PF+FUhng7Ls9xiL265fjPbfuPEGy58KmlfY
	GYFEXyPd4BW+7s1DreUA9cm9UzrdJ9T3QB/gO3IWiT63pYUNJ2BbCWKNz5k3zQ==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Oct 2026 09:09:30 +0200
Subject: [PATCH 5/9] fs: allow trailing symlinks pointing to the root
 directory
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261020-fs-symlink-fixes-v1-5-e7ac8c29b08a@pengutronix.de>
References: <20261020-fs-symlink-fixes-v1-0-e7ac8c29b08a@pengutronix.de>
In-Reply-To: <20261020-fs-symlink-fixes-v1-0-e7ac8c29b08a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792480170; l=1303;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=553vW3YHFhIhmsCV7ysz2+FA80Zuk307MR2Bst2nTu8=;
 b=bduHZFrUHPcZTfFOdXVvG8762D568vhy413yerHRruifetTsiUl9Cbtcoo3AxiTPzPd1i37JZ
 LVJyBiBVBMIBffKt57INPWDOOBypEBBMxnrDNy2YCAx7LIl3/HBMqCo
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_000936_183035_52E83E5E 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  When the target of a trailing symlink consists only of slashes,
    get_link() moves the lookup to the root directory and returns NULL, and trailing_symlink()
    hands an empty remaining path to link_path_wa [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: B282820227A
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
X-Stat-Signature: k3nuqib8qejjb7s4a1g4pe3eprhkkkse

When the target of a trailing symlink consists only of slashes,
get_link() moves the lookup to the root directory and returns NULL, and
trailing_symlink() hands an empty remaining path to link_path_walk().
link_path_walk() rejects it with -ENOENT, so any lookup of such a link
fails:

  ln -s / /tmp/root
  ls /tmp/root      -> No such file or directory

The -ENOENT was added in commit 74946415a5 ("fs: Fix link_path_walk to
return -ENOENT on empty path") to fix a crash with 'cat ""'. Shortly
after, commit ef98a567d7 ("fs: check for empty name in getname()")
started rejecting empty names in getname(), which all lookups go through,
so the empty path from a symlink is the only one that still reaches
link_path_walk(). Drop the check again, as Linux does. 'cat ""' still
fails with -ENOENT, from getname().

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index edb68cf455..40dc32b3c4 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2195,8 +2195,6 @@ static int link_path_walk(const char *name, struct nameidata *nd)
 	int err;
 	char separator = '/';
 
-	if (!*name)
-		return -ENOENT;
 	while (*name=='/')
 		name++;
 	if (!*name)

-- 
2.47.3



