Delivery-date: Wed, 14 Oct 2026 17:10:52 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xH0d2-00DXY7-0B
	for lore@lore.pengutronix.de;
	Wed, 14 Oct 2026 17:10:52 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D20FF201C8F
	for <lore@pengutronix.de>; Wed, 14 Oct 2026 17:10:51 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=LqwJNRk+;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=JWeTXgni;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791990651; a=rsa-sha256;
	cv=pass;
	b=dVwRkNeAtODD1ED2PuRzxMiNTSUK4+Mtqy7bT24rSl8jw+4WxxM37YOdvQNY90hHQtYnHE
	uEdNHm5ttWMCzWGNpnatgzzQETYUyNj7qc0VtZp1WK3b8ihKjSwO+366+UkA7gYGiVnSuQ
	xveUzCGdd42mPWm5YGB+UuFNmXqUdq1+1vFCN3fCpbzBtRtkMYq9y+ng/IXB2fBRwGEOTz
	7towqZaVDunbG2XvgVFdcIbHdfCspIAYik6lc5sztbMbNg67f/pCfYc8xCHH0ddx7Bs4+L
	F5jKO9HPnLagR6ceVroP8h/Ltsnyz0pXGSwwU6wr7OMhK4wZlRhUMiwayQnGhA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=LqwJNRk+;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=JWeTXgni;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791990651;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=PfYFUmk147EqteP71mbFVQNI3/iDrtPl2hCMuyI+v64=;
	b=VCuZIy7EPhJlpuoBysP6icUj2jbMDyfueUg7sAw7EhKY2ujbMbDZalvLmN/a9UV1L6zweV
	TgEnhmegguS8EeCa64O9+ETZBaccT09BVefNev9diLOYpewvhcWu3/oHddixRofvN4Ug3E
	sHYJqlPqjYKYV4+cmPEKE9nmv5d8WD0/znb2bdJ4sT6ScSsJl0QWL8F+T9ex/rGn5mCHQ4
	bu/IYdyvrCSuY2/P8yJSUbfK01yEbberNUqpsy0D75tYrz65piSVaP0gHlZ3RD0T4gvfDP
	7GK57XDBXN3J/BpumZ02sV9yDJXAFbZAc4xoAnFO+pBycipi+wtqIWnJHaIbPg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PfYFUmk147EqteP71mbFVQNI3/iDrtPl2hCMuyI+v64=; b=LqwJNRk+112KydGR2CB9m+/NJ9
	r9TQIvwbR68frD6q9Z/+cXNtq8NcOgdLiAR89ozwov2dQ0Iq5Hr+cKC5Gld5ETCrtylQSbjPm5Yxb
	A13O5EDeAXnq0HYPRVXfBZ2J4eh64iERUGXsOCJW6Lk7FhUeKMVqZI71HK0WTJazayVWFBis8Abqa
	D6pXVdHe6HLmJUi8W4PwuPnVHzQZmlpGi1MoxJk1ZUfqf+t7qT1D+KFCBgI2sKSELbGtK2O76T+ef
	T0kY8KsMoCCB6gXwZ9/i3gTCi+3MbtZVdbbimWtWnT6Wao7ohMNgKAX974+Kray9yuOIHB/2Cndh2
	97G2Tqlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH0bq-0000000FoCV-0RpU;
	Wed, 14 Oct 2026 15:09:38 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH0bn-0000000FoBR-202p
	for barebox@lists.infradead.org;
	Wed, 14 Oct 2026 15:09:37 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8440A201B6D;
	Wed, 14 Oct 2026 17:09:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791990572;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PfYFUmk147EqteP71mbFVQNI3/iDrtPl2hCMuyI+v64=;
	b=JWeTXgniK54E0iPjuLKMrCHL4Bg9TXhiIQOP13AvbAXKuHygBJW+4NW+FWCNsH6ENBPN5I
	ooAR043TJf+RDyVf7xaeZvb4sLWhNeJ2KXE5GwS8hjoI+7AhbPL78a7Qj8BAHULBMym62P
	DSgSnms4aCeLykmjVGtrD+TB7U2ncKJysYKFxcxxAPiumGxdDz+C+8KQpq/guUFRJcSzK3
	+4PEkz53U17BzWxyetO5sph8AZWmeluELbCamE4MGK1iJVL1e5Jx09/dYMxDxpFZEHiG6u
	c07mMJEWqJ6O31ipPv+u0tc2Ee6osdNZIW42DTcS+rEJwY7x42DvRa0u4vnZQg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791990572; a=rsa-sha256;
	cv=none;
	b=e5ImSvIFHZeW5wdIKPyIZjiTo8ngb6Og5jy6lw2epzEuo4dJL4PWmIOpzWMARvIs28CjSE
	wlIdmprK2D0Kt4O978bfg6PYZZ9CS6bzKprFz/MjU1VLYZORoTHc6FymBZPMbIzriIDclL
	pFIpqJNiMvTrBwO4oMtUncSgoHqLmrpvA++icj/9mV00CSUyqTLcx5FxSGN78kUxxhty/g
	xMY0BJKeI0kdhUSjeAhSsSSfaS+5VqbDltX6P3eMAa/72/EjIc+OlvKw7WX+WqPfMPyynE
	LuhFASIJoN5uo/OL5JAeuGYjxVo669syF9uZhPcVETUaPFuGfh9GpRxZQWcF0w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=s.kerkmann@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791990572;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PfYFUmk147EqteP71mbFVQNI3/iDrtPl2hCMuyI+v64=;
	b=UQjkJgMvwlWzqPW9VJzzdWxXenr+Vxty8ZFjQ0TJmcGPuCbFGgnd4CaE1W8k2DSa8+Z7uu
	BHck7akLAiP3DIwb4wY/IrH2vsH7CJ+L8+Tbj6n3gnlna6yLmptarsPesYlXQBzTRVLxft
	uWEB1ddhhRd/4sJxKiniWcAM9EvqDn0gnfzFPHSciagEgoWjz0fojeMMtF8FqL3mxNH8G5
	0tw7lj8sxFvs12w7wEfK0FQsSX9B4JgjxZUKklqo6TJhGrvd6F20TBJ5oGrl3DMU/aFBcy
	N9jkPLFAE3D4L8QZtO+/g7SQCbPMVvQD7SHbYlDbKDTV1J7g4MfoBi2piQypOg==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 6314B741B72;
	Wed, 14 Oct 2026 17:09:32 +0200 (CEST)
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 14 Oct 2026 17:09:23 +0200
Subject: [PATCH 2/2] of: overlay: fix_path/apply_symbols: add more
 debugging calls
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261014-fix-overlay-v1-2-cfd44746d985@pengutronix.de>
References: <20261014-fix-overlay-v1-0-cfd44746d985@pengutronix.de>
In-Reply-To: <20261014-fix-overlay-v1-0-cfd44746d985@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_080935_677677_B289CA68 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
    --- drivers/of/overlay.c | 6 ++++-- 1 file changed, 4 insertions(+), 2 deletions(-)
    diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c index 410c6d3565..83c947d044
    100644 --- a/drivers/of/overlay.c +++ b/drivers/of/overlay.c @@ -114,6 +114,8
    @@ static char *of_overlay_fix_path( [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: D20FF201C8F
X-Stat-Signature: ui5t7xk5cqi49pr4ix6a6gaei1inyqj1

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/of/overlay.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 410c6d3565..83c947d044 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -114,6 +114,8 @@ static char *of_overlay_fix_path(struct device_node *root,
 		return NULL;
 	}
 
+	pr_debug("using fragment %pOF\n", fragment);
+
 	target = find_target(root, fragment, false);
 	if (!target)
 		return ERR_PTR(-EINVAL);
@@ -157,8 +159,8 @@ static int of_overlay_apply_symbols(struct device_node *root,
 		if (!new_path)
 			continue;
 
-		pr_debug("add symbol %s with new path %s\n",
-			 prop->name, new_path);
+		pr_debug("add symbol %s with new path %s (was %s)\n",
+			 prop->name, new_path, old_path);
 		of_property_write_string(root_symbols, prop->name, new_path);
 		free(new_path);
 	}

-- 
2.47.3



