Delivery-date: Thu, 20 Mar 2025 13:56:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvFRm-001tZB-2C
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 13:56:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvFRl-0001jM-Jm
	for lore@pengutronix.de; Thu, 20 Mar 2025 13:56:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LIovj6AoK5hhz82Y1OgKEr56PA8qn50o1XoJMOHKwn0=; b=MzfDh7cSK7qtzkXOim5D+TU9Eb
	UJMdJvG2NDtDaF0cUyRjkSKP9jKHCk4u1/unLhlrFzZW3O3nby2Pie5WmpREArwzn1+JkqCiH68TB
	hiv9yHGWqoSs8MNPqYzafnBhe9Ez7lNnTWYfKruGZ2HKvAPhMrsReC9xu5UzynMmXlTrj2k5Nqrqo
	44VLGmp0hApNLAqlXODpQ2vZzmsQIQNI3l/M0z7+S98vqlxv/D1AMeot7a+pMmO5lGDVgkwjHj+pG
	UwI83/0BPAkAlddNULB5pY+c7K0EunX5bnOYuV0gmzKO+ijyxP6SuKywC9Q+fOhpmiHdo/ZdBLdfJ
	srIUAyaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvFRM-0000000C9kV-1Che;
	Thu, 20 Mar 2025 12:56:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvFO9-0000000C9P8-3eDE
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 12:52:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvFO8-0000oh-K9; Thu, 20 Mar 2025 13:52:44 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvFO8-000lF5-02;
	Thu, 20 Mar 2025 13:52:44 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvFO8-000sxc-1B;
	Thu, 20 Mar 2025 13:52:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250319161056.2086121-1-a.fatoum@pengutronix.de>
References: <20250319161056.2086121-1-a.fatoum@pengutronix.de>
Message-Id: <174247516436.211035.5665219130801008087.b4-ty@pengutronix.de>
Date: Thu, 20 Mar 2025 13:52:44 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_055245_905710_FA80772E 
X-CRM114-Status: UNSURE (   7.10  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! commands: ubsan: hide zero division in test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 19 Mar 2025 17:10:56 +0100, Ahmad Fatoum wrote:
> GCC complains that we pass the address of the variable instead of the
>     variable itself:
> 
>     commands/ubsan.c: In function ‘test_ubsan_divrem_overflow’:
>     error: lvalue required in ‘asm’ statement
> 
>        63 |         __asm__ ("" : "=r" (var) : "0" (var))
>           |         ^~~~~~~
>     ./commands/ubsan.c:46:9: note: in expansion of macro ‘OPTIMIZER_HIDE_VAR’
>        46 |         OPTIMIZER_HIDE_VAR(&val2);
> 
> [...]

Applied, thanks!

[1/1] fixup! commands: ubsan: hide zero division in test
      https://git.pengutronix.de/cgit/barebox/commit/?id=85749615acdd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



