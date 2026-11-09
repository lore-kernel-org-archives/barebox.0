Delivery-date: Mon, 09 Nov 2026 11:31:41 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQMf7-008zVu-1c
	for lore@lore.pengutronix.de;
	Mon, 09 Nov 2026 11:31:41 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2BC4E200FB6
	for <lore@pengutronix.de>; Mon, 09 Nov 2026 11:31:41 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Uebh5eqW;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BeP1Uk+t;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794220301;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=iIGty5pOjgqAptcWfb47m309b9x7EDgFcsFf/sl8Ohc=;
	b=IMrawQAFvhr1n6WjWqkpMxbgPuzekaM29xWR0ccZD8vpdZ/8zsqqAnQWLiigDuJ+PzBTHq
	CNgcJj3X7+9p1pdwZ72Uw1Co8hz9mnUXenE2fi4RW6U69kbEVGYQtDoSFRWk/o79kleugx
	0TOHC9f9ZaMCF2/o9dnPIIZNW9M1tQCKWU4ykgTeoUcjWq+co4fSQWtpfurzWCT+e2gAnl
	82OIDf+1PYzQnhT82tKBbkRWF1xjYrJlIEWo8FlAtDYD8AVNDYtp4OrvPQYNm/cK1p/R83
	qnDx/5l7WM3AUIw8rMNkDU3EHHevj1GUZ5tkdRwNcQci1K4gRJvOgqbTUS5ocA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794220301; a=rsa-sha256;
	cv=pass;
	b=R0QF+BfLOaiUhUZRLvWUWUk4cK19OZwW6pVUHM+50ye2wBMEw85CMQPz8+DbP+MM8Wu4HY
	S5gHMLCWhIjXVRMM9+uivlAxzhMQ5NvPu7JQ9/m/DmPfnWMFektPgfUV8Y5htN+lFCpRHG
	0BpGwvQBCggAeqF7IuM2IkNnk0NM8ANwaO1QEjXZJdHoPp2NzKE04OgRms9TT4wpifEZSk
	+oKE+E4Kzoq/YF9oaPDymsVQjwCnYh+/iUC39fU5jQAh/7+z1f3UsEw3FUqmvx7jidBpDA
	YEGAgLgckRx2zGeXKurfnWKLxDXhoSLQ19DlUfNKkBP+yLCIUK8i28rX7XIc/w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Uebh5eqW;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BeP1Uk+t;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=iIGty5pOjgqAptcWfb47m309b9x7EDgFcsFf/sl8Ohc=; b=Uebh5eqWwdBfkt
	QpV5JhoOhKc3vuohgRq8pHm9YsJuVqHZmIz87RVDlarmYicB5TPTYBzyNwxPDBntvmZeEcbCJSUh9
	tjSQB+ea5W0hpTtc2GZ5BMzl3W43wZl78reZBse/25J6p2nvjcJCNVv/j6vJxcqp1kkyRT5MqGItx
	aBLKONhwhpZzzWbVnmQpHaPwtp6rWg/l1isNbJFcmhPe+H6IG5Ryv7GpD8gNHvcwkLdheeAnU/gm5
	RmXinIoTGnfKDlP/SaMak4wCPw7MJ5090eABAN2QQA+8tkwV8eNuGat/oAKzM3JY3ZUxR5Bq8LgYn
	Jodnp1GWJTxJ8V7Bk+gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQM1I-00000000Icu-1vRa;
	Mon, 09 Nov 2026 09:50:32 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQM1G-00000000IcV-0fbS
	for barebox@lists.infradead.org;
	Mon, 09 Nov 2026 09:50:32 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 467C7201B70;
	Mon, 09 Nov 2026 10:50:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794217828;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iIGty5pOjgqAptcWfb47m309b9x7EDgFcsFf/sl8Ohc=;
	b=BeP1Uk+tMXpSAn/lDGRnLoRF4xLwBdGbX9HxSqXVHi2/QgLegunombeATJlvVSfdxPGtLs
	pv1JWBG0LjKwyNGSBa5u0oTgm3PUAF4dpRk4Gs+XYPU7FUgWUcxFsbq60mC6+pjJkZTgKy
	tigwOdzYtGuHU4lhp0CK14I9XLj5+ooPx+OrO0mjk33uat+UYS3TWNO2njT6TN4OR2w60O
	OxVJ2orLO2Rb5cnsBTP81caU2KHmbYi0EgDO6NJhYtOB6NR7c1F9PmGXYECFS7HDtUB/kw
	cOrs72oRstEaiMcuCyQppliCWUgj30bWPAbZ8UJTd/4hjj8jJwAhSeDOqVQD5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794217828;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iIGty5pOjgqAptcWfb47m309b9x7EDgFcsFf/sl8Ohc=;
	b=ZdT26sjw5dkG7jY2xmDtdCzofolJ+qKeQ3eG2j1uzity5dxmEDb2hjZc4AKH0g6NClyaTr
	BjE+MghmnrPaFa+gl0GLyjOz9xXdyxWepiLPwvBmWKw/BnaqJSB72aG8geeHglIzIf9iO1
	LDyDaRTlI4quPTZzx0icil1MT/ielelWjib4FwWtYDT40MpvCcdQaWuA2CJL0dq1ls/aa7
	Dib97FeAlkWwdQtq59Wx/Wz+kXnNqZk4hNbVwEVpUBX5SD4Mgf43cYcO9yXU+f0aSR1OVg
	/tZxNOb0vVesibzgOVzeAMREZeVOMykuhZ4ExATCLNpBtRBjLdamCvZJbRaJaw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794217828; a=rsa-sha256;
	cv=none;
	b=LUMLmJFnZK619O+tC9wd/5+hDiQm8c8jibsxe0uausxV7WhE1Auql6e+Mq0sGUjn0p2VQx
	4GRZw/ldBUlCzuii0SFBcmzyMEo4orD8FPEhrULyQ4xuhezl9fMCja1AxrC1wla9JYCDmJ
	9kPw8yzsGtPWGw8iRgvd5oFEDtyoboM/KZyxWx/il4vLgZ/LS9TdGkRN7m+o7D2BV4fZsf
	gXALmEBYzeNFPWd9fbUhrpVJwVFslSCEMZjbvq2Z+qdu7Y2FmWBM3I6UMJVf+nH+a7DBhQ
	JbbNqXMfFq62KppkbI33YYGYLilhGZ2ct7S9Yt7N6I4cV1z0FLqTUQLyX1Jdyw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 395FDFF961;
	Mon, 09 Nov 2026 10:50:28 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261108093354.1247607-1-a.fatoum@barebox.org>
References: <20261108093354.1247607-1-a.fatoum@barebox.org>
Subject: Re: [PATCH 0/5] console: escape sequence handling improvement
Message-Id: <179421782821.530762.10693499536164452172.b4-ty@pengutronix.de>
Date: Mon, 09 Nov 2026 10:50:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_015030_355740_4382B3F3 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, 08 Nov 2026 10:32:02 +0100, Ahmad Fatoum wrote: >
    The v2026.07.0 update broke arrow key usage in the web demo for some > users.
    Proper fix is on the riscvemu side, but there's still some thin [...] 
 
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
X-Spamd-Result: default: False [-60.55 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.94)[99.75%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_TWO(0.00)[2];
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
X-Rspamd-Queue-Id: 2BC4E200FB6
X-Stat-Signature: tzwhn57iaztii9qo46ag58pwnzskkqjx
X-Rspamd-Action: no action


On Sun, 08 Nov 2026 10:32:02 +0100, Ahmad Fatoum wrote:
> The v2026.07.0 update broke arrow key usage in the web demo for some
> users. Proper fix is on the riscvemu side, but there's still some things
> we can do at the barebox side to make escape sequence handling more
> robust.
> 
> Ahmad Fatoum (5):
>   readkey: wait for the rest of an escape sequence
>   lib: term: ask the terminal when a console can't tell its size
>   serial: virtio_console: report the console size
>   console: give each console implementation its own console_ctrlc()
>   console: keep the keys typed ahead when checking for Ctrl-C
> 
> [...]

Applied, thanks!

[1/5] readkey: wait for the rest of an escape sequence
      https://git.pengutronix.de/cgit/barebox/commit/?id=817a1128a2a7 (link may not be stable)
[2/5] lib: term: ask the terminal when a console can't tell its size
      https://git.pengutronix.de/cgit/barebox/commit/?id=d4f6a1c064ee (link may not be stable)
[3/5] serial: virtio_console: report the console size
      https://git.pengutronix.de/cgit/barebox/commit/?id=05234d4bd72b (link may not be stable)
[4/5] console: give each console implementation its own console_ctrlc()
      https://git.pengutronix.de/cgit/barebox/commit/?id=39276e6d6023 (link may not be stable)
[5/5] console: keep the keys typed ahead when checking for Ctrl-C
      https://git.pengutronix.de/cgit/barebox/commit/?id=961f0d11ac4d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



