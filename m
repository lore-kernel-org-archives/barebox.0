Delivery-date: Mon, 23 Feb 2026 12:07:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTn6-004o10-04
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 12:07:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTn6-0005Ws-Cg
	for lore@pengutronix.de; Mon, 23 Feb 2026 12:07:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mx9ITgkjlcxG+evXcvm4OsYNv/QkzHSprImcSFEw3Kk=; b=aG2njYEwP+F1MZJn7cz3oQdqq5
	NunAPjcbmJqYENUkMPDZfZkMNzDz+voJ7N10SaYbmO8KspEJFZayTT0exlseMDSwI2iMxLx89P9AF
	6NMzxDslltwHmaEOH/lQzp+i+S3Snud+lQqpiHZknz/zuRquNnIGcSL7j9+T5l5I8AgaE7J953uKw
	iMMx3+Tz2frFEVWrYp7Q1JXF6N7N5ShgWA5V0Dsp0NIjZcdpbourCADPfOhK5y/sKYDiPAnKSeKX/
	Og+1aOOFNL+60Ywl6jJw+j0wioVm5QdzJB2uP7B6XxH+HFVoECGul9xgJCd6tZRoxkceAQq4oIkP2
	YMDv2gtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTmk-000000007rn-2H8w;
	Mon, 23 Feb 2026 11:07:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTmi-000000007rH-1OxY
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 11:07:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTmg-0005SO-Kk; Mon, 23 Feb 2026 12:07:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTme-002DVq-28;
	Mon, 23 Feb 2026 12:07:26 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTmf-00000000vEC-3z0L;
	Mon, 23 Feb 2026 12:07:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: 9l@9lo.re
In-Reply-To: <20260211100252.399635-1-a.fatoum@pengutronix.de>
References: <20260211100252.399635-1-a.fatoum@pengutronix.de>
Message-Id: <177184484594.219871.16883251127028404943.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 12:07:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_030728_383325_ED251797 
X-CRM114-Status: UNSURE (   9.07  )
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
Subject: Re: [PATCH] boot: guard net in global.boot.default behind
 CONFIG_NET
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 11 Feb 2026 11:02:51 +0100, Ahmad Fatoum wrote:
> If CONFIG_NET is disabled, there is little reason to have net in
> global.boot.default, so omit it in that case.
> 
> CONFIG_NET on its own is not sufficient for net to work by default (ifup
> and TFTP are needed in the default case), but we don't want to reflect
> all the script dependencies in Kconfig.
> 
> [...]

Applied, thanks!

[1/1] boot: guard net in global.boot.default behind CONFIG_NET
      https://git.pengutronix.de/cgit/barebox/commit/?id=c0a07127f29e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



