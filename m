Delivery-date: Thu, 13 Jun 2024 08:42:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHeA5-005EIG-2Z
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 08:42:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHeA5-0002ia-86
	for lore@pengutronix.de; Thu, 13 Jun 2024 08:42:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aXKoXwuj6vZZ44agzaQkTQlBmYvI7F4Q2GtVDR+/Ou8=; b=N1X+S8vrv2FpsXbK4oygS4zGuI
	SkFTEwgSsHD4SGa3+oXwkjWvFZCEWdUEzHKPQlGeZQlS8HovjqqpRarp/PREzn9RuStn8jLGiv3S2
	7pTJGjXUUGXdlEoILzxMsDnNWVIaUVgaj/3c5REO4QBBp6KGTDipKHaSjR07A+q/QTR9IrJ/kd82x
	w+tLnZTQ7YUp7xsnfvXUYl9b8dulrxxylrvdlTU8leZvXPzDtXONzggsMIW9UX5GNtH2XYzsMuL7U
	SwfchYQkd439Dy/XU+VC3eS5hfBIgM1mS6S7e0RrRC7lYss1gkX2DJgnoLjQRbb+quxxsIxhfoGmd
	24UqRJGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHe9c-0000000FLlB-2WIE;
	Thu, 13 Jun 2024 06:41:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHe9Y-0000000FLk1-0PRx
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 06:41:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHe9W-0002ci-UU; Thu, 13 Jun 2024 08:41:42 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHe9W-001xv7-Hv; Thu, 13 Jun 2024 08:41:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHe9W-00BBL2-1b;
	Thu, 13 Jun 2024 08:41:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240611051237.4126918-1-s.hauer@pengutronix.de>
References: <20240611051237.4126918-1-s.hauer@pengutronix.de>
Message-Id: <171826090249.2665167.13452229432141525633.b4-ty@pengutronix.de>
Date: Thu, 13 Jun 2024 08:41:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_234144_249185_D6212F89 
X-CRM114-Status: UNSURE (   8.87  )
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
Subject: Re: [PATCH v2 0/4] Introduce class devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 11 Jun 2024 07:12:33 +0200, Sascha Hauer wrote:
> Several subsystems already have a struct device embedded in their
> subsystems specific structs. Allow to register these as class devices.
> This way we collect devices of the same type on a list and can show
> informations about these in a generic way.
> 
> Sascha Hauer (4):
>   net: use for_each_netdev()
>   base: add class device support
>   net: register eth class
>   watchdog: register watchdog class
> 
> [...]

Applied, thanks!

[1/4] net: use for_each_netdev()
      https://git.pengutronix.de/cgit/barebox/commit/?id=063f92edfa7a (link may not be stable)
[2/4] base: add class device support
      https://git.pengutronix.de/cgit/barebox/commit/?id=5d1215ff694a (link may not be stable)
[3/4] net: register eth class
      https://git.pengutronix.de/cgit/barebox/commit/?id=045fd2a498cc (link may not be stable)
[4/4] watchdog: register watchdog class
      https://git.pengutronix.de/cgit/barebox/commit/?id=aa90aa4a0588 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



