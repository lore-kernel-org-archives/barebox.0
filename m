Delivery-date: Thu, 01 Aug 2024 13:34:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZU4h-0057Cw-14
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 13:34:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZU4g-0004Lk-Nf
	for lore@pengutronix.de; Thu, 01 Aug 2024 13:34:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cDUJ8gbGeJKnJwkKmpzgaIeilQgCwuzs0mccMjakBLs=; b=zZCplqr9PrqHXwHWPK7aAScJnF
	BDTEiSwYzNwB3yxO3g6PPArvOfrGNHoGJ2PPTEHY2/maDvGTCcDOSVVGmT6VTCIQGRjJRkwVeCMLM
	Mtse0D6nCOmlG1VBRR72sg2DaLeqDKQOjhIZaKOSjnA+Mq+wNbz/jGZ1PH9B536kHBclqyfKUDv+a
	QPSzoAYLGySjcNtX9AJkd+zwKjePvAl8H+HWOx8FXx/5IkoyWFYyh9azVzdvk7PMaief/9KfGmRtB
	Dl7Rbp22cvBonK33keMxFAhT6IYZT4V9RyFBjZbO2IzHBsaf3+rY4OGMbxgXTIWhj9XTQqJawJ9ni
	aiWMaNWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZU4E-00000004vmo-2U4K;
	Thu, 01 Aug 2024 11:33:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZU4B-00000004vls-0L3H
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 11:33:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZU49-0004HZ-Gl; Thu, 01 Aug 2024 13:33:53 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZU49-003kyL-3n; Thu, 01 Aug 2024 13:33:53 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZU49-00Fdua-09;
	Thu, 01 Aug 2024 13:33:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240731071416.2558182-1-a.fatoum@pengutronix.de>
References: <20240731071416.2558182-1-a.fatoum@pengutronix.de>
Message-Id: <172251203304.3728291.49161251164615204.b4-ty@pengutronix.de>
Date: Thu, 01 Aug 2024 13:33:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_043355_153927_9AEC585C 
X-CRM114-Status: UNSURE (   6.65  )
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
Subject: Re: [PATCH 1/5] console: provide veprintf and eputchar helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 31 Jul 2024 09:14:12 +0200, Ahmad Fatoum wrote:
> For easy printing to stderr, provide helpers that can be used instead of
> vprintf and eputchar, respectively. To make them generally usable, also
> provide stubs for PBL.
> 
> 

Applied, thanks!

[1/5] console: provide veprintf and eputchar helpers
      https://git.pengutronix.de/cgit/barebox/commit/?id=8c404f92aab1 (link may not be stable)
[2/5] KASan: report: print shadow memory state to stderr
      https://git.pengutronix.de/cgit/barebox/commit/?id=c161590a335e (link may not be stable)
[3/5] ARM: print exception reports to stderr
      https://git.pengutronix.de/cgit/barebox/commit/?id=ef90a8380113 (link may not be stable)
[4/5] common: print panic to stderr
      https://git.pengutronix.de/cgit/barebox/commit/?id=3cf509ab1e9f (link may not be stable)
[5/5] RISC-V: stacktrace: output stack traces to standard error
      https://git.pengutronix.de/cgit/barebox/commit/?id=3d58b9f44f1a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



