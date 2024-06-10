Delivery-date: Mon, 10 Jun 2024 14:42:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGeMG-003h5R-28
	for lore@lore.pengutronix.de;
	Mon, 10 Jun 2024 14:42:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGeMG-00012V-5B
	for lore@pengutronix.de; Mon, 10 Jun 2024 14:42:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UW8mdRkeBkTq9yUBwnAlbRCDV4FynyPqdmD5BGjduFk=; b=ImV+1dee/CD1/OdqqcqWmldTqC
	RSdcUZWi9eb7lI8eCXHztNkIp23uGtN/I1xE1RNMnRlPBNwKqr/ZAG0aT1pZzRdmjF4Ekq3fGRydK
	yWLjncyCLobqt6U3mv2JqLELbmDi33g0HXVskVOYjVkfyqS085MhXxWw9iIWT+GzUwDY38Ru+CW9x
	pjz7ygAelm20+WawGA4YICzaIbK3JnT6L/HM0K6X0XMNcBFglmqEd1UFUOM30LCKihijdYSJSbrM+
	z0XvRpexEZJ+VgBfCPdv/cX9M+xdBC8YEzKAOQAgBCXaBXYSsxGA0m5W8oxnQ9XTnl73AFOZjcXct
	sZlMA3NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGeLn-000000052P3-0Y1E;
	Mon, 10 Jun 2024 12:42:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGeLg-000000052Nz-2GNN
	for barebox@lists.infradead.org;
	Mon, 10 Jun 2024 12:42:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGeLf-0000sy-2c; Mon, 10 Jun 2024 14:42:07 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGeLe-001J6k-M6; Mon, 10 Jun 2024 14:42:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGeLe-007GFO-1x;
	Mon, 10 Jun 2024 14:42:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andreas Helmcke <ahelmcke@ela-soft.com>
In-Reply-To: <20240610123854.1626248-1-s.hauer@pengutronix.de>
References: <20240610123854.1626248-1-s.hauer@pengutronix.de>
Message-Id: <171802332660.1730377.11986271235953000936.b4-ty@pengutronix.de>
Date: Mon, 10 Jun 2024 14:42:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_054208_926601_FC7295EB 
X-CRM114-Status: UNSURE (   5.63  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] nandtest: fix wrong initialization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 10 Jun 2024 14:38:54 +0200, Sascha Hauer wrote:
> ecc_stats is not a pointer, so sizeof(*ecc_stats) is wrong. Use
> sizeof(ecc_stats) to avoid showing invalid ecc values.
> 
> 

Applied, thanks!

[1/1] nandtest: fix wrong initialization
      https://git.pengutronix.de/cgit/barebox/commit/?id=6bf5bc6ac10c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



