Delivery-date: Mon, 25 Nov 2024 11:28:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFWKs-000AGQ-08
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 11:28:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFWKs-0000rS-1H
	for lore@pengutronix.de; Mon, 25 Nov 2024 11:28:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x/tK+QgpVBRbiTBU+4pRHIXYQx7Xey08thet5yjGY5s=; b=Pf7c8UI1cV+kxDIjtw2VOavPwk
	za0sugCbblAlB4PKof1Gg1E2cpXg3jNqpqEfrFNdmiP4J+og+XSOCImXhX8VrUrujJIZEtxmELkYV
	8KIoX0wnKLp1DqAPohy0VgAD+1YSB6zwgWUhalypRktbSGzWPVJzdClKy5cZzHkQ4swhEwjYaQACf
	XGAuZl/Srx8flSuDfzGKXfjeeAM5yxbxFS2lccIdHLFj9zxFtnT5NM7by0b76+S97tMvd8OotMdHZ
	frsVAYh+2KKBv4OyGS3w9YySeulh9ivgXes5Tv9MavdxphjRDduAZfP9tRn3hbV6ARd+ccspuYLvp
	cyWClEhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFWKT-00000007lCk-10ZT;
	Mon, 25 Nov 2024 10:28:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFWKQ-00000007lBe-26mF
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 10:28:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFWKP-0000kh-4b; Mon, 25 Nov 2024 11:28:25 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFWKO-000401-0Z;
	Mon, 25 Nov 2024 11:28:24 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFWKO-000osl-2r;
	Mon, 25 Nov 2024 11:28:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241114142016.80497-1-a.fatoum@pengutronix.de>
References: <20241114142016.80497-1-a.fatoum@pengutronix.de>
Message-Id: <173253050488.195574.15232412600551408236.b4-ty@pengutronix.de>
Date: Mon, 25 Nov 2024 11:28:24 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_022826_547510_B482ACCF 
X-CRM114-Status: UNSURE (   9.60  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] bootchooser: export bootchooser_entry_boot function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 14 Nov 2024 15:20:16 +0100, Ahmad Fatoum wrote:
> When migrating a board to use bootchooser instead of a custom boot
> handler, it can be useful to add an intermediate boot target that
> decides whether to use bootchooser or the old boot target it replaces.
> 
> Make expressing this straight-forward in C by exporting
> bootchooser_entry_boot(), so it can be called from the intermediate boot
> target's struct bootentry::boot function.
> 
> [...]

Applied, thanks!

[1/1] bootchooser: export bootchooser_entry_boot function
      https://git.pengutronix.de/cgit/barebox/commit/?id=c52cb8fb5710 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



