Delivery-date: Fri, 13 Nov 2026 08:25:42 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRlfJ-00AL1c-35
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 08:25:42 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C9AAE202C91
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 08:25:41 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=HlDVt03E;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=GvJMvgLr;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554742;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=8iIWj6o3dO4E3ox31MTAVWWxNyeauPdZCPx5ZPmx/O8=;
	b=JK6UNFuVw2srl9kU9UWfeBQMoXe8Ehwm6cdAgH3h53joQQgGnaF+Gd9sPaIXzBgjgK2XHv
	vU/OZ/djLBD6MBIdfpUk3azwt10ufxNNaPKHnG1WftUvUkYH5gxHT++GOAXxQesSaDB14H
	SEhNUU1AtqePDj52NTRzeSslpu/4mNjeVzUqYzLb+BCfJRu9cHoPmeP8P0AYrISKI0mjIO
	5ElB0DVHeQptmJ2RobRzyh23KYw+q3tfrF2voqNmtGOrbT1FgUkpz28OF08ud5SynEff+/
	Jthv/bhLYXRJhICkF7702L0h+oV520hBLAAfduKfEVF1S91JjAZkxRbMgxmY6Q==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794554742; a=rsa-sha256;
	cv=pass;
	b=OfyR2DE7lblVpZpULoGhi+P9Wx+8ZFIeDnPc6F7lrttNGktesihSL6knhp8b1RGjRMiG2Q
	0juH1gMtWRvab/+DGwdBzO61K+PBc+1GG52fOo9kMHxeBhA91IiJsnfXuBttYxC8k+rznt
	pD2L8CU8RBtka8m1yZKrwtsUDYdpokyIKLvWkpXqT47pGSuBji6fVw1xbzqg8ZQVHCHaP9
	YqSB9/1vE4qx9KMmqEfAbbuZ0LqXVa+nIiHqRts42mfY/MdAWiYmqTpd4zGB4mlFIkYEgM
	x7+seenzIcQomd+a3yeebh6mUsEB0ipeU3qHTNev+i9E84+EgxXJGoMjPtA6sg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=HlDVt03E;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=GvJMvgLr;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=8iIWj6o3dO4E3ox31MTAVWWxNyeauPdZCPx5ZPmx/O8=; b=HlDVt03ELiZGbe
	Wv1EWT7MutBs8NYrjtZd1VNcyStafrKVOfuGyXQbts09gHoqN1yi2hWRolg/7nZ8IDrV8RBAiJGTm
	Om/ICEcn6Ort//3pLPkoC1VBgmfvfiIbuoC3h9E0Ju0giGicO9S4pwKtByw+pVMEuYoqKGpJ+KBx1
	EsQVlNpL7PZBhFiT2CTlQzux6RtzRDSqnMVLHjHf5scgSIw6xaYy1+3b4qDhcrgiv/NdN609JCZ9e
	rPHqkeiyowmYPRRSOcCY84GJMjmlt0lSpTSgWXuFhFNwM6uz0H9ngqV0pSBVUboKwEcY37352znvh
	NBdYiU0pb9ye3Tvqen6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlam-0000000BtBR-1W62;
	Fri, 13 Nov 2026 07:21:00 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlaY-0000000Bt1a-41cf
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 07:20:52 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CC8D0205836;
	Fri, 13 Nov 2026 08:20:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8iIWj6o3dO4E3ox31MTAVWWxNyeauPdZCPx5ZPmx/O8=;
	b=GvJMvgLrNrCosqWlWZPFX30MYxoLq9UkcJmExUqq8fUhX5MJaPCVAeVXq4yk1BBHjO90y2
	N1gVD8+sUk/vqyz43sCDoTXoevC+dYryLLEZIm5V/loo67UjyZvzLOP3AkopHcolcbl416
	fy07zsqTU1a1zAl9N2LRRNe4Yx+O2JUyrfUNptekYjVL7iyKR4z9ThfQTj27heda052hNS
	3voRlKvlE15ovqRDdlfX+3oJPPUd1Zhoee/wrc8Yn15EsNijpL2MM6opcK1AxLmcjU3IkK
	PMERjQ8BKIgeYLQ3S36CN5sMXvbY6exSBDxq226gKyZQSTPMC2JfI151Inj/sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8iIWj6o3dO4E3ox31MTAVWWxNyeauPdZCPx5ZPmx/O8=;
	b=C8NtdIzi6au+N9G4/AM3DhsIXRbxXKx6oUTfhWyR6gvuQr67D5wmjL5/GnsABzdZ0XWKPO
	3Q9GiyY2DXdF9LUvLP+4SipOY9+12vO4OW6J37vp7rBYL0Wh9fqgaqN8uNGjrK3En/czZf
	EzAI61ZPi4OBCd7gWi6NwN/PEhWKep/RhKyDuZpyrElGYBPrkAM4nQrsW3oK1ERF/bwU/s
	9qgnI7omRAYvgC+IyER/nqZMP3frmWQA9zwbJ02QLbCz+MzrG9IV5ME87ywJ+4s5ad1+Bl
	qVnFP/kLGi0MfvRTUgCQ/51ac+LG/WNL1B7gyZvLv48/flWvMyTsrzRKPmF4UQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794554441; a=rsa-sha256;
	cv=none;
	b=f6TPhHEXJ2A12f9Vhc0kzs1hFBlQWqJSugmxUXM7a2S/wjnVphhXW+BHTN93Rwyd52EIO1
	Ic5gPu7Nwxyc/UDpG6zJlC45fIpu33ZJ3cZ01O35I3/he1GHmSISOLGoLlauKmNLVtEpVW
	sxUhMtQRDA2a3TuqkpbUuo/DW+9SpZThhHLVbgVSc4G048DD1+TCDSVayZJ5locbRS2sbP
	hUYB7StbYf2hxto1bDxnwuQkSlZbiWsmNCq6/02xgfq1Irzw120FoxpObgV8jDtJfLNGM6
	XRbO1Sd92n/7Igrpci2vyRreojSnyYTfJpY7BgF+K32mQ5TzD9Nz7XVglr6wmw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Nov 2026 08:20:41 +0100
Subject: [PATCH v2 6/9] bootargs: remove unused linux_bootargs_overwrite()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261113-boot-globalvar-stack-v2-6-14c0f0a0986e@pengutronix.de>
References: <20261113-boot-globalvar-stack-v2-0-14c0f0a0986e@pengutronix.de>
In-Reply-To: <20261113-boot-globalvar-stack-v2-0-14c0f0a0986e@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794554441; l=2235;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=tvJvVllXFojOIslLS9+hq5Jy36ORGPEjts+gw8kK+Go=;
 b=U8oUIM9j8Q0wqcvg6DpjkM+Cfww1xumjeQJZPZRYYOTeZsapRPbhl9v2LnBgdIg2V1Wb6U6cp
 oy08Kq3DFZgAeGcnmtGPCbJm0MAAQjtGXzok9AXTC3zTPJKr/CBskng
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_232047_378759_0F1929FA 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  linux_bootargs_overwrite() lost its last user with commit
   fe1e02cc68cd ("bootm: add generic android image handler"), which replaced
   the old ARM32 specific Android image handler calling it. Remove it t [...]
    
 
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
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: C9AAE202C91
X-Stat-Signature: d5yrt18dmn6zaxtte48eoqbfsg7maopc
X-Rspamd-Action: no action

linux_bootargs_overwrite() lost its last user with commit fe1e02cc68cd
("bootm: add generic android image handler"), which replaced the
old ARM32 specific Android image handler calling it. Remove it together
with the linux_bootargs_overwritten state it maintained.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootargs.c  | 17 -----------------
 include/bootargs.h |  5 -----
 2 files changed, 22 deletions(-)

diff --git a/common/bootargs.c b/common/bootargs.c
index 6373d9ccb1..06623bb60b 100644
--- a/common/bootargs.c
+++ b/common/bootargs.c
@@ -12,7 +12,6 @@
 #include <environment.h>
 
 static char *linux_bootargs;
-static int linux_bootargs_overwritten;
 
 /*
  * This returns the Linux bootargs
@@ -28,9 +27,6 @@ const char *linux_bootargs_get(void)
 {
 	char *bootargs, *parts;
 
-	if (linux_bootargs_overwritten)
-		return linux_bootargs;
-
 	free(linux_bootargs);
 	linux_bootargs = NULL;
 
@@ -65,19 +61,6 @@ const char *linux_bootargs_get(void)
 	return linux_bootargs;
 }
 
-int linux_bootargs_overwrite(const char *bootargs)
-{
-	if (bootargs) {
-		free(linux_bootargs);
-		linux_bootargs = xstrdup(bootargs);
-		linux_bootargs_overwritten = 1;
-	} else {
-		linux_bootargs_overwritten = 0;
-	}
-
-	return 0;
-}
-
 char *linux_bootargs_append_rootwait(char *rootarg_old)
 {
 	char *rootarg = xasprintf("%s rootwait=%d",
diff --git a/include/bootargs.h b/include/bootargs.h
index 4a51e81173..93ec621ad1 100644
--- a/include/bootargs.h
+++ b/include/bootargs.h
@@ -8,7 +8,6 @@ extern int linux_rootwait_secs;
 
 #ifdef CONFIG_FLEXIBLE_BOOTARGS
 const char *linux_bootargs_get(void);
-int linux_bootargs_overwrite(const char *bootargs);
 char *linux_bootargs_append_rootwait(char *rootarg_old);
 #else
 static inline const char *linux_bootargs_get(void)
@@ -16,10 +15,6 @@ static inline const char *linux_bootargs_get(void)
 	return getenv("bootargs");
 }
 
-static inline int linux_bootargs_overwrite(const char *bootargs)
-{
-	return setenv("bootargs", bootargs);
-}
 static inline char *linux_bootargs_append_rootwait(char *rootarg)
 {
 	return rootarg;

-- 
2.47.3



