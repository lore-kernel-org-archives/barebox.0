Delivery-date: Tue, 04 Nov 2025 11:12:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGE26-00FBHI-0l
	for lore@lore.pengutronix.de;
	Tue, 04 Nov 2025 11:12:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGE25-0003Uy-Ny
	for lore@pengutronix.de; Tue, 04 Nov 2025 11:12:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+cB+ZWTdpsYr5ULIp5tfTVyoYPGzdQCHPmmchiqPeR0=; b=EORm0vu8ToH6/ZoSKIMdpmOXWy
	uJZ12S4Fk0dUm0c2rw8jzzt5yLDBO5SZIG+ht6Nmmd4gkXdudrJlG8IxgLhxg0r2E0v21fBNrbWUl
	m7qWoWpUJvJft0FCiULlW35MuBPbahc0ct2FZAA70impAebGN8/Kw9vHVng1+ZjLVxTVgEV1HTCxE
	1MImQ5/ezGosmBD80hAZb2M1tmJWhcX7QQvptBIKje4aeQoy3AkDSCwgVzzsagCjDxcfKLrmJZywe
	ZUHiR0U8+3W4mIqg5mVjQSaXvTJMmx7SrzIYHUA65/NUk2PscAhIf2hcmwr76sNlXFl6EZPLD7CJs
	fHZZtcxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGE1f-0000000BakE-1r6f;
	Tue, 04 Nov 2025 10:12:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGE1c-0000000BajZ-1fSl
	for barebox@lists.infradead.org;
	Tue, 04 Nov 2025 10:12:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGE1Z-0003Oi-IX; Tue, 04 Nov 2025 11:12:25 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGE1Z-0070p8-1G;
	Tue, 04 Nov 2025 11:12:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGE1Z-00000009QFG-3FK8;
	Tue, 04 Nov 2025 11:12:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251104095903.2966504-1-a.fatoum@pengutronix.de>
References: <20251104095903.2966504-1-a.fatoum@pengutronix.de>
Message-Id: <176225114532.2245819.10207636905726533170.b4-ty@pengutronix.de>
Date: Tue, 04 Nov 2025 11:12:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_021228_437577_D445664B 
X-CRM114-Status: UNSURE (   7.92  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! usb: dwc3: port Linux i.MX8MP glue driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 04 Nov 2025 10:59:02 +0100, Ahmad Fatoum wrote:
> usb: dwc3: fix sandbox allyesconfig build
> 
> BIT() is not defined transitively on sandbox and we use no cleanup
> macros in the driver, so switch out the headers.
> 
> 

Applied, thanks!

[1/1] fixup! usb: dwc3: port Linux i.MX8MP glue driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=30c616ac8a78 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



