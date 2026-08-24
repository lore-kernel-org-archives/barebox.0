Delivery-date: Mon, 24 Aug 2026 14:01:40 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyTMy-006gqP-0B
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 14:01:40 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A01A9201917
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 14:01:40 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=vKP5C9Dt;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ko4yFsb6CzjSI17PEwa6LJleNB7XhK0MOgTvyjb5leg=; b=vKP5C9Dtzy96tgJHg9xffMGxtG
	zxEr9fOcMY2G3f49Ujvi8LKZ0iC452YHJhQW7td3DmEAy9cv/eui0AWu4smIUQlyA0F4ro8AdHhaq
	4Z8gfZepBiZz3C1Inf1qZ7b6JzEdfldsIAx5eeoOFECJRTZYABtvbId18wxLQQ0KbGwkNBF2eeN6x
	RQjSe0Km0o2dhT3rx7P6m5y+aGYEw6neWWOw+djodGmoGYyOHO+Yox3kRa3ySPEeYgwr+oWb1Tu8+
	LKPUag1nihq7hGt0M0VGdY8tIJgpwWGL1Oa3SSBc+MV7FBCabkYTKWC+0UI4YYi9yfg7sSxfVw8vM
	3R1hMgPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyTLq-0000000GZ3c-1ruW;
	Mon, 24 Aug 2026 12:00:30 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyTLl-0000000GZ1F-0s34
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 12:00:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6C159201B9A;
	Mon, 24 Aug 2026 14:00:23 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyTLj-00368V-1A;
	Mon, 24 Aug 2026 14:00:23 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyTLj-0000000DyeC-0yJ7;
	Mon, 24 Aug 2026 14:00:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH master 2/4] tlsf: unpoison whole block in malloc_usable_size()
Date: Mon, 24 Aug 2026 13:59:56 +0200
Message-ID: <20260824120022.3299742-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260824120022.3299742-1-a.fatoum@pengutronix.de>
References: <20260824120022.3299742-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_050026_226727_305F09AA 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  malloc_usable_size() tells the caller how many bytes beyond
    the originally requested size may be accessed, but TLSF only unpoisons the
    requested size, leaving the padding up to the block size poisoned [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Stat-Signature: oq6d9diuibjugnn5jw7yyg3wpth8j6t1
X-Spamd-Result: default: False [-6.21 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: A01A9201917

malloc_usable_size() tells the caller how many bytes beyond the
originally requested size may be accessed, but TLSF only unpoisons the
requested size, leaving the padding up to the block size poisoned.
free_sensitive() zeroes the whole usable size, so with CONFIG_KASAN
enabled, freeing sensitive memory whose size is not a multiple of the
poisoning granule falsely reports a use-after-poison in
memzero_explicit().

Unpoison the whole block when its usable size is queried, so callers
can do what the API promises.

Fixes: 0af97b298266 ("malloc: implement free_sensitive()")
Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/tlsf_malloc.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
index 36fdc307cc26..8315073105cc 100644
--- a/common/tlsf_malloc.c
+++ b/common/tlsf_malloc.c
@@ -52,7 +52,16 @@ EXPORT_SYMBOL(free);
 
 size_t malloc_usable_size(void *mem)
 {
-	return tlsf_block_size(mem);
+	size_t size = tlsf_block_size(mem);
+
+	/*
+	 * Callers like free_sensitive() may access the whole usable
+	 * size, so unpoison the padding beyond the requested size.
+	 */
+	if (size)
+		kasan_unpoison_shadow(mem, size);
+
+	return size;
 }
 EXPORT_SYMBOL(malloc_usable_size);
 
-- 
2.47.3



