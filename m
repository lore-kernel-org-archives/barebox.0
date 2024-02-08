Delivery-date: Thu, 08 Feb 2024 08:11:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXyZP-008G4T-2F
	for lore@lore.pengutronix.de;
	Thu, 08 Feb 2024 08:11:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXyZQ-0006Gf-33
	for lore@pengutronix.de; Thu, 08 Feb 2024 08:11:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YkDv8Rn9sMqNKVaRtfypr9KBlXI+UFg35HzQ8LExsKo=; b=e3U+ORfYAYdoiFlhgYiAfQ94cj
	U0bOrtyoMn7YpNieguNbGCijCOqQOWH9AgwxgFaSTwjgAyYkMLtOefdWA6afBGNLZrVEetkAQdFvg
	P3NrQhb0wBu72DD6itqxNzg52IREega28HMj+79tUTsd8NseoMnlKw9MX3wmBy0aloM5ax1YAFrZI
	QPbknBPYU2gg7DyTgdb0/LikQPrULGFYoBbYcgk+4+uS61QXBARmc0mj2NwI6eOsGrKh9lzbnV6AC
	ZX82cJrenOCc2WGITXPsraoiVYiraq3M6VvZ0WxPowlX/dDPfi782Q/veJsCUSXUTUZWdFnPGrlfW
	MEvm2dGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXyYg-0000000CsW1-3Iit;
	Thu, 08 Feb 2024 07:10:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXyYc-0000000CsVJ-1UH3
	for barebox@lists.infradead.org;
	Thu, 08 Feb 2024 07:10:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rXyYX-0006BD-5t; Thu, 08 Feb 2024 08:10:45 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rXyYW-005AcM-Pi; Thu, 08 Feb 2024 08:10:44 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rXyYW-001TBg-2N;
	Thu, 08 Feb 2024 08:10:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240205115226.2432028-1-s.hauer@pengutronix.de>
References: <20240205115226.2432028-1-s.hauer@pengutronix.de>
Message-Id: <170737624473.350501.15338275363006292758.b4-ty@pengutronix.de>
Date: Thu, 08 Feb 2024 08:10:44 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_231050_426624_2B20AAF6 
X-CRM114-Status: UNSURE (   8.31  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] watchdog: restart handler: hang when watchdog cannot
 restart the machine
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 05 Feb 2024 12:52:26 +0100, Sascha Hauer wrote:
> The __builtin_unreachable() in watchdog_restart_handle() is bogus,
> because when the watchdog doesn't work we will run into
> __builtin_unreachable() and behaviour is undefined. Drop the call
> to __builtin_unreachable(), print a big fat warning and hang() the
> machine which makes sure we don't return from watchdog_restart_handle().
> 
> 
> [...]

Applied, thanks!

[1/1] watchdog: restart handler: hang when watchdog cannot restart the machine
      https://git.pengutronix.de/cgit/barebox/commit/?id=ddf0d5cf35aa (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



