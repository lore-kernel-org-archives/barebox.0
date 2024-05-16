Delivery-date: Thu, 16 May 2024 08:09:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7UJJ-00GrVj-2m
	for lore@lore.pengutronix.de;
	Thu, 16 May 2024 08:09:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7UJJ-0006gj-AG
	for lore@pengutronix.de; Thu, 16 May 2024 08:09:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P8DIDq4ri7Y183oP5zsRjc34JUcRq51czPbpHQMC5Eg=; b=vjLSuA6ktsNQAwyfTH2Do5kNTG
	hL4QOOow1QLeW9CGk2QjZE63NllWs9bgDoNx2OZ5v0ahF32sy80Wz4pJSvxe+tqp03RLUWrRWnYLl
	757MBjh1XgtKD7ejpLboWvLsn2JUjB+63bpfM8phArBnjzvVyxHX/C3Bg+UDvKqT3HWJn0UeCZPpG
	p8LAyNwZOo3hztGYgKaWvLA3aFEruTFAy/5Kbc8D0LZs4Str2LqZpqk66sqWvGyK9Z3ROCkIK7UNc
	ceuaEdM5fy2cQhp8zst6+5kltQeEA47erCgbtF0c+227DfgS0InzqxcziMu5caoQQZxGpafOhnXii
	zTk/Rb4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7UIu-00000003pSY-3kUg;
	Thu, 16 May 2024 06:09:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7UIq-00000003pRu-2zfx
	for barebox@lists.infradead.org;
	Thu, 16 May 2024 06:09:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7UIp-0006XG-C1; Thu, 16 May 2024 08:09:19 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7UIo-001fIa-W2; Thu, 16 May 2024 08:09:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7UIo-00BSCx-2z;
	Thu, 16 May 2024 08:09:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240515110156.1920361-1-s.hauer@pengutronix.de>
References: <20240515110156.1920361-1-s.hauer@pengutronix.de>
Message-Id: <171583975892.2730016.8898409374784288953.b4-ty@pengutronix.de>
Date: Thu, 16 May 2024 08:09:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_230920_788413_3C4C8211 
X-CRM114-Status: GOOD (  12.18  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] watchdog: imxwd: Do not suspend in lpm on i.MX27
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 May 2024 13:01:56 +0200, Sascha Hauer wrote:
> The i.MX watchdog has two different configurable behaviours for low
> power modes.  The watchdog can either be suspended during low power
> modes or kept running.
> The useful behaviour is normally to disable it during low power modes to
> be able to suspend the system without having the watchdog resetting the
> system. This setting was introduced in the Kernel back in 2014 [1] and
> in barebox back in 2021 [2].
> On i.MX27 however this setting has the effect that the watchdog is
> suspended during normal cpu_do_idle(), so on an idle system it takes
> very long time until the watchdog triggers. This renders this setting
> useless, so disable it on i.MX27. This seems to be fixed on SoCs newer
> than i.MX35.
> 
> [...]

Applied, thanks!

[1/1] watchdog: imxwd: Do not suspend in lpm on i.MX27
      https://git.pengutronix.de/cgit/barebox/commit/?id=d5d01f156ee2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



