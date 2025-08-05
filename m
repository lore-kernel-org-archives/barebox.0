Delivery-date: Tue, 05 Aug 2025 09:41:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujCIF-007Dbw-28
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 09:41:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujCIF-0006F3-5B
	for lore@pengutronix.de; Tue, 05 Aug 2025 09:41:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=th+TkkBxz39RHuiQ9aLMoN2zEM6vCyMHfLVOQKN4QEQ=; b=T8abqFoKPpPRunw/iz5ycf4Qok
	F8VQUAW7Ose9oizDaKJCG42Ma+wouETeJ8+DB7RNHh3v/WTN6HskAub2RLomXfWHXrSPnsy1p0NX9
	1r0H1eDBPcKQF+eXXjFtPnYTF7FEm+gL85qkioHQZYrArhbpwiXSEWkcmtPQ1R8VrAgQhblkCPMOj
	IEbjemuoJOPnUQiegeQwAr19/qLPRLNYCqzewPVYcbp1lQUTk8n4CBMi7C4MVa0znZ8AdhJr905/u
	Ol+0WvsB4T+91YgsOGsui2Ar4lVcg9vi72ZW77C3kh43twOoIPLrTmdsnlfVYUqu8mWBSbzxnwQ0R
	1q6cL5mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujCHp-0000000C2oS-1QUy;
	Tue, 05 Aug 2025 07:40:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujCHm-0000000C2o5-3FtM
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 07:40:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujCHl-00069s-Ls; Tue, 05 Aug 2025 09:40:37 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujCHl-00C0Kk-1Z;
	Tue, 05 Aug 2025 09:40:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujCHl-00Ed2J-1M;
	Tue, 05 Aug 2025 09:40:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: barebox@lists.infradead.org
In-Reply-To: <20250729203659.1858575-3-ivo.ivanov.ivanov1@gmail.com>
References: <20250729203659.1858575-1-ivo.ivanov.ivanov1@gmail.com>
 <20250729203659.1858575-3-ivo.ivanov.ivanov1@gmail.com>
Message-Id: <175437963741.3486632.14990531490726860656.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 09:40:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_004038_881819_5D8146EE 
X-CRM114-Status: UNSURE (   9.35  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH v1 2/4] clocksource: arm_architected_timer:
 support clock-frequency
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 29 Jul 2025 23:36:57 +0300, Ivaylo Ivanov wrote:
> Some platforms, like the Samsung Galaxy S8, leave CNTFRQ_EL0 unset in
> the previous stage bootloader. Therefore reading it causes a hang and
> the boot proccess is halted.
> 
> Since on such retail devices there is no way to set it without replacing
> the entire boot chain, allow setting a value from clock-frequency
> whenever it's passed.
> 
> [...]

Applied, thanks!

[2/4] clocksource: arm_architected_timer: support clock-frequency
      https://git.pengutronix.de/cgit/barebox/commit/?id=fe12afd07328 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



