Delivery-date: Mon, 02 Nov 2026 15:53:46 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xNtPu-006Pt3-1U
	for lore@lore.pengutronix.de;
	Mon, 02 Nov 2026 15:53:46 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 919AD20177D
	for <lore@pengutronix.de>; Mon, 02 Nov 2026 15:53:42 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DNTNcLHz;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=ZFkZe532;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793631222;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=77AlY/GWFswoIUBsxI2QtfqA7Q/Wh3bbUYiWCipldoc=;
	b=EVz1MkeyFupQF9wS15EhUOkiEPxKYd9ppB5LJKgx+Yy3KDu9ZEpONEPrOpXSGKHMzaNk60
	unifdhu8+hJZwgYicUijNoBIYPuSUBXuooQbKw9Ab2NBA0bRWxVI4N5fi5FgY3wmxZLhiV
	ZNhVXpZ/T4Y9+3GaGSRFXer8WOAWEUQCQglp9zGDjKN8zTY0WQxUoKDRIzuIbIqj1tzKxT
	WF64YYExxSQmhsxnSb6AYnLIBDCvQVZKk9ziOezpMYFen96FFTbbgwVbAS6FGj5ASLjXlm
	3FY0Zp6JxbIZRssUKVpe+HLNaTRyX/GJOGFCx9S3HPa35Nx0Vk3SbVPuHF7qTA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DNTNcLHz;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=ZFkZe532;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793631222; a=rsa-sha256;
	cv=fail;
	b=g2dvRYt1AalgqcyPaK9dEWdxHDOgosoxTe6pY99VPM4d9UrCAC3/8+ca/S4fbiNHMx2hZw
	tz7VbNRz/CsgDCntCsHMcvzQ8RCWPpP3N8DX1uUf8jsMKGK5aCPeiMygYfDFIVFQUogX5+
	TysFozJyI9J/KoB+AIerXGsmmk48wMhzSa0qkTFfjKGBeDvzmfwzbcmyAkyjVlLiaYle6x
	q8OvsUVUJ1nJUVWVt2sWPkr0kbAbRf6DIgTKBckKOKU3Ps9sz3TeE7Ep1CNOr3t/t1IYU+
	HM53UhCMEIa0Ff/MXagC3ShypiuDuS+otVUI1PxFLxeaw98yNt8uAG5zBu4i+Q==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=77AlY/GWFswoIUBsxI2QtfqA7Q/Wh3bbUYiWCipldoc=; b=DNTNcLHzui/WFD
	UpDf047dVrdUfLvnLb5KuvvQIto7kOlMGissYcDJuo7EuLh+gFhV/cBFWSf4nO7CFVVzTDY2OcGmZ
	WH9t/G3sN3W8PNa/IkZYn4PDy4nyKUIyoOhHtjGyFBTWHLSCbel+Uo5cnoG6ELu0RmJJxhKhK+j6I
	J/l16UOGzS9wvK85q3dlQrC0zbHIeoNPcPp10pgQeJitAG7RGLouxHCiIkeLstDmBjE1chz266ucP
	RGUi7BMgq6iHKA2hpPiUGJkkLlt8s7PbMtBFfKT3IQYB+rFnLC+CDj2qmSvs0/6mADaWnN4HYB2HC
	ER7nJe6lhOEYLfA9kQeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtOh-0000000GulL-00qV;
	Mon, 02 Nov 2026 14:52:31 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtOf-0000000GukA-0p1F
	for barebox@lists.infradead.org;
	Mon, 02 Nov 2026 14:52:30 +0000
Received: from dharma.fritz.box (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8F456200153;
	Mon, 02 Nov 2026 15:52:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793631143;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=77AlY/GWFswoIUBsxI2QtfqA7Q/Wh3bbUYiWCipldoc=;
	b=ZFkZe5325H5oxZaeLhp4IYK45QEt3q9J2jOTCywav32zMDu41LfcUv1tqkVVv03AZ7EDV1
	JxA1c1mdoTtJSJfGhKU8w3znEt6UmggBlk6SyhN078oJ0zwPMk0oeNbgOEdK9FWooI3pvy
	rNLmPK35Y1D7K0OPSrrhgLqYbCCDv+2M/r+StWTHuPzikb3tqwLvY3j53XAajz4NbPla66
	knLnmJGw8a+rZvyGSN+9HPSpoBe8IKcJb+BF5Xbhp+1+sqIwYTUe0H3PRcRHoA3VjMXDXh
	l0XktwQ26PGzsKqfZLTAYaAdDo1mYOGKkrBvvCLitCcIED/lU5TLTrdb6YPQRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793631143;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=77AlY/GWFswoIUBsxI2QtfqA7Q/Wh3bbUYiWCipldoc=;
	b=XLuV01wp25sY9MEmCEQACuoLZh03NC5S1UkzvXH1lv8hJsYlRd0636qrbEtkC9yfja5k95
	YZRXW0UkogL8MS4WywsRfRc/fZ907zPzxsvfKhJWXZcTquJbcDb394BpjBrAr0MsgJG0xx
	ZfO8Gf4hB+lLcArVgWZiuR0dveja1jN2QX902gc6M6XwvgMctvWxbXSD+Y5heSWcZhVHyW
	0EDzcIfDJ1LP2ebbpb4GGMd+sT44Ofk5M/2w2SyIQ+36tMl6wiwe6NJVlOz1U1j1GjAlcU
	o64oIWjTjWYrw+NG8eARKS6d7N865FuPWk7rI4icRLb3nYocMgVSS0fWT1+jHQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793631143; a=rsa-sha256;
	cv=none;
	b=NmDaJ5dLhzJHjqBVu0NgAZLp+PHk1sG0UMgk2F6LXYgtNyRkL2yloFm+IEmX+0yv8bxkgq
	S2CDIKAl83KZPdSOlyoJ8N9uE9ry9fLv2IEuNk1ArIk8NxyblGJo1iB46GMlmtCCFDwx5M
	6v1KEpLUZyMT3kE4xQqi08EQzToB/Y4cwlFGun7RXb00sO/y6T1dXyOqc5eUxX9acmJLnX
	hLTQlwtAH5iZnjMzvZuSgPKVoj9EXfNK48280danYkf7wGPJ3tIWPRn8I4RYAuaKG2UFUO
	sZbHaC0gS0+x9CdGAjt8uQHds2pdCxvEEgdAF4QcqiSJDfHgtO4q5O17rNpjAg==
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Subject: [PATCH 2/2] fs: jffs2: don't free the symlink target twice
Date: Mon,  2 Nov 2026 15:52:12 +0100
Message-ID: <20261102145212.3022411-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261102145212.3022411-1-s.hauer@pengutronix.de>
References: <20261102145212.3022411-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_065229_403982_EEA02C59 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  jffs2_iget() makes f->target the inode's i_link for symlinks.
    Since commit 66666e887c ("fs: free inode->i_link") the VFS frees i_link when
    destroying an inode, and jffs2_destroy_inode() then frees f-> [...] 
 
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
X-Spamd-Result: default: False [-54.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: xmyj4rr4pq8gyhjei7q7kyecpxk13ktd
X-Rspamd-Queue-Id: 919AD20177D

jffs2_iget() makes f->target the inode's i_link for symlinks. Since
commit 66666e887c ("fs: free inode->i_link") the VFS frees i_link when
destroying an inode, and jffs2_destroy_inode() then frees f->target
again, so unmounting a JFFS2 that had a symlink looked up ends in a
double free.

Hand the target over to the VFS by clearing f->target once it is the
inode's i_link. Nothing else reads f->target after jffs2_iget().

Fixes: 66666e887c ("fs: free inode->i_link")
Assisted-by: Claude:claude-opus-5-5
---
 fs/jffs2/fs.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
index 84f39a0f2a..1a125f9185 100644
--- a/fs/jffs2/fs.c
+++ b/fs/jffs2/fs.c
@@ -181,7 +181,9 @@ struct inode *jffs2_iget(struct super_block *sb, unsigned long ino)
 
 	case S_IFLNK:
 		inode->i_op = &simple_symlink_inode_operations;
+		/* the VFS frees i_link when destroying the inode */
 		inode->i_link = f->target;
+		f->target = NULL;
 		break;
 
 	case S_IFDIR:
-- 
2.47.3



