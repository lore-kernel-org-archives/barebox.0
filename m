Delivery-date: Mon, 09 Nov 2026 11:16:08 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQMQ4-008zMt-0D
	for lore@lore.pengutronix.de;
	Mon, 09 Nov 2026 11:16:08 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 07BF7200FB6
	for <lore@pengutronix.de>; Mon, 09 Nov 2026 11:16:08 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FBg77tx5;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=DPuB6nF5;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794219368;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=e7vb3h36OF0j+fH/DlZIv9QFGJZFCOiItVB72Rvykuk=;
	b=ZdEpt7G8vULanK6eYPvyuTvHT01tG5L8hdV9CDMe9s3QGowWQEhgdn51Aeh/384UiUuYU2
	6vlxhWjmQPoXHzN2EzXb5s55hxwceNxZZZjcapHzzceFGo7h7A69FH5xmEttOW6j/SzaHd
	STRawcFwNu+eU02Jum/OmvNqRLhWEcJFFvW3hqf446MPRGXUrjM77yFIu0XZGkkLv+E7MP
	fI3HMXlDDOqaW4MO1e5jU1ljiYtAfZL5/dwjLx/BWV/1kea2fAwC+aCHdzon7z//H2JBxE
	zmrGy0EiicwG6p7sT1xaXy8Q5Nvt7N3v6HXZBWiu/Rhf/RmT6atW0XOOM+nLyA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794219368; a=rsa-sha256;
	cv=pass;
	b=douIntP05Ep2uGBVZpmX+id2u+9WJ+1Vkdn9kJFef6WnBZLpd8M8gCK3zPldXF7hsuenwL
	28WtS7RqHljMH8Aur3s+E8P2oCFT6vyb5rkybwy5MvXXmkRE2Nht8Jwig+uNlBUDEiprgg
	1qz7+chVx3MFTLNTkw/B3nyA5ocGolfOGaQHB2CuVp/9lVQYHBOYztkXk0UrggCUCA4CtC
	vpfBdYHjqAkuRLwquTPIVJ6A+oMpm/rNWPJ8fjrET3js0/Z5xLJsL3XHz74C01EQ47ajcx
	C7tj+41Svpdjn1ChZXQltj16/I8lCu+BN+n9PtSuWzJc7PlCuEC8UkOx678tjw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FBg77tx5;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=DPuB6nF5;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=e7vb3h36OF0j+fH/DlZIv9QFGJZFCOiItVB72Rvykuk=; b=FBg77tx5qLTIiS
	9oI53Z6HWXOWskKIZPmxRRmLiQzoUwZgfrlCFPKEJQSXZKhPM8TjffCnyWo+/CXgETKTaXb0S6YCc
	ZDHCmeE1BKLJyQu/3fGJUDaujPjkD1/hrK/0jbJdnM6nqtRMlKwAMOQvZQQlsCTbpv94H6vLyT15U
	RdLpGJVGZqB38uBqSdAJvkCPcarJgZ5acR0niySkqUTPKds9TXvb8wo8TYV+IfasRz4mUVQ0vzUmz
	ArC7/KxWzdWNzBjCDIjH+2CGtZny/pPK++IJtZtFyvSCL0+/gmDKblPqdM7fXZetfK/iKL7mdUlpK
	pLhjHMdeS1uit9lN1Skg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQM3c-00000000J5g-0bzt;
	Mon, 09 Nov 2026 09:52:56 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQM3Z-00000000J4R-2QHD
	for barebox@lists.infradead.org;
	Mon, 09 Nov 2026 09:52:55 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D06D52006AF;
	Mon, 09 Nov 2026 10:52:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794217971;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=e7vb3h36OF0j+fH/DlZIv9QFGJZFCOiItVB72Rvykuk=;
	b=DPuB6nF5JbJE7h1UxVOPxu+/MH8Q8Ja4jLqlDhB+49lkdmiFmycHcu4TlYdg4HD0mlMmx7
	0Sh7HP0kzrblEpbuvvLfcdxO3V88q/Kgwq9QcrM7i60MN3+u/8O6tHdca40roy3iRcV9d4
	xCcln07y+Gn9Z0Yf+xAkZGb6l9yx2Panc0JlsQM14Mo3h/NCwVjgyvMeQmgTsvU9htbQDD
	zgHOLbFh9+UlRUk1wLM5XyhrKPVjXUAlxyejHFQIK/NyIjcQw2OmICY026kHaxP/gyhTWr
	e+BexeotJHRSiMIKr4RZqGMgZG6mag2z5mezfxcCFH3OwpVMnBIKfA513R8igg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794217971;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=e7vb3h36OF0j+fH/DlZIv9QFGJZFCOiItVB72Rvykuk=;
	b=ewzs667NmukQ/rql+YIo/dcQ1KmxG42hdJCdwi2ewM4M70CQ3nzXKoiiJvj8XzShp9Xxs0
	PyPQH2IKHrsk+Hg/anWoXJ9HS2yPyZdKaxizaEaB8K+ee5hKBGyC6sTMH2Tex088m81SAi
	5FzkAEQcviqw6QBbWpgoyHhsH96ehnWaTqiBdD4Ewh6E2ezSSORmWj0E6Ctfx5EOC9mfy2
	cNZItrddMq+urKNXJbR4cgpnwugeKze4frhNJrN7iptG5cTbiAfaGVWqjBN68+rGj9WDb9
	qacmyQonNgbJX01kgjXCcZRVWHZTuW2dKXAOIs7mcpKVDy4+RRbBKorelGQWWw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794217971; a=rsa-sha256;
	cv=none;
	b=Vaw1nVhh/7lsvRBCb9B8MzmN1fypamElxtDM7Zd7CiCY7n5B99U2Vj1yjC2f6R94XdtLOj
	I+NWws8KY5xpge7mlBlHbgzZVFeAnPzVZFRuT7+TzGbw4NBTqzgXaIMe2zTE3LcmpqnZ2K
	t/5wKfY0fdXLfR8/FkRg1ZxzRfR8ciGGYcZUzxh/NvWNaFOEIiEr1j8MnM04GQ8qSKJdWI
	xXpjVKaDLJeqp/5X0iu1eO/vO6z/wn6r8LU+UYIlFvZ/qYDTRRZUpvg+4Q38y3Xy7PQ+tA
	TUAok/hJz5DQP5ROB8dFdj7BJlvD/ui7ZqXXvcdtL9BHZGVhtJwSC4H97SpvZA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id BC4DBFF961;
	Mon, 09 Nov 2026 10:52:51 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261106111352.3535034-1-a.fatoum@pengutronix.de>
References: <20261106111352.3535034-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH 1/4] ARM: at91: sama5d3: pass BootROM r4 on to barebox
 proper
Message-Id: <179421797175.534281.6764874858462662166.b4-ty@pengutronix.de>
Date: Mon, 09 Nov 2026 10:52:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_015253_776239_7A5454E8 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 06 Nov 2026 12:13:47 +0100, Ahmad Fatoum wrote: >
    The SAMA5D3 xload entry points pass a literal 0 instead of the BootROM's
   > r4 to sama5d3_atmci_start_image(). This leads to wrong $bootsource [...]
    
 
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 07BF7200FB6
X-Stat-Signature: fdjsmzifrsumn9cfgepkcx7d9yperasb
X-Rspamd-Action: no action


On Fri, 06 Nov 2026 12:13:47 +0100, Ahmad Fatoum wrote:
> The SAMA5D3 xload entry points pass a literal 0 instead of the BootROM's
> r4 to sama5d3_atmci_start_image(). This leads to wrong $bootsource
> computation.
> 
> Fix this by passing r4 through. Tested on a SAMA5D3 Xplained booting
> from SD.
> 
> [...]

Applied, thanks!

[1/4] ARM: at91: sama5d3: pass BootROM r4 on to barebox proper
      https://git.pengutronix.de/cgit/barebox/commit/?id=2f461f48d41b (link may not be stable)
[2/4] ARM: at91: sama5d3_xplained: drop invalid hostname
      https://git.pengutronix.de/cgit/barebox/commit/?id=92fa6d8b837b (link may not be stable)
[3/4] pwm: atmel: look up the clock without a name
      https://git.pengutronix.de/cgit/barebox/commit/?id=b44d49b5192d (link may not be stable)
[4/4] ARM: at91: sama5d3: Migrate to MFD-based SMC driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=9ef0ba56aaff (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



