Delivery-date: Mon, 13 Apr 2026 16:36:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCIOp-00BkQ8-06
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 16:36:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCIOo-0000ee-GX
	for lore@pengutronix.de; Mon, 13 Apr 2026 16:36:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZTh3ULwA3VAOwOLl06omRmUhypIROEXL+u/Ps+gSBqA=; b=JxhBTMZEaP9KX1aidQmpkkYRc7
	apS+3VX9etMVTXZJZoSSVhIF9VhCE4BujCvdkRCjZuKb5OXz2raZS4Q8ORZxxA6AMZW/5h3y44X/s
	lbUh76JG6KoSkC0Khf3/8osiRP+iXlCpzr8J5EU0BiNLXIXx1QpoYseL96+58BOQnMdr6i+BmFVtm
	tiBVm+Ez2Fl7E2KSM0QzZpbrnOqcIaYJvoAOG825hoxbMJdG+teJlq6DomXhlsx9JzCgmn80VetcR
	jtwjMuMyATgrr9UnuSKUNKYZcpNZFUkSWT7/oNfB3ezSkkMp0yTmoPYbNz3qC0iHybvr1WDMviQoT
	23S8fb+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCIOI-0000000FsNi-364t;
	Mon, 13 Apr 2026 14:35:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCIOF-0000000FsNP-0pKO
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 14:35:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCIOD-0000a4-AQ; Mon, 13 Apr 2026 16:35:49 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCIOC-005Bl7-36;
	Mon, 13 Apr 2026 16:35:48 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCIOC-0000000EzEM-3mdT;
	Mon, 13 Apr 2026 16:35:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
In-Reply-To: <20260323071738.4005127-1-a.fatoum@barebox.org>
References: <20260323071738.4005127-1-a.fatoum@barebox.org>
Message-Id: <177609094889.3571925.9430359342195933849.b4-ty@pengutronix.de>
Date: Mon, 13 Apr 2026 16:35:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_073551_249364_23E3C053 
X-CRM114-Status: UNSURE (   6.61  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] x86: fix initjmp storing base pointer at wrong address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 23 Mar 2026 08:17:28 +0100, Ahmad Fatoum wrote:
> initjmp was writing zero to 8(%edx), which is func + 8 (corrupting
> memory at the function pointer address), instead of 8(%eax), which is
> the __ebp (base pointer) slot in the jmp_buf. When longjmp later
> restored the buffer, it would load uninitialized data into %ebp.
> 
> With regparm(3), the arguments are passed as:
>   %eax = jmp_buf, %edx = func, %ecx = stack_top
> 
> [...]

Applied, thanks!

[1/1] x86: fix initjmp storing base pointer at wrong address
      https://git.pengutronix.de/cgit/barebox/commit/?id=29f6d89ef50b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



