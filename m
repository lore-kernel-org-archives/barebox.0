Delivery-date: Tue, 22 Sep 2026 12:54:21 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x8y8j-0052E7-02
	for lore@lore.pengutronix.de;
	Tue, 22 Sep 2026 12:54:21 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7922A200927
	for <lore@pengutronix.de>; Tue, 22 Sep 2026 12:54:20 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=yzaLfAp7;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=duFD53YL;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=RpN7sriu;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074460;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=MiefjYS6U8kHYe0k3zWOddcivN8ObBGsMzIbBgU+BVw=;
	b=Uj1VvoQblIAFfA5FLGDUmqggwKKjzpqE3bYWTfLskEeAUascHfZ54S76tpxJtHm6sRDw4+
	jte7+6hzsupUteQ+R2Jx7qREpR3EDNpwXf0Md7ytNiPdmL5YlEP/c+Lg+eT1SpcHOvAe39
	rJ83Qsw5qJ99fRe/JNGvMCdT4UNCQeMHQF9aiMUPtIzQRYsL6fFQzJqVXXU112MKb1rfL4
	hO7t04PzScIpLu4ZL5+ibywNNWFF6F4g6vTurfAGPZbQtA0z4SEKQr9Nv+OMTVlwqJk5nN
	YqGhQP0JwD0wIkJrLT7v9+NxiKO5wRQIxjiSfw+u2aeaUmHeYvT1PKErZUJVZQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790074460; a=rsa-sha256;
	cv=pass;
	b=cPM8Mvubcvmf1NW0NjVoL6vhNG1LjcCkR+SnwqfMfbFr09q5yp68TEN9w0GYxkSdk1eKiz
	kifZSuBgnQ2gNtAwDkOfSY/J2RWtfPxzJ+n1FtWFPkb8CDwWagTBT8OwMgpizZTu+yaRAw
	7ZE0SvU5iFJII3DCmB0YkhwmP7TCyRck7vboveyWe4ZF13ZOzqIIela26uKFx1HdS1CwTb
	ceMaY6zJJJaOi7b7rKcCMTjCiY0RENfgzPHUdgyxg34LyzRblJmbRAnMWwXzjQQ8ud0y6q
	xO9/rQU5zboqaDDJGGc3gRnMPwIticIli+KzagdzCkBMBNHo61giTVTaxECU5w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=yzaLfAp7;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=duFD53YL;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=RpN7sriu;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MiefjYS6U8kHYe0k3zWOddcivN8ObBGsMzIbBgU+BVw=; b=yzaLfAp7duTb8P5EVBXBBzIPBD
	K8996aJzWQVxJ8fIpCoRLPCjp38GD74GJILipOjDw5J1I3cXMlx4giC+nLs/NreT+kmuO4FHRXCSW
	8X93Qp0BTivpje0o8WxeylvkvbG8gvVvYzWG0Q5AhhAtU1FcWsmNRTxm4f5DLddEmtk9NPriAv6lN
	5DoWxzD7Q8CAICXWIHch75oprgPRSCS5bB0EipxejlbYgxLZAv8UF4fWe2QJeuatZN+A+HDoMupbE
	yxNGAq+0dFl51Fu/eZpp4mT6Mja9yxRfrHMtR55+7t4k5ixrt8gVRkpeF19M/u+7mKLBdUbm3fTLM
	btDtWR1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8y7f-0000000576D-2BsG;
	Tue, 22 Sep 2026 10:53:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8y7e-0000000575o-2oMP
	for barebox@bombadil.infradead.org;
	Tue, 22 Sep 2026 10:53:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=MiefjYS6U8kHYe0k3zWOddcivN8ObBGsMzIbBgU+BVw=; b=duFD53YLWWZ3jND4XRgrJSfk0C
	Fghfh1kNUl0a6wKiwHv87ZBwoHQ3E81mdmeL9PrNHt/Alt28kYsLHJ1MEWtgRCn9FF5ASYLuTIBEz
	fQ+h8PdK6Yd3mNQMil1Uakp0zFgxC3o8q17Ts+U+h2Ya4Fmlwssy1lnLviT5B8Iok7YlBLEWOpfLa
	JWpFwcGk5ex0RkX0FnL9EK1cQ0m9zr7jdA3BfolBJeDGevWv99HVjllSpeau464Z9ejxJpKASxLTT
	ti9p6p5kNJKMe59UQF0UACG41eEGrn5yZiUGuM4KKi3N+1dyhMba7mo3FCACG9R2lhAQqXgvX6h6t
	oOwhRaoQ==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8y7a-0000000DSl9-08nl
	for barebox@lists.infradead.org;
	Tue, 22 Sep 2026 10:53:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1134C201F19;
	Tue, 22 Sep 2026 12:53:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074389;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MiefjYS6U8kHYe0k3zWOddcivN8ObBGsMzIbBgU+BVw=;
	b=RpN7sriukL85Bd+xXtaBfUsgCWFkyCmvVWBgttg57wFgzUix1YcnX415f4xnOZemBj1fRC
	RX0f4qIuwGHlH0QkBEDcnSucFBYM90Pff0KsHh6lBApwG5q03ATpee8a0NktQvqUw1Jeoi
	b3et+IgAZymtPV4/0lgWj0jzQJifdOMIwYYWjazJkySdyddzNSPlHd78pDnJUnWmeGPGz0
	mgk4DopPEeweAlnDPZCyc01nRZ8fpWtezo5eoHHQv+6TDzQz+fZrlHvLss/q+Od2/uf66L
	Nc+bC2EwPgVgeAOQv97+Kuwa+Xzslu2cu3oNCIsYXDeCP8OZPtv7N8f1qoNOGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074389;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MiefjYS6U8kHYe0k3zWOddcivN8ObBGsMzIbBgU+BVw=;
	b=OqrCRtXBrrlQfzkUr7HalgeeQDLf1UzNKU+87HB3otBFyqTmuh+KoWnIAyWrpwMduzLara
	47x5whC9NHMCAe4mj87BVHadl1SIZNSNkrqHgoFGlMnt7RcdANDu+VFmLKXEf7OVic8PTY
	mJoGP+tWXezXVvgIGibPSR2BokDLx3qqmko/A9x1Bkhce3MC4krlT3Htgo0eMNXAM/A7WV
	kmyagXyW/Ad85eOPE88zz4BD5MgPgx5epTpKkr6cIzhyJNa9r1aaqBqcOUsAuEm6Lc6yc2
	Tz2j+JBoEk020tb8KzXCgLVCYXCPuD5+Tile3+HyJyJZXbJDse2kzuemwR5rpA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790074389; a=rsa-sha256;
	cv=none;
	b=dK+q6/+BwrZsT1YWS/vvHq4ZkMnn9FB4bdrWZKAL/HekGPR/d+FqabDm5tnvyuBVZSvZyS
	roIejx1hdoc7xzpDOgnmfigd93RcTmp10YkgXrgbbsltKba4fyS9qjMyqoaWwp3zLNAPFY
	8mv9qvL5QCiBTnPdOO4yeQTyE8BI/T5pOD9VSZBGrMDHA0FN9TpNhHmfOO/Z1Hz6idTvwi
	VM2gVXBawUy8tlNABUt+MFVcRF2g3n/cNFiHZRplFWpl7oKidnPPmEcy6/Yi9KWsGMx4Bu
	Xh6wZ0cPA2WsZ3QSz2Ep5pLMk33/ONx1/rRVM7vEeCGS35QpxHmi/1WWo/SMBA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8y7Y-002DTS-38;
	Tue, 22 Sep 2026 12:53:08 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8y7Z-00000001cqw-1cBa;
	Tue, 22 Sep 2026 12:53:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 2/2] test: self: free a zero-sized buffer with free_sensitive()
Date: Tue, 22 Sep 2026 12:53:03 +0200
Message-ID: <20260922105308.386749-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260922105308.386749-1-a.fatoum@pengutronix.de>
References: <20260922105308.386749-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_115311_791261_8AD9D6F8 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  free_sensitive() asks the allocator for the usable size of
    the buffer before zeroing it, so it is one more path that has to cope with
    the ZERO_SIZE_PTR that zero-sized allocations return. The sandbox [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-59.51 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.80)[2a0a:edc0:0:c01:1d::a2:received,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 7922A200927
X-Stat-Signature: m4ym1nusd1jrzy84scob4pxgrpy1s5q6

free_sensitive() asks the allocator for the usable size of the buffer
before zeroing it, so it is one more path that has to cope with the
ZERO_SIZE_PTR that zero-sized allocations return. The sandbox got this
wrong until the previous commit and only ASAN noticed, so let's have the
allocator selftest walk over it.

Assisted-by: Claude:opus-5-1m
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/malloc.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/test/self/malloc.c b/test/self/malloc.c
index 1ec351c3efe5..14d936f96a45 100644
--- a/test/self/malloc.c
+++ b/test/self/malloc.c
@@ -140,6 +140,11 @@ static void test_malloc(void)
 	__expect_cond(p == ZERO_SIZE_PTR, true, "get ZERO_SIZE_PTR for 0-size buffers", __func__, __LINE__);
 
 	free(p);
-	free(tmp);
+
+	/*
+	 * free_sensitive() asks the allocator for the usable size before it
+	 * zeroes the buffer, so ZERO_SIZE_PTR has to survive that path too
+	 */
+	free_sensitive(tmp);
 }
 bselftest(core, test_malloc);
-- 
2.47.3



