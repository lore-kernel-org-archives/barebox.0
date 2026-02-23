Delivery-date: Mon, 23 Feb 2026 11:14:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuSxG-004nKg-1w
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 11:14:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuSxG-0007CV-UZ
	for lore@pengutronix.de; Mon, 23 Feb 2026 11:14:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MNm7qLNZSCtGdeo1nCneyyTGkwLvRCryLUpfvy6V5Fc=; b=0s5Gn4gXiorwj54M252ZGsh41j
	lgWxssvmm45TnJr/AST6XoaiX7e5TpQGTWeQDywHDeoKSJeLIiGq/CZmebRBGSfGgExgMwCcuTQUd
	C93DyoaC3u9KhuzajKuuiXUN0XhMkfXmcOMwyDVAEbjVDrcGchwaYfBdci0C1CgjnKsYyIgm0A6DC
	EqWRYWYI6MB6UeOjbp2XK60c0Qdn71JAZVJsaIbXpQx8nA9s9r9uHVk1SoaaeR7D4vDKiEN/Os7bh
	iKOXT3R9hT0edv6plhx9jEm0Jmevt3wWr6i8sb7V7HAoi74wvQ5w70WNjDuF77seFw8pYAnLV9Y8Y
	i0I4ZA6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSwu-000000001RV-41S3;
	Mon, 23 Feb 2026 10:13:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSws-000000001R1-3Kpp
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 10:13:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuSwr-000785-56; Mon, 23 Feb 2026 11:13:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuSwp-002D9q-20;
	Mon, 23 Feb 2026 11:13:52 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuSwq-00000000r5R-3nFR;
	Mon, 23 Feb 2026 11:13:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
In-Reply-To: <20260216083907.3543595-1-a.fatoum@pengutronix.de>
References: <20260216083907.3543595-1-a.fatoum@pengutronix.de>
Message-Id: <177184163290.204054.15622347291929793207.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 11:13:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_021354_841553_7315EA91 
X-CRM114-Status: UNSURE (   6.81  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] kconfig: add merge_into_defconfig_named to set
 CONFIG_NAME
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 16 Feb 2026 09:39:01 +0100, Ahmad Fatoum wrote:
> Generated defconfigs that merge fragments into a base config inherit
> CONFIG_NAME from the base, which is wrong for testing: pytest uses
> CONFIG_NAME to locate the matching Labgrid environment YAML.
> 
> Add merge_into_defconfig_named, which appends the correct CONFIG_NAME
> to .config before running olddefconfig, and switch all callers over.
> 
> [...]

Applied, thanks!

[1/2] kconfig: add merge_into_defconfig_named to set CONFIG_NAME
      https://git.pengutronix.de/cgit/barebox/commit/?id=e09eacc81a60 (link may not be stable)
[2/2] test: report used Labgrid environment and build dir
      https://git.pengutronix.de/cgit/barebox/commit/?id=761024805134 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



