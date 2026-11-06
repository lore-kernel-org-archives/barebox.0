Delivery-date: Fri, 06 Nov 2026 12:12:23 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xPHrr-007zAk-0w
	for lore@lore.pengutronix.de;
	Fri, 06 Nov 2026 12:12:23 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7AE98202929
	for <lore@pengutronix.de>; Fri, 06 Nov 2026 12:12:23 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SMALkg1I;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=WDGqyU9J;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793963543;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=701pniEj75QOC2s/67ovfh6BqaT0814cvbrgw3gY3+4=;
	b=McTFDXdFm0/UY9V6pBbaDIYRasT70I4BMgxC2Oyyf44YtpuXM7Ge465Fl5jmnCi/lJVpgq
	IGQDhMEgjFBH5eOyDulGuG86zqzSG2M94Wb2+m5oS2zrzdJaW0tRUGZ08uX1nlypkXWdnd
	cUCJSr9NOxZ8G41EDMpin/yF+t1PokcMomSMryWs+RtlkyQQ7oXNf8EGgBbherDjay41SF
	FwEra7DgYe87DIkg+XbyNBXGf8pdozXGg/w/e1Dx6QSgK2PqJbULSEzMP/D2tixYK6F51V
	vQ5mP8JALpjSsXnfCzfO+7r+zLj4Ubi69DWDB1L/I1NNGzVWl6KAsMm1hTXKPg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SMALkg1I;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=WDGqyU9J;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793963543; a=rsa-sha256;
	cv=pass;
	b=ekuI6b4HVcC51nztYTKoK+S4KHrYLsZ1TfuKZTrpEo/yQ9ZuaccDtd+oMGsPs5HCz3VH9/
	gOGTKzDwNrx5yESNK/jx+zQoaJhilpEYAvsLw8dWRE8400p2SSlxCGBwWMQScPdbE0B/k0
	BCAy5mhPJibmqYc/Bgz2NSR1cjhX8/bknopqOMBJxQ4gpd7+EvGg3yD3J13xhkIJq9sL1r
	AQiQqOTyt49XPNsfPj/FD5N5mkpD337Kff021m7nNy2SJ/WK/U5UR0x//HeWeUvYIoq6Pt
	Ab3gL4E5uKHSGMFGiB4N9KiWuoMQXgncTLn3bBWonYinxe250ahY74Gne7SHPQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=701pniEj75QOC2s/67ovfh6BqaT0814cvbrgw3gY3+4=; b=SMALkg1I1iWN2B
	8PyXukbO4iIZ9aTOSqDdD99APvZQUtbhrU1ikGn3w2SkX2Spni4batkKMBdDa7XKmCbQkKGUnyK6y
	lSLPCyq4yXf4EnB5tYBj4T77+1MGEXv3bs9EKlpt+Yxh8d0n18D7+UOI7TGOSc8q5Y9V6fbklPjEn
	A+03OdDQPH2FBUPGGCKEasmdITLYMUo4AQpNZIGegJIShLjlGgmdaf6fqiztDxjjnBj27eB5rC4FI
	SBIg/8JFb/0cyTRapgUYM0ed9zhmsh7iqCdUiYLg36AZ5HIShBjHgoAimFT5kvHFj4wwqs5frOESN
	rKiHfu4zprv+4YVJSaZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPGlx-0000000BpzV-0Mrn;
	Fri, 06 Nov 2026 10:02:13 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPGlu-0000000Bpz4-06FV
	for barebox@lists.infradead.org;
	Fri, 06 Nov 2026 10:02:11 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 994D720041D;
	Fri, 06 Nov 2026 11:02:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793959327;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=701pniEj75QOC2s/67ovfh6BqaT0814cvbrgw3gY3+4=;
	b=WDGqyU9J+2eoAC9HV7FZJz6l4X7WKA88ClQcTO8NRXl6CvnucxYcz/ICuu11Mhhq+JaVXT
	paaRUMpZWKvlChFoNrl24RwlFF+ejF7+YZf4cvLvY0kJOKzpkC/1UuwUaTY6tcjeItPnoj
	C4UtwAuRJi9oiP/WBXHyta6QSblSCbobzy67TzfbV67tvvNUYVvmJ8XbMIozM37xPJzzuA
	/kDidlBL7r9RokCuaVRY4Qruo2EnyicU4SqnVY/T6pTic9UH5qfEx6d5sWStHeebly/38K
	pzFZS5XH000biBwfJPxS8eEaPA0rBBVpn5algIqxtDxRnEInV5Z+AGn/vNGkNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793959327;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=701pniEj75QOC2s/67ovfh6BqaT0814cvbrgw3gY3+4=;
	b=H2K9/LA6vSnTf+mVCVcLUZ8IpVHVhlBi4J2Yn5465sy+ESF0hfawCFFGHdb03ma14YEigO
	UVCVqoYvLljpaHHuFd1TmVDbjZEkFVxQWmdaja/WbNRahHqTMkl+KdCPhUtFq0b4sgs4X0
	sw3j+EOfZX0cRojFa3c+SroZVjFUfEsW3Ui99j0imRZEXHpA9nLh0yy/Aj1YmK4LKyfXfW
	V1SeDbbMIuIIrFOq63hmYG61V93IMGqlTi2WhCd4dF0emHkx0pTwE3dSr9iiWQsZXKChez
	r7+tdGKX2NIX2G1jSf3WSNcIuwzwgZoQwYYcv9LrOwu7c8IOPzB0NmMdSL1x0A==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793959327; a=rsa-sha256;
	cv=none;
	b=M69wIVLV0WHQASJ/x4UA0BsgOuBtKJcWFkwHlh7y5WjXUvMekkOi3UoYM/I8zLu186aj/B
	3XO6Y15lJvg0s+izwo9auUZ/Tc96HcX9j0/ymu/qh/qwMdavUbuvwV6FWkv7yUUchppoV2
	Ag4LJAWVbCgvf1LQmmUviytVvyYMZXh23khfk/pNGuJf+G6SaYdmvswEpAs3+s3vtJjBHv
	su9bj504ZGXsTjFhlvepU/iE0qt0pkzpBWodIWIR634p8zHbfRu08iYIicVL4dRmXoTwyf
	0mho60Qqi+OA1q/FR52g3zaTZ53LIirwfJ6NdJqBWoOG5rUzovDt7MUa/crJXw==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 84394FF9DB;
	Fri, 06 Nov 2026 11:02:07 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: lst@pengutronix.de, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261103131652.663786-1-a.fatoum@pengutronix.de>
References: <20261103131652.663786-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH 1/2] ARM64: mmu: map normal memory Inner Shareable
Message-Id: <179395932752.4003630.9162545980306214198.b4-ty@pengutronix.de>
Date: Fri, 06 Nov 2026 11:02:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_020210_222149_B68100CF 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 03 Nov 2026 14:16:08 +0100, Ahmad Fatoum wrote: >
    Commit 77446c78219e ("ARM: aarch64: mmu: use PTE_* definitions from > U-Boot")
    back in 2018 was meant to only switch to the U-Boot macro name [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 7AE98202929
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
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
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 996bsqki7ai14wdi4mamz3yinujkkkfy


On Tue, 03 Nov 2026 14:16:08 +0100, Ahmad Fatoum wrote:
> Commit 77446c78219e ("ARM: aarch64: mmu: use PTE_* definitions from
> U-Boot") back in 2018 was meant to only switch to the U-Boot macro names,
> but it also changed CACHED_MEM from Inner Shareable (PMD_SECT_S, 3 << 8)
> to Outer Shareable. TCR was left at Inner Shareable, so since then, the
> page table walker reads our translation tables Inner Shareable, while we
> write them Outer Shareable.
> 
> [...]

Applied, thanks!

[1/2] ARM64: mmu: map normal memory Inner Shareable
      https://git.pengutronix.de/cgit/barebox/commit/?id=58fb483585df (link may not be stable)
[2/2] habv4: drop cache maintenance around HAB SiP calls
      https://git.pengutronix.de/cgit/barebox/commit/?id=309130d851c5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



