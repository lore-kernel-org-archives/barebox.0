Delivery-date: Fri, 12 Sep 2025 09:45:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwyTA-0029fM-1b
	for lore@lore.pengutronix.de;
	Fri, 12 Sep 2025 09:45:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwyT9-0003kX-VA
	for lore@pengutronix.de; Fri, 12 Sep 2025 09:45:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QSovS4JaXJ/klHP6Hrh9DIyJ1K3/qJqfVaFLNGXjUIg=; b=SOdqK0cZqhrJMBAB75c3UM36Bm
	Xam6fhYUgI4s/Geh7MxX9QS5yAkPBta/6Q9pY0pYbkpoSh6P8TEGonsfyTytjIQIIM14qLqgPTkTl
	eYBjMAEntwM+i2MDw3DHj9K7Z7howlE4BiBiGe/7wM/bZEH2dzvW+WhiJQ546EUzXXzcZXqSrTqT+
	Fzlyb7jaGL82YcZ6iL++1QXJ1+LnWnwMZnXvznKLcbUyLj+XVFaq0HYtfddcwM+qSZjG8KP+CFTFY
	4T2LFOKf0x0Uyq7FzPa/ehzgx8mPThs8wOhwyPJVsnNDnu92I4XFnLh7SyHSjWXyBAnFLdG8xAMzB
	DMysrw6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwySl-00000007iZ9-2wJV;
	Fri, 12 Sep 2025 07:44:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwySj-00000007iYW-0VIx
	for barebox@lists.infradead.org;
	Fri, 12 Sep 2025 07:44:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uwySh-0003cL-Ki; Fri, 12 Sep 2025 09:44:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uwySh-000teZ-1T;
	Fri, 12 Sep 2025 09:44:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uwySh-00000007N9I-1frT;
	Fri, 12 Sep 2025 09:44:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250910061824.2765659-1-s.hauer@pengutronix.de>
References: <20250910061824.2765659-1-s.hauer@pengutronix.de>
Message-Id: <175766309139.1757271.2130532470252223992.b4-ty@pengutronix.de>
Date: Fri, 12 Sep 2025 09:44:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_004453_161970_A5824907 
X-CRM114-Status: UNSURE (   8.49  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ARM: k3: move am62x specific bits out of common
 file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 10 Sep 2025 08:18:23 +0200, Sascha Hauer wrote:
> k3_boot_is_emmc() is called from common.c, but is really am62x specific
> and only compiled in when am62x support is enabled. With this compiling
> for am62lx only fails with an undefined reference to k3_boot_is_emmc().
> 
> Move the am62x specific files out of common.c: Move the initcall to
> am62x.c and call omap_env_init() (renamed to k3_env_init()) from there
> after checking the prerequisites. Also rename k3_boot_is_emmc() to
> am62x_boot_is_emmc().
> 
> [...]

Applied, thanks!

[1/2] ARM: k3: move am62x specific bits out of common file
      https://git.pengutronix.de/cgit/barebox/commit/?id=e4c44ae04f15 (link may not be stable)
[2/2] ARM: k3: add FAT environment support
      https://git.pengutronix.de/cgit/barebox/commit/?id=3976e807b8d4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



