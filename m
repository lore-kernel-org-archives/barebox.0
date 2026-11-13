Delivery-date: Fri, 13 Nov 2026 08:28:59 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRliU-00AL5v-2q
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 08:28:59 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 19C522023BD
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 08:28:59 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=h2RzDarh;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=DjCJX9Q8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554939;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Qj9c1rcbUXmOfgpI6gu8w7GxYeV5nwylogzNYe+DXr0=;
	b=PfIn7/CWWIdX0ziSx6PDqHtNyD0hZeP7izDC9QW35CLMCWmxOk57jGhU7ykypKElZM8PT3
	/tUH/ewyFWAt0w32EgMhOagdc4G6Pz4TeVLSZVs/wuVtwGkG+LrIK1SLm/yFg/RknuvGDR
	VAJEfuDJmn9RUeam73UVmcxJaB0X4/BElyECa1vMl3Zxmb8v1YejBrLyr8hyT16vutIzTQ
	W8RV+ojR7VjUML6lfNHzuq4G2zyKHxUYC43r7z8SuJfXwjJSd2VhVLsO93gphOc9Ijw6/v
	ATI7hETC+VaxxSG5rLv2R7I9f/6c6cltaMuMHaEq05eT5rodePfN0RVzANLKzA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794554939; a=rsa-sha256;
	cv=pass;
	b=JQ2Sz0j/JtZen/BkJwbKgIkReQHN12GAMLTJ0up9VyXtOoVWuS2ZhxIeR9ltIMSXRwt0Kl
	rGxR4UbVOltsSNj1OsAUisWiOBmuQRkJqwq8VuJ0EBnRv+UAz6ogLUnyCwaGYbyYGDefzV
	5LJJ9X+Y8dwUsaOaRI7IgkCEn8JzU8M91Q7/QslzcIzZZQdNrzrmajHScjXGOIi8jJ1xpP
	kYZPR6KFwuOfb4BI/PZUI0M3pQHSbNLgmgUq0gqiJcKoB6jt/eRxjdJhC8cUXNzFc3eBMv
	u3ZkjxfwO1FEr4Nn3YOrE9uMfIKdNOVfvZ/LQtO98KaiiQfm3CshVygDSWGp4g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=h2RzDarh;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=DjCJX9Q8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=Qj9c1rcbUXmOfgpI6gu8w7GxYeV5nwylogzNYe+DXr0=; b=h2RzDarhYQOEVm
	HOucUr78j4+C9p0MV0ppGayM3aIYwrXmBUx0Ut/nFU2lk6oecppTrLcUTewM0jOoPDPxbktf0G7vM
	ZIifWFEjbQdYaWGT5N3wwBCofvbHE3sHsE5VQ+vgzJ+0QCkn1jO3tA5kbARmH53/kQAJkaxBjEG0t
	cw3rLXpI8xqMxZsRM2rM6yPljl5TBV7JEw6LcOVS3BGGFRSIswEtteGtWZzgd5dZoH8T3klyc53t1
	yvdc4SquDMrRNyXAPjYQTJiu8Byno25/+Ge99uLfO1YemFxD1dLb+JynGrNE0OcxwhoFfUijsMoz5
	2co02Sv6UvBXha0DjlFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlfx-0000000BuP9-3bNi;
	Fri, 13 Nov 2026 07:26:21 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlfu-0000000BuO6-2rR3
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 07:26:20 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DEC4B201544;
	Fri, 13 Nov 2026 08:26:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554776;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Qj9c1rcbUXmOfgpI6gu8w7GxYeV5nwylogzNYe+DXr0=;
	b=DjCJX9Q8n6MdUcvxDhyTIM3RxfyZiRSIXGrNmyAlQjI2T+sa8Gm8rpNvhoUj9gkZOU5+wE
	lzX7n7iBiBf/S+TSRNY6c4yP2gabBKAsbl150nED0HVFr5g33OJgWzhdI5jls5rRBglQBx
	rFji9otUqaV1GTfmrpSCtCs5glRzgd2Hn8WKyR0TUO5A+q75jyMQmVrdZxiglxE2ag+lEc
	J+wS/+3gL589UIzKBzjkriaTmbpZJ0I/O+irZvYjZcQwhHW7x6Bw74XkW8e1ifpEmyQio2
	of3EXL373X4BsPqnRc227faxjZP1u31ynEGKfrQHN5p8T9twiMhAY4qtFx5m4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554776;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Qj9c1rcbUXmOfgpI6gu8w7GxYeV5nwylogzNYe+DXr0=;
	b=Tat+y0eNtdtGk7ChmAvqTrtMNKfn02fPoi3qfC0oZJIWfLz7qCN5eM4kFLRx176N8ao0KB
	ykhTGX8RdKS6ub3NFSY7IEanj4auGdlPZ5sv3PyNj7uo3ooJ/ibkVvITfPIPbjP7ahoEhm
	MdJ6rMbUA2ndkUbZ3ljilf/fHTsooJw87gI3xlKEhQbiGTDDKinl5hsxfik7qytwsRBMMl
	lLBHWXY0rDxBk1YGOrm5m895gGFz9C8JX5YZDyhCRrWC4mTlQbxk0jAOE/pw8MWVL7E1Q8
	+AQ8VL3bCuz2ObVC6yHuPj60WoJn7wKXowmiIEYXHxNBL9PCq/kH6VztPE/x9g==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794554776; a=rsa-sha256;
	cv=none;
	b=V7IdvUink95xU4ZvVNRPgHrHem7bGvq1Y/wBq7hC7Whwj0He6gZ7ViqL/BokR5Ear9SneI
	DdC7J8bzu7vtpFYehUe4jf8AMRCjTNSnZO0qJlVBiqD+r/e7UToZKQo01mozAX7nfgNq48
	qHX+8UCweWnQSHitF57e3habyq7XDq4X9Tste+lGFMXsmC6cCa1d7n+BsTusU0dx5tlrVa
	wVO5CJ6flkx+75TX0lDhP1HAOZb6mJdWNcAzxnQsljXwhC6aVijkv2IRD/EgpXI0dBaIgL
	LdNezzLuphJ+eW4318ju83zxezIJibrXBdnOqiEWvut0rrVzGFMt9luf5aGgpQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id D3DD8FF8F3;
	Fri, 13 Nov 2026 08:26:16 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Alexander Kurz <akurz@blala.de>
In-Reply-To: <20261110212842.29724-1-akurz@blala.de>
References: <20261110212842.29724-1-akurz@blala.de>
Subject: Re: [PATCH v2 0/2] Kindle maintenance
Message-Id: <179455477685.1737005.575101905804493589.b4-ty@pengutronix.de>
Date: Fri, 13 Nov 2026 08:26:16 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_232618_873155_6B52A2E3 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 10 Nov 2026 21:28:40 +0000, Alexander Kurz wrote:
    > Changed to v1: exended the bootm -c patch also an the iMX6sl-variant. >
    > Alexander Kurz (2): > ARM: boards: kindle mx50/mx6sl: remove boot [...]
    
 
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
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 19C522023BD
X-Stat-Signature: c4qjxcs4zkhsqtqz173dono9c6mcbmy6
X-Rspamd-Action: no action


On Tue, 10 Nov 2026 21:28:40 +0000, Alexander Kurz wrote:
> Changed to v1: exended the bootm -c patch also an the iMX6sl-variant.
> 
> Alexander Kurz (2):
>   ARM: boards: kindle mx50/mx6sl: remove bootm -c option
>   ARM: i.MX: do kindle-mx50 defconfig maintenance
> 
> .../defaultenv-kindle-mx50/boot/mmc_kernel          |  2 +-
>  .../defaultenv-kindle-mx6sl/boot/mmc_kernel         |  2 +-
>  arch/arm/configs/kindle-mx50_defconfig              | 13 +++++--------
>  3 files changed, 7 insertions(+), 10 deletions(-)
> 
> [...]

Applied, thanks!

[1/2] ARM: boards: kindle mx50/mx6sl: remove bootm -c option
      https://git.pengutronix.de/cgit/barebox/commit/?id=894cd989a320 (link may not be stable)
[2/2] ARM: i.MX: do kindle-mx50 defconfig maintenance
      https://git.pengutronix.de/cgit/barebox/commit/?id=cf91f5c67f8c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



