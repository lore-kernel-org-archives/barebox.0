Delivery-date: Mon, 26 Oct 2026 11:02:43 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLHXP-003Sno-0c
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 11:02:43 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 673F7200073
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 11:02:43 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Q0oDnGjk;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=eJvlaboD;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793008963; a=rsa-sha256;
	cv=pass;
	b=FrykShiwDXqpkemagyTl2dQ49oldG++WFEY+kaeSLzgnMbSjwstdz2dldT+IRmTZR4rQFL
	UuuSOx0tdoeEx58PngHLo3UiWHE9Zs07BdjOGWrkWDjRwvBOq0mLQKmrKTbAoXUyRNK7mm
	W5oRMB5JQKSjc80qpPSk308kDWkYv9nKCQKu/edUP4xR02fDXA1ipXLj543KLB9BlJwp8Y
	N9Ml+Xgm5lNjawf4MgEqSrshp22X1lgL9vTvbefcdeun9zzmlh7sgjTy+a5TDtRfcvFoPU
	/zA1FgoCsTABo4AICFwkq/2VKl6Cp81diRkZrCpc2oJZdjsUz7vxq3hAxRW2hg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Q0oDnGjk;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=eJvlaboD;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793008963;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=rFHFYdbl1u4k4R2UyYo2VQcC3oMBaxnIBgT0oYVQRAM=;
	b=VY01tc8ty91rZ6RPcKr+ayJkC+EAlqAa9cdCHfNuWGQ6u/ORq7DapyzC40pPdUezsbYR8V
	nOem4kidDJWc9AePDbcdSQWWZ+QwYiEVKTv2pcDGOdr0p7YmuJJJxa/uyMIwoY06JApayV
	uJtZ9e03zZ33L9XynTH+CTwlJLmr+fmI2ny9RqCIaboHvyhMpJYbU0ok/yvuO8jK04ZDkS
	2FVq97QZjQmZUzVf0aAXEQnO9r5UD6Hny7QgbXwdJC74WEUvI/nvWnnlsINst3uIkzlNbW
	QY5X0Yl+s5WdZn+p125lSAcxmRvtpNsQfHcvEoe/5UbJ2v2gPNzSsfIstB4dIA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=rFHFYdbl1u4k4R2UyYo2VQcC3oMBaxnIBgT0oYVQRAM=; b=Q0oDnGjkiHvQsT
	BoPgpABrdcueCMHKBAIGTR3+yNxrA2mVrfREo0gFA08tXFk8Or7cxYuikJww6YVlKcgMAHI7slyEf
	8RDV9S8UGfeqWIYEAx7jkWxYiV5dvxwbtS/deUgmcUAPGEcDGzL/VN4o31dVEdEjPg2xa2aJcuX0Z
	6y/5Y+8URS1+msaQxjAjRbuHhU0uJrqb43xkpisCx+ypd1FaXZKQmFvnkybbeMBjKNtHuxRHo/Tfy
	zC0yvjXbcZ4dOCJD0XhWzfCq9gM8/ysiI5ZbDztpNDTSFmo0BtftODpQdnD2Tr/zBjhaDc5saQHSS
	UsCpe14/Cj3IzZof+UcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLHWA-00000002BQ9-3KLM;
	Mon, 26 Oct 2026 10:01:26 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLHW6-00000002BNb-1UiL
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 10:01:25 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 3CDC3200073;
	Mon, 26 Oct 2026 11:01:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793008880;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rFHFYdbl1u4k4R2UyYo2VQcC3oMBaxnIBgT0oYVQRAM=;
	b=eJvlaboDLF7XGAyq5kwRwkAteVuTDHbMn0ssuJAI2LVqVIvO4CKdQNEI+FI1JrcWHqpNW0
	0ZgozQYCgMbUSLNqNh3TFXxFkbDugH5Rm+C73kAUKt2wrfqP7lPcf9MDzSUj5dtkBjjNvM
	SKpHxqBNXPiw/XsAoYlmLDSZ26gAUAYf84//x4zvi41bA65c238acHR24lxdo6VXZh6hwm
	cooyYZLtXmyFUrbmAXqK7R8RrV2W8fGq3ZvzbFlHUGB4ksEnZTQPaDy8dzlc+OPX5HniDQ
	XwCj56g9KTo9UT2gHJDL6W/AKJhGgy/IzEnEiNfjTg5BniUpgW+2qNs1SGXbeA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793008880; a=rsa-sha256;
	cv=none;
	b=Ka3x/xHr6KCV3xgvY1D5iEdXN4rpNsYgI6pOeig7PHPf+gazcA5qCbfOqqgIzIDhh20A6i
	5O4te9aAvaQ3NJoiYsYorg49FOomal8Vlt2WqjChblaJrDqRi/gZPvI5qKH1lJOqP/fgHM
	BLT9dyopihic8wpmgIFm5EHOyZuW9UFx5TNnIAyz638Fi3VIxXpmMv7R47MdI5XfG1oQ7L
	9uMVA8PfBUkWhZQ10tEFRsy51Rd858gDWXPUZa4SzD80PXySAcsqf/U7MpvMBCJ/AzrjJ6
	oKzZxvQwNIdsrSlmv53DBSMVxg92mZeHDdRGNelWEPDaki8Ob+G3cwz8guUzYA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793008880;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rFHFYdbl1u4k4R2UyYo2VQcC3oMBaxnIBgT0oYVQRAM=;
	b=OAgjE2supV7VlOQHPqwTLyXX6CnMYHC1pQSWJKIpGosM9FnXv8TMJ/LCWJl8LFN5BpOB/V
	g4nPh9oBllewiI1q4GY4kOWqwExrs75SDab1z3HUSy7y88OpLWoSFrFpK8zSgCjcNbt8Ta
	pTfu7ltfdUJk8nuy2KLmnIoZsi+Iyxfc4lvPn+g7rRlmvwXLtJBrbdm8yuH6ebvGpL37TA
	yB6dhcK6vc6NNzuQq/eGQHbjRblYcJu87cf+hNE6NpZK/pQD4jyrxcEy4da+Ry5GJlhaig
	80HxxFMl3ewCLWvSMVV40yCkYRSPZI+DsZw7xUBZZHjJzEASUmpb3XKnHk8IFA==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 31727FF946;
	Mon, 26 Oct 2026 11:01:20 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, clement.leger@linux.dev
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261023200507.63716-1-clement.leger@linux.dev>
References: <20261023200507.63716-1-clement.leger@linux.dev>
Subject: Re: [PATCH 0/5] kvx: remove architecture support
Message-Id: <179300888018.170403.7421510696428003167.b4-ty@pengutronix.de>
Date: Mon, 26 Oct 2026 11:01:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_030122_703798_B7A9F90F 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 23 Oct 2026 22:05:02 +0200, clement.leger@linux.dev
    wrote: > From: Clément Léger <clement.leger@linux.dev> > > The barebox
   kvx port was upstreamed in the hope it was the first one > of a lo [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 673F7200073
X-Spamd-Result: default: False [-59.74 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.33)[96.86%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: tugnwr7e8yx5ffdzt9p5oia6iq9u4odk


On Fri, 23 Oct 2026 22:05:02 +0200, clement.leger@linux.dev wrote:
> From: Clément Léger <clement.leger@linux.dev>
> 
> The barebox kvx port was upstreamed in the hope it was the first one
> of a long series of other contributions (GCC, Linux, etc).
> Unfortunately, the kvx architecture remained closed and there was no
> public specification nor upstreamed compiler. Additionally, there are
> no users outside of the company itself and there is not possible to
> obtain a board with such SoC. Latest modifications of the architecture
> also made it non compatible with this architecture.
> 
> [...]

Applied, thanks!

[1/5] drivers: soc: remove KVX support
      https://git.pengutronix.de/cgit/barebox/commit/?id=d1fc2fbda25c (link may not be stable)
[2/5] drivers: clocksource: remove KVX timer
      https://git.pengutronix.de/cgit/barebox/commit/?id=80d68c480942 (link may not be stable)
[3/5] drivers: nvmem: remove KVX OTP support
      https://git.pengutronix.de/cgit/barebox/commit/?id=9ee59c77651a (link may not be stable)
[4/5] drivers: watchdog: remove KVX watchdog
      https://git.pengutronix.de/cgit/barebox/commit/?id=79fbc2fee628 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



