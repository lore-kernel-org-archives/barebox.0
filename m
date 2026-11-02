Delivery-date: Mon, 02 Nov 2026 14:27:13 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xNs49-006OJu-0x
	for lore@lore.pengutronix.de;
	Mon, 02 Nov 2026 14:27:13 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 75F5A200318
	for <lore@pengutronix.de>; Mon, 02 Nov 2026 14:27:13 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=wWTd55SE;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=c+9IONKh;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793626033;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=1dXMA8Im35oYlYlRZvA3rFUpC8nIQ91iGEg/zTPVutQ=;
	b=TOmrpj96yIB28rB37GzK0BSvJg3DJxhflKSGy/w75xODADEniimTn0Pxq93OvCkQieaTJY
	qc1WsHmxSsYq0M/Au+LYyyc96FpP10c4+kt3KfVgnUKGdVP3B7Uxwm0GSL7nFuRp3MrkNn
	vQwGaHUKKKtMfkxxKtKyQTGYWjLBm7Niduq/BfBaTdKgX1VVwxivs6Bv6A+HZWmLWoGfg/
	xo8wEBX0gJkZXaxlhLkvr7b3QSO+FGpNqEvOv4j6DyjfVUkM/z6VxgrHq9uo0RUMHtRmZD
	0AOW8wq/z/5y8e7GLlf3rw5nu+nXYE7dE4p4h88lyutYLs48RewyuQcTXgGZeg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=wWTd55SE;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=c+9IONKh;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793626033; a=rsa-sha256;
	cv=pass;
	b=Go4qPBwSFKP6+s4+IHY9HegVKXa7lE+WEjsCiWcSTHnDQ1/ZQsE4MVE1YQTnBLIGnEHPnC
	H8Mqx5jjalnU96Iv7b9NlVIk+/fwz8hHXOFHQG1UYN8cG42HkKn2HVGnAJeVWjjQW8YPTy
	rjHOvOCcuh3cVAoIsgqnUWYgl8f+vVZdLVPl+Mt4a8UpZ63uR4DBpOSIpIwk5WG0CkZGSp
	tW+SCIWYZDkl2WrlviNEbWHsJqXMK+mEoGEkGRi7U7vOe3aD7/EdkSa9aJ0ydON4Z5CxcE
	EAiXhkz8Cdfph0A7yStK3UogYiFYvb3aRzoo00D/bOmEMHUfp7YpnOSvQkaiWg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=1dXMA8Im35oYlYlRZvA3rFUpC8nIQ91iGEg/zTPVutQ=; b=wWTd55SEx+z9/s
	TNWn9BhDUE2QWzNbs8QGmtJqEptcecgE0d7RTUhqyJCUS/yHKXv6gY8dIRi4iJT7vUNWM9HxmIu+T
	vd6KVh4wp5Mc5QUMp1aTg/DEEv4lxgwi3LgE6jZwsIPMsX+a2M4mB80taVdc2BiHS8CcrbBsoAroX
	H+qLj/PHd7odRmhBPRxL2H/zmlNXpqX7rHzTj12IocHe/aKNQG93rqKO/JN16TNvNNZxKeg0SKM2e
	6Vl1qnVK5tgeHBuw8lXgEAtJ/3mYzFXHEivxesgS3VzpPF7S2uRnKVXtbqfc7QEFjWtjc1GJ6Wpia
	6p+qVJBMvq+SVmep7KuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNs31-0000000GbW1-30ex;
	Mon, 02 Nov 2026 13:26:03 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNs2y-0000000GbUr-13uQ
	for barebox@lists.infradead.org;
	Mon, 02 Nov 2026 13:26:02 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CBE8E200467;
	Mon, 02 Nov 2026 14:25:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793625957;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1dXMA8Im35oYlYlRZvA3rFUpC8nIQ91iGEg/zTPVutQ=;
	b=c+9IONKhedezjT1JTPX7dCl5Of2rMMww1kHZb8TxjMKbENlmX2rFsB8FGn3dCCLOX980zD
	+7vmThdPhVy/g91bwEa6j8mYOGXOaybd5IKZJtUbqkfK8NoTCd1QDWWMUG7YJKXuKPmoT+
	gGhrtM77L7dITnzFXm1tmktKGiilAjU/p5AN1AgKIvU+OMyr9pFz7uyC13IPEo5MKUpuTv
	zAdeWQd+l1ciesw+JfxNk4XgiVAZi6axCNPZ8JjnRMNWzHked73S7HRQnWDT9EBNAAmzmx
	NgJCpGEJ+DlUCzZLrfvXoSkh6KGXCgwHV1Ef+wH3CClWavj5AuOd10qmqSz09A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793625957;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1dXMA8Im35oYlYlRZvA3rFUpC8nIQ91iGEg/zTPVutQ=;
	b=QYKz2VS/55I4jW4QGVIZshRX0ZPQh3nJ3vTurpRjEhuzvZLNuQ6uq12AOtBpm/l5/F8wT5
	194Z8WrT4IlCyKnYaCFLaR1Qayc3vU9Kh5ZexxbV8ssXW50vo76lGw3KjoqO1Sn5cJKYgs
	rFSOP9ot7/O16oQ9dkKsuNbVnAd3DLhkuZ2zvwOIMvkfBkb8IM8BWEvp5EHSOC+mO2A6YJ
	ZaetUA5ZZjFAf9+BkKpenExEgdXuhMkdmg9CMb0sOazCrRV8onAjaDWFov6Vjc4bAGnZoI
	GObCdKm2tby6reZZQ0nkdpafwLIVurk1ia44AGJ2IKuTgHtiBLPj/pXMb+Vefg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793625957; a=rsa-sha256;
	cv=none;
	b=bcAaXnJV/U8OZQ+ZlJoHDEjKGKXvS7Kws6XYEV13NrWiRBSuGiT5bFJ1aoVUjneGDpUJsn
	EoY9TiqjqSDcQ6iF1UdITFqsKTSxyuPbUg9hx7jWe4Gm+niEsLso3T5W6HOBw9jjw1ZbDk
	2Cb1Rp5+dScSpdCunu7hvy/R/7GMjFBciwexjjW6+Pr5Yk0xrVec8NWrrVhgZeg+9VwWb7
	DnbsVf8YOTlxTS17ICQTfUlTXEWn8+EFr22YkneGgaQYFZi304yIiaphPErtO/07DaA7Bx
	miUTvrAhkITGEISZGK+TrgFLUkUptUswhHX1gE0umNKSM7cjKCDT/n4r4vrFHQ==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id C11B0FF87C;
	Mon, 02 Nov 2026 14:25:57 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20261102-fs-getlink-fixes-v1-0-c2816b3f5ca8@pengutronix.de>
References: <20261102-fs-getlink-fixes-v1-0-c2816b3f5ca8@pengutronix.de>
Subject: Re: [PATCH 0/3] fs: return error pointers from ->get_link() on
 failure
Message-Id: <179362595777.2747809.13573020842402362.b4-ty@pengutronix.de>
Date: Mon, 02 Nov 2026 14:25:57 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_052600_450187_CEBEF1F2 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 02 Nov 2026 10:08:38 +0100, Sascha Hauer wrote: >
    Like in Linux, the callers of ->get_link() expect an error pointer when >
    the link can't be read: readlinkat() checks the result only with > [...] 
 
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
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: wp5fkyycpe1jo195rhrtuugokhxybu3b
X-Rspamd-Queue-Id: 75F5A200318


On Mon, 02 Nov 2026 10:08:38 +0100, Sascha Hauer wrote:
> Like in Linux, the callers of ->get_link() expect an error pointer when
> the link can't be read: readlinkat() checks the result only with
> IS_ERR() before copying from it, and path lookup takes NULL to mean that
> the link has already been followed and continues from the directory
> containing the link. barebox has no nd_jump_link(), so a NULL from
> ->get_link() is never legitimate there.
> 
> [...]

Applied, thanks!

[1/3] fs: cramfs: return an error pointer from cramfs_get_link()
      https://git.pengutronix.de/cgit/barebox/commit/?id=ec13edfe0bcb (link may not be stable)
[2/3] fs: ext4: return an error pointer from ext_get_link()
      https://git.pengutronix.de/cgit/barebox/commit/?id=abf4a2626aec (link may not be stable)
[3/3] fs: legacy: return an error pointer from legacy_get_link()
      https://git.pengutronix.de/cgit/barebox/commit/?id=6a8b1f474121 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



