Delivery-date: Thu, 15 Oct 2026 13:33:10 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHJhu-00Dtyx-2a
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 13:33:10 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 962962004B4
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 13:33:10 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=5ESqBm9b;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Ec8+ZfJ7;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792063990; a=rsa-sha256;
	cv=pass;
	b=MR7sfYEQI6ers5pAWP9rr6I9BxKRW0CdoKC9OrraqIGEXM8NGlVHIIR2KHPuSZJ1PcLk6V
	7R6WQXqBjsyM2JdItT6luiRyRZ97hSPsnl8P7M+Q9brDVlz4BiJzNVtDEJpZeTeionfZSf
	ogym4agnGGF2C5rP0Hp1BNj87mz8rLh5Z2/hgYQZKBmMY9BmGvJ+MxT3ykHas8bZ1dTst/
	I21ycTrehfNV2ec9sxcbyFWDaSx3n7tu2mYLnuIYOaf6t6vEunadjxPuiBSpDs9vYOixXv
	MjSy8Px1dQKGsMgO9tDgHMJvgfVipg+eqbMH3d9j01apGBqH5z3QATD1ONFZ9Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=5ESqBm9b;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Ec8+ZfJ7;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792063990;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=ysFAgBLjkco56cATzUiVy9IAnFADTDqoU7eseO3LgWk=;
	b=Wcrs7DvRk/2fisSxQ3FKgUPX64TjAlKeRQTwMTfXtTR1X6A4LTMNnXLC3dnCqQnvwTBjab
	OR9sQOYkFOZcqoP5IPpEKSxQCTvs4dU5+K6OwX7xiuYOtLPE4MH3Si7B1tb47YaL0y5SpR
	gQKn3P0/ROUDpSIG7V8rdStWQbMp5UJZnm3xoJ8JvpNZFTXur/1kQHUjYG3X6dpFyoDZr6
	iaM4kFwJ34g30FDsSjTQtTv58Dvh92A3pSHFcjjw8IN9fHbFkAILKlMlZ4/5KiYEzVHmjp
	NtcHP7Jajrg+3R+aVoCBi5/NjqgwG02KdhGKZo7nVlQvMy9440O/xhh3FkvNYw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ysFAgBLjkco56cATzUiVy9IAnFADTDqoU7eseO3LgWk=; b=5ESqBm9b8JbeJcahzIp3hJtZpS
	+ReHXV7BSy2rnFXSzlOljad6xnakOXMT97JI3KUoiEUjX8gXBspg8iYWvsx1XOswuNkyJ8hAtDWnR
	+9uoc6O1we+CqM3iBhmPGEunekP8uJM/xZ1E0xWcb/sUVoFpqw0O6TM9N/+7mRin9R1Q/609IKHIK
	MEs3nkTSi5KnIWwAghRh973FM6D2EGNeG2C7JfhQspuukoliV7xkyk4abdFwhxzNxX9yx4tT4fIvZ
	MejN3rGWaWXWcr7cEj4kpwDjndpRmTQ1E1rqxU0TmSloBG94FXivB2scvIO8TvIX13ZK8jO0YMImL
	6/BxvjRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJgs-0000000Ha5L-3MzC;
	Thu, 15 Oct 2026 11:32:06 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJgo-0000000Ha4r-0HiA
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 11:32:05 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 66782201BC6;
	Thu, 15 Oct 2026 13:32:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792063920;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ysFAgBLjkco56cATzUiVy9IAnFADTDqoU7eseO3LgWk=;
	b=Ec8+ZfJ7L012qJTiQ4AjGAaVYDya0BvOP1X+gXlhNy5cB1TZbuaFQMnmalGJEGYQcfVb0l
	5iurkTEvo/5ChE2zjeKFNwAaMDJmfmEegxl96rmUoQKNv6tHME9+p5zIC1QZ768jnLGNtD
	/MWIukFQPbm/oK0Hcw66kIvVuFauOGNMQwg/IwYQ3qVuM0BAUTdjpli8dD6S0uNwaGeQd/
	wggOLrlaoCdxnmTAByzbaapjbsSUsFuBwsyQSTwhCbER+Wnkc/mtWFgxRqdFFFODdPoLzW
	x8SuyRy/zWVQ1TBZ5gtFVdW3FTr84sX1eQCQ2uf64fT2x+YtylUAdRAe44YRsw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792063920; a=rsa-sha256;
	cv=none;
	b=fH5ezQM9VG1u83KYVVU2LkJtyzg9JTZfIdPnuLfnLh/HD7S1fihlHZ57FF13MzCHxUVTTg
	ab8t+ako3uH/uwUw3az8g99ZTA5jUkEiXiq1OEdFIfmqNWebj2tZF0zLsHtnyPjckKv6vs
	2uk2zhcpg+wOkCCcogMSoNB6THa6dTxKHCIY4YX4gNR+0zkp35hPrWYj+YJcOt3vCsspM9
	p40ef5hGI51nGGpN7fZrs67jS2doClTCxPYahgN2HuLZQu9th3cYaJgKpwvogN5QPSvoOk
	zd+KEjEAEacRXCYleFNWUXP1d4dHWbCvTkyNWLmLw6UFwIrEwxMAOosOnloA8w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792063920;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ysFAgBLjkco56cATzUiVy9IAnFADTDqoU7eseO3LgWk=;
	b=WVba5B9dYBH7ZGk4z8Mfi/rPI7vIK0mZ1tEAk7cgvuCpwQOTpApQ2hANBaH06HMqyiFuV1
	f3FleasRnj5Dci3iYwDS0UCX3QitbF2P3DTUrWhqIjr7JMV4nKHmBeu5XZdm5qpIXh3ajn
	ZDkuItM+Ccp3XfYwz5JIhWNA+YvgaymxPxQqWNSjtF+t8BAokDk7GhX2NRdSy3tMHq2YTE
	7UiA+7duQJfSrt2r0ZsgOq5/dSZuL6f8aNqUoaO1cfJyE4h5MnrEhhbUvUbVvLXPgiAu7g
	ul+dBBPfiH+frkKKz04piDwd2yu/W7Vu/63C0pf2PZFXl77K5CVL/bqzhztc/Q==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 55BD2FF88D;
	Thu, 15 Oct 2026 13:32:00 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
In-Reply-To: <20261002112648.2899729-1-a.fatoum@pengutronix.de>
References: <20261002112648.2899729-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH 1/4] bootm: define LINUX_BOOTARGS_BOOTM_EARLY/LATE in
 <bootm.h>
Message-Id: <179206392032.3996211.12261864827349051206.b4-ty@pengutronix.de>
Date: Thu, 15 Oct 2026 13:32:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_043203_158580_A2CABA26 
X-CRM114-Status: UNSURE (   6.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 02 Oct 2026 13:26:31 +0200, Ahmad Fatoum wrote: >
    We had previously laid out a prefix convention for the Linux command > line
    options added by bootm, but only the late variant was added as > [...] 
 
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
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 962962004B4
X-Stat-Signature: 89ujwr355txt8djskhy54yokprx3nia7


On Fri, 02 Oct 2026 13:26:31 +0200, Ahmad Fatoum wrote:
> We had previously laid out a prefix convention for the Linux command
> line options added by bootm, but only the late variant was added as
> nothing yet needed the early one.
> 
> The FIT cmdline support will need it and lives outside bootm.c, so let's
> introduce LINUX_BOOTARGS_BOOTM_EARLY and move both prefixes into the
> header.
> 
> [...]

Applied, thanks!

[1/4] bootm: define LINUX_BOOTARGS_BOOTM_EARLY/LATE in <bootm.h>
      https://git.pengutronix.de/cgit/barebox/commit/?id=50c071d36461 (link may not be stable)
[3/4] amend! bootm: add fitimage command line to bootargs
      https://git.pengutronix.de/cgit/barebox/commit/?id=f7317456662a (link may not be stable)
[4/4] test: py: add test for fit cmdline parameter order
      https://git.pengutronix.de/cgit/barebox/commit/?id=d5492a253d61 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



