Delivery-date: Thu, 15 Oct 2026 10:25:56 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHGmi-00DqEX-0i
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 10:25:56 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id ACF48202012
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 10:25:55 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kpeAV98E;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QnIql3VP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792052756; a=rsa-sha256;
	cv=pass;
	b=CmRA3PTw2mnTI578+ZS+kAHcddZyjQen8De2FOc5lRX1DhuJTqAgdlaOK3tIgfnUOK1K7O
	SSxpdELL3Dt9eFqNMbIs8jQTiUnVuySCB8FeAJGqr6JCAYVebWV6+bKNZ0MYeny0OiQFlU
	fNlfsE8nbizu2KRUud5cLuLgRzKCkwyN0gOydSxTVe0hWP8RNb2xNiGI0UD017Eamauvqh
	/WnQyA+9qAzxCQHFNp1heLxf1TNlTtZ58NOZhIP9GhsQBLKnp+t0GC67XSZonP2ybc5GPv
	f1KcGX723qQk6/GPH1kFEhxZbqyLzMJ0Li1z2N4PKloLQ5ILb+UNJdG43LfJHQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kpeAV98E;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QnIql3VP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792052756;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=MI/oFPKzZhEdaHaxJSBcwPmyZCwWSQfkdfJow8wyvug=;
	b=CxkaMHPRuSuWelYkjFLk5/I3jeSkVpILTl1n0Qc2YGL/l2fzGbYuLtlHJlKtKem+RiuYEM
	aOlzIAd6XghLf8g9JqIzY5wIwbXAzZ5I5n5YTThzvddK9mSSYYeNN1S+dM/UPTxopEydns
	5Jv0AU44dNDAqOt6WIXqBbb7uHAy6EGxgPE76zJQRZkqwSZTDYtkeN+czN94DOVkb0gOlk
	AsxldFWEIZMxxNIP1aqTAsGEqkl1n221KKUVFqSYzjcODG/+KL7OYJ/SG4d8fna7ewpsr4
	jQkGt+2GkxgeqgePMKDp8h2AkCzpXDJIuuDlJwqZset3AP1zNnEGeZs6o4hdfA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MI/oFPKzZhEdaHaxJSBcwPmyZCwWSQfkdfJow8wyvug=; b=kpeAV98EZJzLio7MqNypRpL60e
	T9IHzVnD/DsxqmzLJ7g+cjR+HW8ZaNPlYTF8HG07aMWB519hzmp111H+9/9qyjBpMPC901ZPYsLQb
	k5rxAdb4khSlScmzgqVI0LoDj6w8DiZ9zR73vbSSR7XckVFJNaSTsR0arq5mbhMOkaSdTkZAG40V7
	cnBkPxZnKNr7vOUYo5FkTHThyxJoP/vAVw9UePWeDqBhKQTmQUVMPnQPXi9JpiKmE9+Lh87xnFgfN
	avDkZ7MWfGJRbdtdogOW8ldONX3rPCJQjJCJR7nzwvAqsyWBcNau93+Gqb1A5LoRDlasPvX9IboxP
	12bd5iVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHGlG-0000000H8l6-1U0U;
	Thu, 15 Oct 2026 08:24:26 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHGlC-0000000H8k9-2Gct
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 08:24:24 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 97DE5202339;
	Thu, 15 Oct 2026 10:24:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792052658;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MI/oFPKzZhEdaHaxJSBcwPmyZCwWSQfkdfJow8wyvug=;
	b=QnIql3VPoeC1ndz+r/anN0/2lcbLEUqbO07SkF+e6xZ8gD6LRmLqpDz6sQGV9ya+Hr9Zd9
	bYcXRP/B2DGukQJwK2mSjgGiDU/rbSBPPUO03MW+hqnLVIAwN80FAOSbmxETLXfjfFAZg/
	1RAXL4SLkOgKZVgiZWZSiuhpEziMc62wVyaIPmAL1x3mDa2kYYJf1PfsZP6VRHbu4/UMmE
	lWe8/7vQKSfapdnBZvTUYWe3pk5ZHA9soUXi1obYV1yjVGEvH6kYFoGIG2aLhxCD6Cgw4E
	Ax3MDAeHko3TsU0QAap/HPgFqOHlF4bshbanKHeG756cPRnsdgrn2efticV3cQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792052658; a=rsa-sha256;
	cv=none;
	b=GqzhnsMYe8BLvLNJJb6RO3TujjNJd8MNbrVkFIpSL6sREF6jSOhEPehX6H4QYVhQ7lSYfh
	PQqeEV7k/W1AnfYgOp698SvWDNMRSubPKffIMe/+TFGTQkQQ943lvER/WYEJ0vtBwG+69u
	uwAgVLjgz19u5edqMIIoWUW7/ZvemavzwOl5HUY2bTYBEdNUv38AOoB6i/pzvDv6SgbHYM
	F4nH53ndUvg4hVFBhDTzphcQ+7ELBeXjGEjEArDkLkYxiQgg7DeB6h5bl3xEcxIOZg7nUa
	PKFZPQmq8sJXa/Hyb7OYh7h2WqzS+JwCaKy9vYheMV3V+flciRoG2XikGSqU1w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792052658;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MI/oFPKzZhEdaHaxJSBcwPmyZCwWSQfkdfJow8wyvug=;
	b=HGmge+7s3z9Drws9XH3IxSK2KbwCQ6JPSLHM5uS+RKZZwKEp1Ea/nv7rMK/BF/CJ3lt7ug
	brMwGLX7t/1D2lGDetT2W47vla2d8oE3Mfb65PmaKlYqVxRfUjqV3f5hwDMfQs77PeOOkc
	1+q90hbXYUkOYLZYSPaewz2E2wWRC9LiOLEhDTrSEvpYfyylTYzqpXXhytABJP4tBGdlt3
	LDjElZWX+m8xs4gaWijGNXLS5UILu1+V1FgZk9BZzuiSE0BrGiZNdGMCcTGAAgyTvJtrfF
	dgYL5SgffzE39Y3FoGxl61bKHJT129T2Ud2Y250ZOmImtYwkE2bCdXUZ2/AWiw==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 88A7DFF854;
	Thu, 15 Oct 2026 10:24:18 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261002114253.2906535-1-a.fatoum@pengutronix.de>
References: <20261002114253.2906535-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH 0/6] fs: ubootvarfs: harden parser
Message-Id: <179205265853.1371753.8116687204161819504.b4-ty@pengutronix.de>
Date: Thu, 15 Oct 2026 10:24:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_012422_741361_C14EEC74 
X-CRM114-Status: UNSURE (   6.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 02 Oct 2026 13:40:03 +0200, Ahmad Fatoum wrote: >
    Fix a number of issues in our U-Boot env support, mostly unearthed by > fuzzing
    with some LLM assistance. > > Ahmad Fatoum (6): > fs: skip di [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: ACF48202012
X-Stat-Signature: 69i19xhgw6nuc6a3h8gphu1y3w86zi4u


On Fri, 02 Oct 2026 13:40:03 +0200, Ahmad Fatoum wrote:
> Fix a number of issues in our U-Boot env support, mostly unearthed by
> fuzzing with some LLM assistance.
> 
> Ahmad Fatoum (6):
>   fs: skip directory entries whose name does not fit struct dirent
>   fs: reject negative lengths in ftruncate()
>   fs: ubootvarfs: range-check the new size in truncate
>   fs: ubootvarfs: do not form pointers past the end of the environment
>   fs: ubootvarfs: reject variable names containing '='
>   fs: ubootvarfs: handle removal of variables that are still open
> 
> [...]

Applied, thanks!

[1/6] fs: skip directory entries whose name does not fit struct dirent
      https://git.pengutronix.de/cgit/barebox/commit/?id=e0f9224055fa (link may not be stable)
[2/6] fs: reject negative lengths in ftruncate()
      https://git.pengutronix.de/cgit/barebox/commit/?id=69481b108050 (link may not be stable)
[3/6] fs: ubootvarfs: range-check the new size in truncate
      https://git.pengutronix.de/cgit/barebox/commit/?id=23c4e760fa04 (link may not be stable)
[4/6] fs: ubootvarfs: do not form pointers past the end of the environment
      https://git.pengutronix.de/cgit/barebox/commit/?id=dc811b55bb47 (link may not be stable)
[5/6] fs: ubootvarfs: reject variable names containing '='
      https://git.pengutronix.de/cgit/barebox/commit/?id=ce79a7e7c3be (link may not be stable)
[6/6] fs: ubootvarfs: handle removal of variables that are still open
      https://git.pengutronix.de/cgit/barebox/commit/?id=7b42e5e3eb32 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



