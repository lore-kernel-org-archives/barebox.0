Delivery-date: Thu, 15 Oct 2026 11:24:35 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHHhT-00DrNy-2V
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 11:24:35 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0EDC7200467
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 11:24:35 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=CUVBAVbH;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=CPf7KYgw;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=LnXZabbI;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792056275; a=rsa-sha256;
	cv=pass;
	b=LEEkRsjxd2MZMyqqJ8FRD4gVtiS9j8m0Klc2zmFHARA20B111OFGJGDagsNaoJ34oLiOCE
	iKd+M+cPwq1zBvtuC+neeEQPVamhBfTqhq1IbNIBuxkcKOlSbKR1msWGmi9+SO/fKtt7Ee
	Q5p+i6rtbOc/8E9xIg92ACpzXy6cX9z43mPHBHHL39lOAf+BOn4dDwYu352hfF8vy46kEx
	iY0vaLQVfIA+sOdRvWt5TEugRxXzTgFYEm4k5wwk1ftdwJMHN4WiJrSZuvnXAgPIoc9LuX
	KbDqicWlNPZUjif/rWGhezb6EASETHwDRSEMx6GqBZPlNVLapBYozJolrNEI2A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=CUVBAVbH;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=CPf7KYgw;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=LnXZabbI;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056275;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=gsABwxMUu7e2b3f0yWGRJCf5dyR4N+GpxNzRLYA4O+s=;
	b=ca0Ax5VB4HrQXeA3O8E6DWohlGj59FsHWi8FWEkxhqXnFqwZ6VFvvHhW4iF1pfSaQVwfza
	iYlOxG6dXLwPQtjx48uPNmWqjkH0rG4uU/Ic2vMU9hO2P1Mt4AW7rH+/glkPDAL5K2ZcWH
	YqGAFQCgvLttazlC3YIaNyqsQaWilITjq38D3BM3HeUFnBcTFOq0IIsdiIYRuT4baxvN/o
	ioYoNRXSLA9hX3y8RJN0XKwogx2w/cF9ealKpUBX6xvw/KGRwJuxGf5N1B8Qm5YdaCWRRu
	iuf2C0PSHc3zcZNZVy/vjXC3VgJUFLuAAEkbpTemTHjK+aykhLSx/wbGY9rRtw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gsABwxMUu7e2b3f0yWGRJCf5dyR4N+GpxNzRLYA4O+s=; b=CUVBAVbHxlasMAdyhnQFV6FgYb
	g1wlim/Mpvo2PETcAsmPaIvZR2uUu2nn8NAlnm1lijMHQu7ATBm5OQ1V3ib0vQ552HSK75Mx0/6oW
	xbc8uvCOs475lqwRkLNskPMXHazPx8qtVc63rFqVjCfqKRnZ8BuUvhGmroj2fR0IIxWBC8YqEeJ+y
	zOxdo0FO6wQOqA8Ot7cFJK8jnC4GgvAfusNyiYmpNI6pTA87UPu8VrEhYLADGji+R1q2aVS+MXmCI
	Q6KustT+7e9HzdMWTxCyfwFSM0yOrGn5/28DkdH28EHS2mRSaKZYJNQvxrLKqvRA0J0qtzZKwQ7SM
	Iu9J/GeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHgE-0000000HFXF-2iG4;
	Thu, 15 Oct 2026 09:23:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHgC-0000000HFW7-38uJ
	for barebox@bombadil.infradead.org;
	Thu, 15 Oct 2026 09:23:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=gsABwxMUu7e2b3f0yWGRJCf5dyR4N+GpxNzRLYA4O+s=; b=CPf7KYgwloA/6+u0hdVSeDfoDR
	XKE7N+xdqJR5hsFz2oB0f/6Eti7OC08//vJD1wzt07tWX52MpG9kJbNHQdEolwEUtydppnqua/n0o
	dQgC2UlCd8yhCobaCqEv+Y6QR5qmj8s3pG6u+a6AqxU+8TobyxaU1EWiGFQbsSMmLcbVCRU6MjT+e
	bMHV2cj6eZbOvzuU05PROdUu8oAdWxHHyLp/M28k0knaJTYEwUWjrH09kU1qjbR4LnFRDsN1CVuWW
	9Ws43GtYO7nL6fSyLi9bDwANCLQToEtJAPafdwDpoXB/vvWFXOdQW6bgBNlbDs/DMmLfwPhk80onV
	apVkZDJg==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHHg8-00000000ANc-3fSr
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 09:23:15 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6AFAC202012;
	Thu, 15 Oct 2026 11:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gsABwxMUu7e2b3f0yWGRJCf5dyR4N+GpxNzRLYA4O+s=;
	b=LnXZabbIzTbcql6zw/xOkR6Vq2YgvwE4vICY3foZdJaLzANJToCXz7f4NHVkuWv3OCNO23
	Qt8lX6HrzIHOiuCoNPan+469QRx94iSOqYJLESz6JGmPCbzYIMab4JmEm6mMyoIZCT3JC7
	q5iUqw6/ZVCaijmAHX3Qtr3DYH4ZUyGnse8LX7Y2tfdqQ8AkGkHyPlqBlQ6ndj8+K+5R1o
	YJ1AP3p02HiLkxnrfR66O/3Pkp7jKtyIAXTjHPnk+LMgfUeME72yh+1w1k3kFmYymmT0Dj
	OFi9YkkEDHv2+orFKnq8Dbo1VciPguxFz2MaNLmQt0B9iiEeumQ5RJwo7TCmVA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792056191; a=rsa-sha256;
	cv=none;
	b=Au/GPS+JyBAa6J/TvTrzj6CP2sAMfUBvUtPMH4e6X80UiI6suBTU88KqywmcxbEk7h5uu2
	D6AgGOU31HG6gXONnnoidybFg2FWFxZR+YfirfOQHPVuYlOWzVGqtNAia8NSSwMitsXas/
	25WFFP6KeHmSZ0DSyiMb6U74bT5zaO4g3vvR0M98Th7iJ7gk21wVUGvkzJ2yV1EWkAlnQa
	Fbqxc55T1l50rNP0/5cyojc7ry1EVFkaMdvkUsrzHES8J1dEW8Bne61odo/ntW3xjkD1+E
	ep8VlHa1q2KRTvI/QmjSTwvnWXkP4cspnTGPmynDGeYjypsDi4wPanbJm3Y/Yg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gsABwxMUu7e2b3f0yWGRJCf5dyR4N+GpxNzRLYA4O+s=;
	b=T/g2mPha5A155hgQqleQB+hB3IDLMj0O+CvoTaMGrZUoQald6cHYAgAffXZcbWsRmejU01
	Qm9c6/T7jBdBsLORGb8g7t6fdiWekOrMGtJHhrmAub/4ZuqdKye5hzhmXACm/QL2m0a+OS
	UUQbGhDV2D1OL7VM4q0fQCr3sgJ6gDJHEZQC30RKEm+/g+YgBcvd7MdjWhQTMmw63nhobF
	xZVYk8H/I9N2hBjW3nL+YbG3xx9HrGKYAs1EyoeyVg4HKd1I/GPjKzvKSHHG5a6/TIpcX0
	AOHBzl/KQM19rcJDWhKF3qCVe8gUGWIpigUsNYE70P9BnSEbinyr1xfkkhT/ag==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 594CB7415BD;
	Thu, 15 Oct 2026 11:23:11 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH v2 02/10] common: bootargs: don't leave linux_bootargs dangling after free
Date: Thu, 15 Oct 2026 11:18:44 +0200
Message-ID: <20261015092308.146516-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261015092308.146516-1-a.fatoum@pengutronix.de>
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_102313_456613_590B3971 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  linux_bootargs_get() frees the cached command line before
   recomputing it, but the early return taken when there are no bootargs leaves
    the static pointer referencing the freed allocation, so the next [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-59.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 0EDC7200467
X-Stat-Signature: wp4j6a75nqf7grdk1pd7smdtieckqfw3

linux_bootargs_get() frees the cached command line before recomputing it,
but the early return taken when there are no bootargs leaves the static
pointer referencing the freed allocation, so the next call frees it a
second time.

Clear the pointer right after freeing it.

Fixes: ee4cab9e5874 ("booting: more flexible Linux bootargs generation")
Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootargs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/bootargs.c b/common/bootargs.c
index 36528b8b5827..6373d9ccb1f7 100644
--- a/common/bootargs.c
+++ b/common/bootargs.c
@@ -32,6 +32,7 @@ const char *linux_bootargs_get(void)
 		return linux_bootargs;
 
 	free(linux_bootargs);
+	linux_bootargs = NULL;
 
 	bootargs = globalvar_get_match("linux.bootargs.", " ");
 	if (!strlen(bootargs)) {
-- 
2.47.3



