Delivery-date: Tue, 30 Jul 2024 09:54:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYhgL-004Oak-10
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 09:54:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYhgK-0001wN-OE
	for lore@pengutronix.de; Tue, 30 Jul 2024 09:54:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zHF9/WuXwnjoGJxNUb09kTi12UIMpsMWyVdZsu8z3mM=; b=u0tGaGbzKOGqUOVMJrtevQeu5N
	fGK+DjVI8LxnfTO1MBzwXtvKqDAAOfFzWQpcJ0UiExDY3rh+ja2nZVmbJ0TRUS2Q8n3ui7z9BGNGL
	CX6T/h2TQjIpi82Rj8NeLsEHsXvuC+xYFLJHrG1YedrMXn7R0w3tO+u0xszlmauFk/AklPVmTUP4c
	2vFw4JfL7zhCpO++Tck+uNKHcWcF4CG+EOcikWwmqCE5aBTRyF+NR1JFVZp3fM4rrZmqjMBRbYCPl
	oK774+PXzYgbFi1lpCEqKNEERfZbN9TvDKkJIYnqtsLeODcSu8/1uEjmT90m0bWdo8EBP+ivIVO9K
	zqwyHA4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhfr-0000000E7Ru-0T64;
	Tue, 30 Jul 2024 07:53:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhfo-0000000E7RF-0lsT
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 07:53:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYhfm-0001rl-Gk; Tue, 30 Jul 2024 09:53:30 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYhfm-003EZm-3e; Tue, 30 Jul 2024 09:53:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYhfm-004Rk8-08;
	Tue, 30 Jul 2024 09:53:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: has@pengutronix.de
In-Reply-To: <20240729143347.1566660-1-a.fatoum@pengutronix.de>
References: <20240729143347.1566660-1-a.fatoum@pengutronix.de>
Message-Id: <172232601003.1059939.13626611540955397275.b4-ty@pengutronix.de>
Date: Tue, 30 Jul 2024 09:53:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_005332_254003_F9F8550C 
X-CRM114-Status: UNSURE (   8.97  )
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
Subject: Re: (subset) [PATCH 1/2] ARM: i.MX8MP: tqma8mpxl: fix eMMC barebox
 update handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 29 Jul 2024 16:33:46 +0200, Ahmad Fatoum wrote:
> While the eMMC is indeed uSDHC3, the board's device tree aliases shuffle
> around the order, so the eMMC is at mmc0 and the SD is at mmc1.
> 
> We thus need to follow suit in the board code as to register the correct
> device with the eMMC barebox update handler.
> 
> 
> [...]

Applied, thanks!

[1/2] ARM: i.MX8MP: tqma8mpxl: fix eMMC barebox update handler
      https://git.pengutronix.de/cgit/barebox/commit/?id=f068a5dbe9f3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



