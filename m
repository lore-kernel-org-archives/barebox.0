Delivery-date: Tue, 13 Feb 2024 10:21:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZoyL-004cUk-2d
	for lore@lore.pengutronix.de;
	Tue, 13 Feb 2024 10:21:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZoyL-0004rX-8Q
	for lore@pengutronix.de; Tue, 13 Feb 2024 10:21:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Afy9ahE90YdqFcgPHW5rsg06wD3iwykwQOYdDzeHb6Y=; b=gNUmcMX/cdafsoYRG9S8AcVKzm
	e9x340CZmZ4sd5pjli6JwWGNFtYGshPAleRfrItAOTyqC2gI6YXQl3NofivsJ37hF1dyGSnkR7xxk
	sZOh26zFjRNazXc3pKPI5aYrld81hpT6FD6OR+xVfy5eE6W2We+/sf5K4Xr4rBIFdNVS5jvs5BRMK
	+ru82EY98nau2MhZn6UsgqWveSHDgdLd/JfdGy0JZBdeko7DnpaUxgNpJ8ApzHDFZPQzEOJDX8FVj
	zQDalE5Cf2cbzXf2qrt9LENEePxsrd+rRrR99XBBlbLWRf3El9zj3xKEole+J2E1zZGmkVutUGGfh
	WPMALYcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZoxv-00000008aAr-04fO;
	Tue, 13 Feb 2024 09:20:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZoxr-00000008a9k-2B0g
	for barebox@lists.infradead.org;
	Tue, 13 Feb 2024 09:20:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZoxq-0004lD-CB; Tue, 13 Feb 2024 10:20:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZoxp-000SBG-NB; Tue, 13 Feb 2024 10:20:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZoxp-00Akw9-28;
	Tue, 13 Feb 2024 10:20:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Joacim Zetterling <joacim.zetterling@westermo.com>
In-Reply-To: <20240212154617.2260448-1-a.fatoum@pengutronix.de>
References: <20240212154617.2260448-1-a.fatoum@pengutronix.de>
Message-Id: <170781602965.2563468.3673266263098712151.b4-ty@pengutronix.de>
Date: Tue, 13 Feb 2024 10:20:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_012031_594676_29886D6C 
X-CRM114-Status: UNSURE (   9.91  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: at91: sama5d27-som1: autoping watchdog during
 barebox runtime
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 12 Feb 2024 16:46:17 +0100, Ahmad Fatoum wrote:
> The BootROM arms the watchdog with the maximum timeout of 16 seconds on
> boot. This is ample time to boot into Linux userspace, so so far we
> didn't touch the watchdog for the SAMA5D2 in barebox and expected the
> user to disable the watchdog manually, e.g. via the `wd -x` command or
> by storing nv.autoboot=abort into the environment.
> 
> While this works, this is admittedly bad user experience, so let's just
> enable watchdog polling in barebox instead. That way, we still have
> watchdog supervision, but don't reset when dropping into the barebox
> shell.
> 
> [...]

Applied, thanks!

[1/1] ARM: at91: sama5d27-som1: autoping watchdog during barebox runtime
      https://git.pengutronix.de/cgit/barebox/commit/?id=b1fc601eda2b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



