Delivery-date: Mon, 26 Aug 2024 13:09:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1siXbS-00DZ66-2D
	for lore@lore.pengutronix.de;
	Mon, 26 Aug 2024 13:09:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1siXbS-0005Bz-3e
	for lore@pengutronix.de; Mon, 26 Aug 2024 13:09:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K/e9uy/E3Y2KCMIyd4aqZsBRaLRBKX+29gszF9PNc+8=; b=Jqp5RfaoKJxmIhjp1LTOYNlyJd
	67ivp4BSXnFqZaQBXQjFIhRpnHRnhUgtGltzwYTM3MrozQADiIeqoHaVz8RFuYlkIR78hJB+5B7HB
	5vY7+sZnf+VncUJRkYkJ4dBt9vkk0h1A7O6GIn84xVveCi/KXuIOLzvWyXKVHPxLNmJh8VBPskAy9
	JfD82laGDDFZknGKBG5STmzwNStYwaU7iTIjTl85UUGKG7CuN6KMtx3qr+FAIMbPD3JH7LAUJNYkq
	XgUtaOlRBIly0qQbjZp7QJNDtphKxpCuQTkxHwb8f7mCXrd9fJMXLEmw88ICqxI57cNHyu7KHdkAU
	0DkE+0bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siXau-000000075IE-0fXK;
	Mon, 26 Aug 2024 11:09:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siXaW-000000075E5-1VKn
	for barebox@lists.infradead.org;
	Mon, 26 Aug 2024 11:08:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1siXaU-0004xy-RB; Mon, 26 Aug 2024 13:08:42 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1siXaU-003As5-EB; Mon, 26 Aug 2024 13:08:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1siXaU-004bAq-1F;
	Mon, 26 Aug 2024 13:08:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240824200250.2160073-1-a.fatoum@pengutronix.de>
References: <20240824200250.2160073-1-a.fatoum@pengutronix.de>
Message-Id: <172467052238.1096191.15534773704505488271.b4-ty@pengutronix.de>
Date: Mon, 26 Aug 2024 13:08:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_040844_435202_99A1B7AE 
X-CRM114-Status: UNSURE (   8.53  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] input: don't report depressed keys that were
 never pressed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 24 Aug 2024 22:02:50 +0200, Ahmad Fatoum wrote:
> The USB keyboard driver remove callback sends a depress event for all
> keys. This is relayed to all input notifiers and can confuse them by
> reporting keys that were never pressed in the first place.
> 
> Instead of expecting input notifiers to keep track themselves of whether
> keys have been pressed, have the core only report depress event for
> previously pressed keys.
> 
> [...]

Applied, thanks!

[1/1] input: don't report depressed keys that were never pressed
      https://git.pengutronix.de/cgit/barebox/commit/?id=bad0d48fa6ab (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



