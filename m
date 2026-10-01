Delivery-date: Thu, 01 Oct 2026 09:13:08 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCAya-008MCN-07
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 09:13:08 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7000D201F18
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 09:13:07 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=h+CnDC8g;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="dIxD/08U";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=bCZqVtxD;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790838787; a=rsa-sha256;
	cv=fail;
	b=ORawgB7t1IhSBNqpX1PZ/ovy9v+0HHyj6s0dTnOGNxOpzUbwi34VdYYbdV4lv9WgSAJahZ
	4z2nbHOORj29niqW2xA+mcoJNghD/LaDm/3505QwUEhnkQ3/fycolaQAZ3UEJBcwxwwbAf
	KifBi23DYDVy7251TaGvDgjANf5Yf1WUn9HORl849ChDKBY1CeVeUmy/Zfhe/a6fBixnrW
	Mo/qqlDlt5ESISqrUiFTERsWJy4btve3ajcbhUv9TNgueHGTNuueV3yH7/GVl6sw4qqTJM
	d7crH+p0+bngDOHumlFyeD+4An5suTdVhijvn+Bm/nZecEWttkrLr94UtDWTWQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=h+CnDC8g;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="dIxD/08U";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=bCZqVtxD;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790838787;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=8q8skUcX09OoWnRZIT9O0aVC5yg2BhINaDpWTgeVKSc=;
	b=InJ6iJNVKdkDie9slVwn1uTaqWg5GaVS5hBz4dly/4yJM/+FRmsAF7ZPnhTo0Ny876Ebuk
	2MD+gjZAFgITsTm/JX+rMkVl1Wyq8SUrHNO8EZ1sAmjaocwtiqJ4FquAoWWO3aGQOYdiKM
	KlIf8lOk7KX0lAhw8SddVwEX1QfV4cJhNv8QHN115vSx8KslBYFa8LbtsFXE0McY+PGJLb
	DQi2M+yzUi2//4DwTGzpBwssNRiOKSAI6/esEJm3VeM9HQI8MiovDb4dBuzn7hvsw3lTt6
	1vC02OUf9FYWNzWC0xIP3i8qT0BErNc5F96axAB9Byt0MgpHQ2DhGqwFewnTlw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8q8skUcX09OoWnRZIT9O0aVC5yg2BhINaDpWTgeVKSc=; b=h+CnDC8gZWiygbCdLZQBzqKsh1
	JvvIxwbbCFPWX5ypjAZIsfXTdJy60JjiNboE13wKo9hOhr0/aZglNAf6A4YnyQiZh71Ht/inPayV/
	eXT2kDmJIWOSZAd29IEeDUsMN6WZ4UtdxOe1RkWYYQNZxj1zsUzrENky4ofSlICrhT9z3jQEhqDOt
	u8hSNHh+qozFh1uC+10tArllDiu/CmahbF9HLEZx8sbJGyRal3mRqLlNWzO9o4u4rQJ+tP3ykUZVM
	8C0FmTR8wGRVGXvTxG+uNwZwN2bGFRu3uymvrzVrZ6Shzl1IqXlfrB4RVO9Zj+fe2PX1yhe+USqd3
	P208/ipA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCAx0-00000007xr7-3shB;
	Thu, 01 Oct 2026 07:11:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCAwz-00000007xpI-0HlB
	for barebox@bombadil.infradead.org;
	Thu, 01 Oct 2026 07:11:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=8q8skUcX09OoWnRZIT9O0aVC5yg2BhINaDpWTgeVKSc=; b=dIxD/08UYjm4DMLPSK5bjRn4ng
	uTRmhyPmOJw2nIDBBaPPgS019UgTqk7L69imxL/MrslmesBR9lI7a2QF/p7F841kCRKpf9j2fVt+j
	cyPcStRIww6AnQUZ7nMNqbrdzpS0Th+HcAzMsUUS7ZOhe1Sjugx9ABPXn6CsrA6e9nexMMVraejcq
	FwPWbr9qDTXZBksdX4BLMLxegQ6udRm8yEnqYO5exVgSGohGGZiQVhamqS7/77XC7S2+lccmI7dD7
	DaTRRmJ1/rQtpbEZgKlGbJSX9Yq5O4ufQoghbYspCnKcb+438dxGl+fy5wVTjCLVfxVkT+qVmdw1n
	7AY3aY5Q==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xCAwu-00000004fGg-2lF4
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 07:11:26 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0A0D3200206;
	Thu, 01 Oct 2026 09:11:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790838682;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=8q8skUcX09OoWnRZIT9O0aVC5yg2BhINaDpWTgeVKSc=;
	b=bCZqVtxDAETzkDFicpQXcmrflJG4lAaG2CIKw4M/7CzJNCoZWp5w8s4r2wUL3aixyBHJt3
	0NYzfnk+D4RUcN8Ug3kA5dGoIu162M0Bs+STR/dF7JjiZEhSGLGzZyZstsxQW0XKe00M6p
	X5tljXKJU3kDxw1Vo6VXzj6cb4XDvglyq6tSp/CS7S79UY8CdER+m/P4CLWBmq0SFWIl0I
	9/A9Q2wVRMzEE/PlhC1ATeKZxUXbBxpQZmCYU+FsZkgF9vFOeg0GzGquaijogX+zCugbi9
	XOAKA73OEXNuL16w+1iFj+8yeRFMbUGlCDn6KJAGAY/L8MwtAi4RXPrE9XEWrQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790838682; a=rsa-sha256;
	cv=none;
	b=MbliK2cdwS+VcLznDP8WHEivNSaxh090zJhaRQbKoWVfLR+DZBfcEr/PFTQs8+M4vBed6n
	DOOMk14RQD2wYqOmpsiGmjHW5ffxGbol0481SivpZCBvMxWqTqpYY4cCaQhQuEdUbLuC7O
	tWyM2TMvWFVhLfDv+CJr/eoSk+R5vh4a4G25f8P4NtD4IGowXG69vdAlDGLGS2Z4nX/Uca
	5skk3hau67qT6r+x9pmHyPMPd7yNIB1AeMX11Donhy8SDFSFerrMO/zX4YZA4xFjzTfjoE
	AAHTXjxgmTNk+MC956VP2YdJEXCAQRLScXyIh5zZLB7VBpaxdLhoAlT1eGF++w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790838682;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=8q8skUcX09OoWnRZIT9O0aVC5yg2BhINaDpWTgeVKSc=;
	b=UI3nmXrngKXQ1owxNyUIYFxkWk+9EZqRbP2uFLCUEs3LBeZIPrIEksMdTmPWb+qYoH6LRd
	DJRgHXD95rLnlH35pyPF219Ju9DeoUBtVGy6Z/vU74OfRNRu+NtqIluQvf/tdcES5SyIqD
	09xebfCrif9DQRPgHrxlYAd6b2w1ATtt7tuV4nr12kBQxavLmLT4sAQJPBpiYC1VydgVpI
	d1l4K4KZ0yInLa+O8z153lk1OcZuHVjk7p8xFyAKDgQjkUEugbacT3gx6Sh5Qy0i3vhlK3
	JrU9its8DLQ4NHXZlQCHo9iSw0xOq4UofxoXgMLQn+79hEVsq1a07oH9Z0hOdg==
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 0/2] FIT: Do not hash image data twice
Date: Thu, 01 Oct 2026 09:11:19 +0200
Message-Id: <20261001-fit-cache-fixes-v1-0-568bd214e5b0@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJgHvmoC/x2LQQqAIBAAvxJ7TnAlKvpKdFBbcy8WGhGIf2/pN
 sMwFQplpgJLVyHTw4XPJIJ9Bz7adJDiXRyMNiNqjSrwrbz1kYReKmqgOaB3DifrQK4r0x9kWrf
 WPl6sMr5hAAAA
X-Change-ID: 20261001-fit-cache-fixes-4e8f1cbb17ab
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790838682; l=979;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=pbNvQNvQpgzGnPlEZ0ijwBEVh7aF5NsIPSozcMSO6NM=;
 b=OmumAtZJvR04dkpvpaFi8HK67/YPfnJm33ssNlYKleYm4e+2OddBopAVuOLvqnCUeoTaFLmtt
 +ezhXmqUAfrBwgcgsYkAGXnfaTmFWN1ilU4KXl7UlkjEVWuKBKrGQhj
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_081125_067258_A37A852D 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Since we switched the FIT image code to the new loadable API
    we call fit_open_image() multiple times per boot. The FIT image code caches
    the image data, so we do not have to extract it multiple times, [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Spamd-Result: default: False [-56.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.794];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630,pengutronix.de:s=20260414];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:-];
	DKIM_MIXED(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 7000D201F18
X-Stat-Signature: y43zgku1yhb1f788kfda9h89pnxuir6u

Since we switched the FIT image code to the new loadable API we call
fit_open_image() multiple times per boot. The FIT image code caches
the image data, so we do not have to extract it multiple times, but
it doesn't cache the hashing result, so we hash the image data each
time.

Mitigate this by caching the data in the loadable instead and call
fit_open_image() only once. This makes the caching in the FIT image
unnecessary, so it's removed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (2):
      bootm: fit: open FIT images only once per loadable
      FIT: do not cache uncompressed data

 common/bootm-fit.c | 40 +++++++++++++++++++++++++++-------------
 common/image-fit.c | 24 ++++++++++--------------
 2 files changed, 37 insertions(+), 27 deletions(-)
---
base-commit: 4aa5dcd400d5b9cecfd24e68c6f05cd128c75c43
change-id: 20261001-fit-cache-fixes-4e8f1cbb17ab

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



