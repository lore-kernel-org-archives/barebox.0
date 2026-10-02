Delivery-date: Fri, 02 Oct 2026 13:44:06 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCbgM-008pMg-2B
	for lore@lore.pengutronix.de;
	Fri, 02 Oct 2026 13:44:06 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8781B2022EA
	for <lore@pengutronix.de>; Fri, 02 Oct 2026 13:44:06 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0KwZuywr;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=D7d3Wx4z;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790941446; a=rsa-sha256;
	cv=pass;
	b=ds9zVUIZ0sSo/RoTVFUkRMQ59nriqukBXbVE1gUZO4JgGu3n9daFfqHaXxxIAHJVU/6fXk
	Kf3Z1Fgaz9U07I18Sowr+WRCthUFWaCB35dqwfR+6bX5xTjR8KSXsBgw2F31rDJ90B1YSa
	jYI9hoQdWN3tuLd1xZrfZYaNg9TV5QfQ1WP37loHp0l0Nj8K6bNh0lhe+gfYNrUDF69hjw
	Z+fr3xfCjK1vsGNREzfKjMSATt6ePbpj6Xb3YFRZHFHZ6gS4OqspUb9VHRKr1QIpctGw+u
	yXsIKmtNLNIu6DFYue7iHEhGE/Jf2vTZL+ID21aTjV2zRe02tvhfE0w461odcA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0KwZuywr;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=D7d3Wx4z;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790941446;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=65Y+Uu5b2gw4m6KhzH+DPGWYYuSnZVP0yLzOSaY9eRw=;
	b=ARF6LxKmq6JqARvyLw8WMXcffseKOQo3C/kiigwNxP94FNNB2JmdR78Hri+kcZQZcwAPFh
	NxoOdWHGC6w8AUwCPWo91ntIGZM1cpBUx4F9EbeZcIJ8PPjA8UdtKEAWmjqomTpqHUjzjI
	rZ10R6UdutOjEuktPCibYFYO49YOydP7ZTHFXE7jRAywyIVzM4uZKl2jAJuPYnkQgjMd6l
	jQ+pYaHEN3R0CPIGb97927UcxNWkUKKS/p3GKT/fU1YL1UQIbXyG4AsAOMhup9Y1aKFHsJ
	DScfFq8Sj+7tAreNYWsGlJxTa/50zfDwS2Ktyt3QvxuHPUheS9PbU4V3Mm7PsA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=65Y+Uu5b2gw4m6KhzH+DPGWYYuSnZVP0yLzOSaY9eRw=; b=0KwZuywrD6IN8ikLwm+IEAsxBF
	GGiqAIs04f6YBTvI+G2HqG25QqWfjNkYHWQfLi3S+PVY5skN19FNl+WmNunB8XcxNhYmhuQzzY2u6
	61TWzbFToF3tbsaEkzjBza1y7AtWIkJHYKZfMWikzgDjch75kssJDfcNeWGQHffaL+FYtWZvOmi0V
	rgG9Xbai0otG22rfDPROKmyTxxSpQcwrp79paYKVz13rYIzEkajtPh35J+X5+oFkdKyYQrFgfsxO9
	6fhecsfocMbNjwBlGJS1SIW2QmgDTl12mDZRnVxBoQIKP6YJimizb/vX10zX/qFnEE2owoWJcjipa
	Fqw5pS1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbfJ-0000000BVGZ-3GOu;
	Fri, 02 Oct 2026 11:43:01 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbfE-0000000BVEY-2IkH
	for barebox@lists.infradead.org;
	Fri, 02 Oct 2026 11:42:59 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 94B42201F0C;
	Fri, 02 Oct 2026 13:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790941374;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=65Y+Uu5b2gw4m6KhzH+DPGWYYuSnZVP0yLzOSaY9eRw=;
	b=D7d3Wx4z+0ukfEUrxG95cHU/YUFq6UyVKYzQz4Jec5yLlOk5DdZkDO2nxB34hkcBEKNQh8
	be3qW5iAQ8i3m9NUPRQpTWkKcNSKY6qiMlJQWGWJJOTdan+1yETqk9zNuG+OGiv3l7Airr
	YWQ8UYPji+gZ7vaIv4MTIYQI2GJX5AGyvpvuudxACkrT2M2uWBoo38v8RsUWkaah05RFGd
	es2Q8pcBx9Epmgln8g2caZ5eyf2sKQcR2tSzkumT72i4+JxE26lkEb4HwUnhaxuwA0JdFm
	akl9YwYb1zmqGzdI0b9Qm7fNXoyVTc65wvz7JHA3GebErdfGyWF/SACNEhevGw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790941374; a=rsa-sha256;
	cv=none;
	b=Vm2IrezktqYSAkupcq/E+kK4On6SQ34byO9SB0xW2OTtKiProyHTssHKzXXxcB3qxn1t51
	vyjxUo6NR+m0l8JCb67H3i9TZs6RHd/XTjbfjcwAV+QhfsAj867+S97ZjG1W7sv9b2n6WG
	u/z/MYl64Y5C2CGDmdIbvSsWdc78p2S9CBKfUKPSEwq6yyv8eXqzvmdI1z0tdY1rjeOO4X
	hcu2wNtMARpyPmA1O1J0H1+S+w12++cUyP+hLHSeFkar4IuNHwr0UyLISPaSH+ljDX9Z6S
	lvW53PRuBLkAcELL7bCZIsK2Iok6b82Hh0wqpLckIsgkfzL5HwEZUYoLitWe/Q==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790941374;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=65Y+Uu5b2gw4m6KhzH+DPGWYYuSnZVP0yLzOSaY9eRw=;
	b=P00ROmnPSfCYEH8oUS5jOCcaR7PY6m3wss92Rxbj8P3xOgn4GFLaYF7lJ6fiTNp+OW03Be
	WznUqK0I8bG8lU4X7hxE2Ka/7fhR0ksu1UIpJKXeXDHntSb5w8KZSqXsJzUnxwHy61nKOr
	5+Svmz8RxrrKtU6gUmwywrIn+IQfRFeZXCxYA4XiyksE7Izp8/pfkBcc0d5Kq/qBj5jOsM
	dcdpRuloLL+sfn5H324YEN/f+chEtdbxcRKBStETSWiWBpceuM7StYD3wtjFdgPZFl9ATg
	NUwHvHBUwQdbISre1X3F/fzznFc4GBwe5EOelTD5pyD0ZQyaoFCG+QTAUesN3A==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 77300741476;
	Fri, 02 Oct 2026 13:42:54 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 2/6] fs: reject negative lengths in ftruncate()
Date: Fri,  2 Oct 2026 13:40:05 +0200
Message-ID: <20261002114253.2906535-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261002114253.2906535-1-a.fatoum@pengutronix.de>
References: <20261002114253.2906535-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_044258_367764_39D5334A 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> ftruncate() passes
    any length on to the file system driver and then records it as the new file
    size. None of the drivers expect a negative one, so e.g. ubootvarfs moves
    the rest of the environment to [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 8781B2022EA
X-Stat-Signature: 6mj9g3zow8rneq9a58cxrfkc5imwmyus

From: Ahmad Fatoum <a.fatoum@barebox.org>

ftruncate() passes any length on to the file system driver and then
records it as the new file size. None of the drivers expect a negative
one, so e.g. ubootvarfs moves the rest of the environment to before the
start of its buffer when asked to truncate a variable to -100 bytes.

A negative length is easy to come by: truncate -s parses its argument
as unsigned and truncate -s +SIZE can wrap around. Let's return -EINVAL
for it like POSIX says, before any driver sees it.

Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 fs/fs.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index e18e3b9cd7b2..977635d41082 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -393,6 +393,9 @@ int ftruncate(int fd, loff_t length)
 	if (IS_ERR(f))
 		return -errno;
 
+	if (length < 0)
+		return errno_set(-EINVAL);
+
 	if (!i_size_is_bound(f->f_inode))
 		return 0;
 
-- 
2.47.3



