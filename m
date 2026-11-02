Delivery-date: Mon, 02 Nov 2026 10:09:59 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xNo3C-006Jer-1T
	for lore@lore.pengutronix.de;
	Mon, 02 Nov 2026 10:09:58 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AB0A0201B70
	for <lore@pengutronix.de>; Mon, 02 Nov 2026 10:09:58 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=tL0GABqd;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=H7yPhP3n;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793610598;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=CVQYZB7pi/jCX0Q83TJY3Aj039+Sk1WGYHN0ukjCDck=;
	b=bo728wDfJatbkKwPQgFIoPSNV+6WoSO5SE5QxT5eP1H8p7fO0Rs73+xWpYX4VCSFDVI6k4
	9xALLEfRC1NTLgh/EOMA4ZUgnXuj9OWwHbjLbkGO09ER2s1B8m24RxdlShQOsXXw6qrNnk
	74ZVMumqddE2iHBNq4nsoTQqHdms98nWnatCbdnk8gZ3y2gfJFU3ChCCvfJ35nDOM7aQ+e
	0in0wLHHTvxX+gqUwlY5rw6RAZN5ayWyiKsonQLXNrQ8L3A45Y2lUWnEsjed+XviZ2I94s
	PIaKtamczdNwLkcXbQWYzrwMJRWFG3UrrgePiEIQcnpy3HIo9wmjMFhttxQuww==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=tL0GABqd;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=H7yPhP3n;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793610598; a=rsa-sha256;
	cv=fail;
	b=Cz58sq/nw2WYpyCIE1U6yQEAP/yAIvvjyAjeZIUQ7XkNkPqlWmLXvu3dnDiRkdHm6rvUNw
	ykFVVJXC70//XgXT4ZIfzK1UFfwx140xWJPRrBEqHvn6kZGfFpFzfw6cOQPhf/i5KPM2wI
	bzMD87t/rxI8TmFG8nqLiq/HPVF2dpBG9BI3Jg/wxwoHRLod9gdyVXEiOPRI0XSlfCiNrI
	ugeZ2N5xrQ9qVuqkLmQL3t71tMHUHqS5JTb64XhvHuKOETeEH6EjiZbdUuYg28ZrJMiDqn
	hh++/WWppK+FPybVp4hWIvncELEtf+vNYrAUih+uiN/jwQHevA2jL2Kke0XEDw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=CVQYZB7pi/jCX0Q83TJY3Aj039+Sk1WGYHN0ukjCDck=; b=tL0GABqdpBxES1
	LW/R4J7I1PRRol5KibMv1Cw05WtR7UjygeU98RGPXkCGfAF56WDT+FKNWOVLnuaCvgK4MIcvTD+L6
	w9deFfr+1znFjyt3cHwKtYE8a0FoLcJWmZB9w1h4FYBS14aNFYBsvNbH4MB0I0x5EmQV/123Rj4P4
	WWR+hXH3FjYAkykZghRsO22M3HYjMrQC/MyIqLnGDAC1QvjeSJZORDvnBD0DAomkPGJ6TbvcTq073
	2Z5Tjevznmge69ueX9rW9hhNCOlRkKTq58tsqDuMrNrVX/s/ngQRh6Zhgjw7kmXyiLdIv10wNjJOl
	i0/ndtQ40clQNdzZLBPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNo24-0000000Fwfs-3T7a;
	Mon, 02 Nov 2026 09:08:48 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNo21-0000000FwcX-03pd
	for barebox@lists.infradead.org;
	Mon, 02 Nov 2026 09:08:46 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B10082019D1;
	Mon, 02 Nov 2026 10:08:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793610520;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CVQYZB7pi/jCX0Q83TJY3Aj039+Sk1WGYHN0ukjCDck=;
	b=H7yPhP3nEcWCvmfiF1EWZdBRPQG53OATkcQEKEXWn8nu9VPvqMLz8B8Iad+mXI6hY9JEZT
	NzsUdB73Xl/Wz0S946ICLgu45UNOay8F2ck3HkKzuZwJOyRQP0BlBiKt3Rq6dUSVEfm4Ws
	oHRcsHykOPObyHQ1Akz959aIi0GSBzwOsFLujh9+zKHgw0mAWCsibcw/iVCOYLVMYj4Ixr
	cOdzNkhh38PiFOHj6EmtWHDthrI2tJ/GKk17GLGsR8gzWE/PdRIuaWBpjf57PVDAqHJeJ1
	gG6ynXR0cCItYM4PCLuGLeomuDP7owR///XGwmizg/J4a35r9etouvpKrtZDhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793610520;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CVQYZB7pi/jCX0Q83TJY3Aj039+Sk1WGYHN0ukjCDck=;
	b=CleiZuSY7B44OPyhH5Q8ugl5c+zNZ2d4evBlM0VMKfS/3w8Th/DrPtE0V1fCVP9objd8HV
	364tsxDQbiKOCjwkfRqlPs7CZ3lBgscd/1Pxd/17jEU/sIiK+Zz00YIPeLZB+Ub+t5Z1jd
	6ZFzIaXdS4e+v2k5eKT0ryOmm5J8k94DK6cA4Z4LWw5QWOk4mTqzIAKV8o7Ybw4aXU1Fd2
	cYlJY0WZ3RmLZcPgCcTagaG/CbdJLzGutxq8M30/kRn2EbIxQbURnWraMzeGMWPZlY07R7
	j2xH/addYOr75SN1i59z5DPOGrMyUo2mOn1FbfuJg8ABsb2xDdQjXPS38H/i1w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793610520; a=rsa-sha256;
	cv=none;
	b=WxU9VL1LKZrD+UFUYgmHyN9D6bc2gf5Y7Qf4q2IxbGsO/qq8bxCWi9Y4e1dUNxK6qs9yYg
	S0RfzGJd8e4lssGaj1L1wzZjHOm+GGzaBXOwp5kbh4YiM4Xq+9zSFRZjiBOTZ0UeYWuRPn
	N6e+nNEIvsAGNzVM9z6T7Y3EnkJ/U4Fu+rbCuju31alLPzeIYVtujRyR1k+KN+qIPyrMzs
	jIjhAuEHjjjgBm/iYlJo1FIsTNAkWsID0N199VK5m8eepvQ0hcsAsfQv0RLURrA1W0PEdV
	kN8iFrjKps/6svtx9a435YTw0Ha1Jv11/NRC3/325ooJXgXmkgEZIg9VfyFFqw==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 02 Nov 2026 10:08:41 +0100
Subject: [PATCH 3/3] fs: legacy: return an error pointer from
 legacy_get_link()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261102-fs-getlink-fixes-v1-3-c2816b3f5ca8@pengutronix.de>
References: <20261102-fs-getlink-fixes-v1-0-c2816b3f5ca8@pengutronix.de>
In-Reply-To: <20261102-fs-getlink-fixes-v1-0-c2816b3f5ca8@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793610520; l=919;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=qxWcUEEXwKpBtdFbdKpC6OtZuls6laeATDaCfg+jvOU=;
 b=AzPEoGldbRymYlmqcd3aSYExqnd74TF5TgmEhJKfA8LHhySYPVaXNyNOgxvalxFn0+BEA4mHr
 2ITW53BxFDwAIEWE0en5BfnrngRDchDDg7Ov35V6DqhGvqVAq4UYzxS
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_010845_527205_BAAC9B27 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  legacy_get_link() returns NULL when the driver's readlink
   fails, but readlinkat() checks the returned link only with IS_ERR() before
    copying from it, and path lookup takes NULL to mean that the link h [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: nexytotumdqsparuuoffrxejiajf4acd
X-Rspamd-Queue-Id: AB0A0201B70

legacy_get_link() returns NULL when the driver's readlink fails, but
readlinkat() checks the returned link only with IS_ERR() before copying
from it, and path lookup takes NULL to mean that the link has already
been followed. Return the driver's error as an error pointer instead,
like legacy_get_link() already does when there is no readlink.

Fixes: b3fbfad7ae ("fs: dentry cache implementation")
Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/legacy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/legacy.c b/fs/legacy.c
index dce14706ca..07381d2b5f 100644
--- a/fs/legacy.c
+++ b/fs/legacy.c
@@ -289,7 +289,7 @@ static const char *legacy_get_link(struct dentry *dentry, struct inode *inode)
 	free(pathname);
 
 	if (ret)
-		return NULL;
+		return ERR_PTR(ret);
 
 	inode->i_link = xstrdup(link);
 

-- 
2.47.3



