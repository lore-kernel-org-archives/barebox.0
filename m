Delivery-date: Wed, 23 Sep 2026 08:13:59 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9GEw-005KZe-39
	for lore@lore.pengutronix.de;
	Wed, 23 Sep 2026 08:13:58 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CC164201F08
	for <lore@pengutronix.de>; Wed, 23 Sep 2026 08:13:58 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Jw1j20HU;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=O2a9Dyww;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790144038;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=apj88qn6QoFSwj10QcC5qKdGTTIEOq+R311VNfbALhQ=;
	b=g+BjiB8cWaf7K9INxN4i1UPo4oVHZQn8/ZKecGInEk5YnvUAzGb0GblGc1fIVxS1CTNCIs
	5kzieItc3JwnJ4gbQncb59SyU9eTzgLxKv6qjQTVhh4XyM2sJGBVcEzmpCYi/LYG+AczDK
	dOFUKC+ApBITkr/N3FxKtRIf1FiG/nBYln9wYQzu+2UBtwuTJdjr29cQxFePv19K3Qe6y4
	VFSfZv3BaskFKGgkhFu0vKlp4QTpJQS6JmzUO5FueFb4AaT8ShC2Bl8ku6CUnkOa7b4Jit
	78Hc3Y4ImYXgmB32xzzP2Q5LuJl56o3d/MiyF+HzqOSM3fgstQ3sDFaulD84wA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790144038; a=rsa-sha256;
	cv=pass;
	b=G6yFr0laPynxnL+Wz/2Yz1+k2zbl4Hrqh25Ga4QJh2JUcoQZvnMKE0ju6QI0K7kG9kWnOV
	uR98qOBCHCdYA94qWwPqarES1h4jBT2bFWWqTzKqmJf7F3M7OTWeQg2yRnm3356njidlf2
	/TV6SdCpVd3/ZeaDfdUJCkHrcK1Ei+XGR/qNs/oKtssRC3dI8PYU6RYmlnFI03dUoKKRoQ
	ypss1PUtaAjSiM7aKOwFv1KwtroseJe7EfNR4zc80DeTj6xreGs6u8KwacvDOVLWEZspwZ
	j/jz3W6CUeQ68w4U8bjfd9Casws7UK4fIqu0dTPKz+LU2ePPE+L5nKpQHpS4RA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Jw1j20HU;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=O2a9Dyww;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=apj88qn6QoFSwj10QcC5qKdGTTIEOq+R311VNfbALhQ=; b=Jw1j20HUQr64pmV+Ls0/PDD11p
	KxWmiwddD2pzhCUPSbJsXD64qA/nvMcwSPRjFKBlAMq+lZD2NqltQeKsA3vePwGEQ8QVustpAo8rW
	SbXKT/v9US/tDWxZkkZFOs4vFlHH3ptTr07c/865GphCIYsE+rt5IWOPUT9K0BX6I5TK7uL3/e1mN
	50bSRQw8Ep8m+cT95YuGVkJdZlY73mCPE99hSp5lnv6E0ecMI6YypALVcHX3R/qOEZbvj7KmZfTOp
	0wVPNygsFxW2nM8kBOWfSBbUQW4FX6+cc+5E8UsR01LseDbgdcvuB3qmemxUDSOuVec0g9IsPjZT+
	DLCyFjRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9GDw-00000007Fap-1ccD;
	Wed, 23 Sep 2026 06:12:56 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9GDt-00000007FaK-13yW
	for barebox@lists.infradead.org;
	Wed, 23 Sep 2026 06:12:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A5207201A8D;
	Wed, 23 Sep 2026 08:12:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790143971;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=apj88qn6QoFSwj10QcC5qKdGTTIEOq+R311VNfbALhQ=;
	b=O2a9Dywwzw8zYYg6sLo+D33fIAqnp8470qCkHbtiRPxI/hgpNrLgZgZxbZituZLGM1QlzM
	BS5DCz5NKYEr2h10J4JjUfQeliD76YvY/iyAaJvaZU62mceQeafityzY6EgiizNGwadP6n
	pCEOrJc3zIWr/Ohco2x9AUujI1/1lXYxqxYIEo4M0LvHHteZAPZjz/+4M3Q4IlelD4IM3B
	KuXqi7Whnw0fJf1Yxmr1VdOz1S4gLxfqfkLzCzAuDaUVlY8KXeRoZX9GXf4qYQagvNpTVQ
	eIAJGleQf57569INGv3ij3UF6YlhPSYfEO+9MW9RhVa98YeWYE5fv6kEJzl9/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790143971;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=apj88qn6QoFSwj10QcC5qKdGTTIEOq+R311VNfbALhQ=;
	b=IgOlOaXaAyQQqf84BrIFwdillgke7n/ev1+/gnGMTIP1CmKFsSz78LfaTAb/jY2+rxn6qr
	g0vJaU2Z1V4Qqou/T34dDjjSJy9gyM/9d4rH2alMRcvZzvcvFQQGJ/zqG+lNxnbF2Hbwaq
	qWoVdPDmjNnjZWJEzstzf2/t/bb1nuHpU9ro8re1M236z/APfQc23WMRd0QUjUu8tMSKz8
	Sdhwey4OCO861FDuBuwcp9uDPc1elHDMmve/9UiNZvuoiw9rtThgFPpYF5lnt5ILDSIaZm
	4/INTRKO8Z3pKvahNHEEYWq8H2ZKDlUlrOFUylh8xHblVV5D8Xpgib6yckAIXw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790143971; a=rsa-sha256;
	cv=none;
	b=IT/S3OauxT2HLbvc0+53cE6Sv7Q+d5yJKXr/1LR21LSzCtDiePiw/k22GxTZbiFe2dQi7t
	OMy8+M+5QmspjgHMY0hgMu6/rjqw5rkiG5vk0WtsuwCNac9sqXdVhtZGELIH/b1ibk3aW/
	QDrgQ8VuhECOWcvg8gdgL5NZ86jOE8t6zsUZVTv1HWhw8IZN6+S5l0yy7sNjzOojHXVXSW
	EcW8PGsh2NZTqP2y/oOBUsE+cUv6aa6+4RYNhZrA4hWEA8KkOjAInIQ5RN6h9Z+l/r/IYq
	rp8AUzHC8OpWfe8kaUKOG3D7RZVXTOG8l0eVC2EYMBwJrqCTpssL24HTWceqEA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9GDr-002M4l-1u;
	Wed, 23 Sep 2026 08:12:51 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9GDr-0000000Boir-2EK1;
	Wed, 23 Sep 2026 08:12:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260921153548.783906-1-a.fatoum@pengutronix.de>
References: <20260921153548.783906-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] ARM: at91: include linux/types.h in aic.h
Message-Id: <179014397152.2816539.8374059321747389512.b4-ty@pengutronix.de>
Date: Wed, 23 Sep 2026 08:12:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_231253_448644_AD7C7FEE 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 21 Sep 2026 17:35:47 +0200, Ahmad Fatoum wrote: >
    The header uses u32 in the at91_aic_redir() prototype, but does not > include
    a header providing the type, so any C file including it > witho [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: CC164201F08
X-Stat-Signature: rj8jfmnfanr5bqmjggk6gpui3qr819ep


On Mon, 21 Sep 2026 17:35:47 +0200, Ahmad Fatoum wrote:
> The header uses u32 in the at91_aic_redir() prototype, but does not
> include a header providing the type, so any C file including it
> without pulling in linux/types.h first fails to compile:
> 
>   include/mach/at91/aic.h:7:40: error: unknown type name 'u32'
> 
> Fix it and make the header self-contained.
> 
> [...]

Applied, thanks!

[1/1] ARM: at91: include linux/types.h in aic.h
      https://git.pengutronix.de/cgit/barebox/commit/?id=cfe574b30d66 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



