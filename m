Delivery-date: Fri, 04 Sep 2026 11:45:45 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2QUS-00AgIV-1t
	for lore@lore.pengutronix.de;
	Fri, 04 Sep 2026 11:45:45 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=OaRBDa7O;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 04D70200444
	for <lore@pengutronix.de>; Fri, 04 Sep 2026 11:45:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3nzQCSAWmk0ZiqEeDEQjONw0i8elrE3r7Ff1xUpP4ok=; b=OaRBDa7OK9MXY25ostW6zyrVSR
	p8EKPl9EzaKtWoh5kr80aT3pgodxUtH2epaxUWlnjnsyred1S0XvaOE/wQWTs5hRWI4t4GMhPtkTP
	JMcOzfA4YMl1HaLudKk2tZBV5005835mQICyaXA7Ltn/OaPWzsf0wlGTzkWUICv0h6te59zrP2qdm
	adLtfDxPwCZKlB6jobSNhkz030cUEl1BMZcFv8cYFq6ZJSy9VZ401PC+bwR1uUEoDTg8W5JCMtTYW
	6qqBQYV4RPj05VsJCCZcfc7w3I/AszLfH2FnWelXXvtjpbZlZxHDH2GrSDhiel0E3JCXZZj97j741
	/1a+g+5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2QTL-00000001ZHS-2xzh;
	Fri, 04 Sep 2026 09:44:35 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2QTI-00000001ZH4-2fsk
	for barebox@lists.infradead.org;
	Fri, 04 Sep 2026 09:44:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5D634201FD7;
	Fri, 04 Sep 2026 11:44:30 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x2QTG-004tZY-0x;
	Fri, 04 Sep 2026 11:44:30 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x2QTG-0000000Ffua-0yny;
	Fri, 04 Sep 2026 11:44:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260904080025.147376-1-a.fatoum@pengutronix.de>
References: <20260904080025.147376-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH 0/5] clang: more warning and error fixes
Message-Id: <178851507022.3735977.17847837571290344014.b4-ty@pengutronix.de>
Date: Fri, 04 Sep 2026 11:44:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_024432_834715_598B6997 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 04 Sep 2026 09:59:12 +0200, Ahmad Fatoum wrote: >
    In preparation for making bare metal targets also compile with clang, > here
    are some more warning and error fixes for both assembler and com [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: zab5g4isbscu5a9tmywckpxn7h7wbwqp
X-Rspamd-Queue-Id: 04D70200444
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::28:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]


On Fri, 04 Sep 2026 09:59:12 +0200, Ahmad Fatoum wrote:
> In preparation for making bare metal targets also compile with clang,
> here are some more warning and error fixes for both assembler and compiler.
> 
> Ahmad Fatoum (5):
>   kbuild: emit asm-offsets markers as .ascii strings
>   scripts: imx9image: fix warnings reported by clang
>   kbuild: disable -Wunused-but-set-variable after -Wall
>   kbuild: disable -Winitializer-overrides for clang
>   ARM64: cache: use WEAK() for v8_flush_l3_cache stub
> 
> [...]

Applied, thanks!

[1/5] kbuild: emit asm-offsets markers as .ascii strings
      https://git.pengutronix.de/cgit/barebox/commit/?id=d0be5d7ff7d9 (link may not be stable)
[2/5] scripts: imx9image: fix warnings reported by clang
      https://git.pengutronix.de/cgit/barebox/commit/?id=0ed92a5f4ca1 (link may not be stable)
[3/5] kbuild: disable -Wunused-but-set-variable after -Wall
      https://git.pengutronix.de/cgit/barebox/commit/?id=52d6a7a60bae (link may not be stable)
[4/5] kbuild: disable -Winitializer-overrides for clang
      https://git.pengutronix.de/cgit/barebox/commit/?id=9c787cdf53df (link may not be stable)
[5/5] ARM64: cache: use WEAK() for v8_flush_l3_cache stub
      https://git.pengutronix.de/cgit/barebox/commit/?id=69b498bb79a5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



