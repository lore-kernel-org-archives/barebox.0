Delivery-date: Tue, 06 Jan 2026 08:51:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1qv-001olg-0C
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 08:51:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1qu-0007KN-HO
	for lore@pengutronix.de; Tue, 06 Jan 2026 08:51:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RjqpBABEpOGJEt6Bd8POgu2NcBVJCCv9JAk9xyW/otU=; b=NsKoPKy66N0MxKWleGJkExePjy
	OsEQY3XOyJWBMoMqnKNA4oWXbjzWr1N2odFT39Et6FnusSvtkqlSMHv4kIlXrpBxBuo7vQHCOD36O
	hhqGRycqdNB7jC7IwzePkJVxJrOLsco+NG/eQPvJN4OM6QB+IS15h7/WqtVRJQhsPg5MTeVFx3EoC
	1P8v0BIerK5YHmnmuqsyPnH3eJ+sxi86QOvnw25mfcLvIP65o0dLLtNA/yKGmIpIpnqXaxGffC9Mg
	ECwmRmzCHivV1em4y2tdSyHHs5hQKqrRdMNSzq6yjPdLUX+XWd5Cqf2jZfJ1wM6yxQu+GVgycBHIR
	0QScovcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1qO-0000000CYsJ-0uiN;
	Tue, 06 Jan 2026 07:51:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1qJ-0000000CYoe-1siE
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 07:51:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1qH-00079t-9q; Tue, 06 Jan 2026 08:51:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1qH-009JL2-0M;
	Tue, 06 Jan 2026 08:51:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1qH-000000089aD-0C7n;
	Tue, 06 Jan 2026 08:51:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Fabian Pflug <f.pflug@pengutronix.de>
In-Reply-To: <20251219-v2025-11-0-topic-imx6-field-return-v4-0-57eec237ceaf@pengutronix.de>
References: <20251219-v2025-11-0-topic-imx6-field-return-v4-0-57eec237ceaf@pengutronix.de>
Message-Id: <176768586104.1943442.8857855085663240558.b4-ty@pengutronix.de>
Date: Tue, 06 Jan 2026 08:51:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_235103_680386_22604B14 
X-CRM114-Status: UNSURE (   8.17  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 0/5] i.mx: hab/ocotop: extend field return to i.MX6
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 19 Dec 2025 14:39:52 +0100, Fabian Pflug wrote:
> Field return handling was only implemented for the i.MX8* processors.
> Extend this with support for i.MX6 and extend the hab command with an
> option to burn the field return fuse in case the field return sticky bit
> might be unlocked.
> 
> 

Applied, thanks!

[1/5] i.MX: HAB: fix field return unlock fuse uid
      https://git.pengutronix.de/cgit/barebox/commit/?id=84515796f00d (link may not be stable)
[2/5] arm: mach-imx6: use kconfig for field return
      https://git.pengutronix.de/cgit/barebox/commit/?id=1616df6e2d58 (link may not be stable)
[3/5] nvmem: ocotp: extend support to query the sticky bit
      https://git.pengutronix.de/cgit/barebox/commit/?id=366c601fc0d2 (link may not be stable)
[4/5] i.MX: HAB: extend field_return support to imx6
      https://git.pengutronix.de/cgit/barebox/commit/?id=41d481bac23a (link may not be stable)
[5/5] commands: hab: extend by field_return fuse burn
      https://git.pengutronix.de/cgit/barebox/commit/?id=55887aa62412 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



