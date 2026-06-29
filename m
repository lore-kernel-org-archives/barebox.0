Delivery-date: Mon, 29 Jun 2026 10:50:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we7hP-00B3nG-0y
	for lore@lore.pengutronix.de;
	Mon, 29 Jun 2026 10:50:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we7hO-0006OG-N5
	for lore@pengutronix.de; Mon, 29 Jun 2026 10:50:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uAUUrus7mxqcU6aIQBCkBNbcnxCpLbjW6F/XZamF9q0=; b=z5rVyGlrg8uC73GjsJcGQiJMlZ
	BNArZLxaL5xnoHxRDLRwfRJ0eZ2EiCLMSa1L3sKj1iERVveMYtlaXqCigX8VKqic9XetU5HwyGB0L
	zRXFsQJZAFQGUEbK1WBExQuNO3v24HCV2Ae4IiN+WurofeqnL90m03vnxv5U/UVFCJLquU2hpXzzr
	OJKigh+IslqO3iMNVktv6ctu6CeXzYkCapq/SjMhHeUc3KHJGNzoMpwpdXoWQ6kBgZFC5p0bxsvg+
	kN9vi7HX2evfAEg3Fjf5QcJJS6CondbO7Ku215IJxmw7Xb30tABqTCHH/lOY7bxbI2p/iyiO39v6S
	nmqVkP9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we7gO-0000000E2MG-0Nv5;
	Mon, 29 Jun 2026 08:49:36 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we7gL-0000000E2LB-08YU
	for barebox@lists.infradead.org;
	Mon, 29 Jun 2026 08:49:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7583220045F;
	Mon, 29 Jun 2026 10:49:30 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1we7gI-005DLS-1H;
	Mon, 29 Jun 2026 10:49:30 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1we7gI-00000000ixR-1QRo;
	Mon, 29 Jun 2026 10:49:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260625173012.701765-1-a.fatoum@pengutronix.de>
References: <20260625173012.701765-1-a.fatoum@pengutronix.de>
Message-Id: <178272297033.172801.4631472976542062660.b4-ty@pengutronix.de>
Date: Mon, 29 Jun 2026 10:49:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_014933_233525_E61BCBE8 
X-CRM114-Status: UNSURE (   5.33  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: loadx: remove non-existent options from
 usage string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 25 Jun 2026 19:30:04 +0200, Ahmad Fatoum wrote:
> There is no -p or -c option, so drop them from the usage string as well
> as from the getopt argument if they fall through into the error
> (default) case.
> 
> 

Applied, thanks!

[1/1] commands: loadx: remove non-existent options from usage string
      https://git.pengutronix.de/cgit/barebox/commit/?id=f05a0334c3dd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



