Delivery-date: Fri, 13 Mar 2026 15:20:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13NO-000EYx-1s
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 15:20:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13NO-00035e-24
	for lore@pengutronix.de; Fri, 13 Mar 2026 15:20:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+90+2yd4pkGau6zDI0PQgj2QRvLLDQd7jbpieqnrIBo=; b=fltApipkX9Ck4LhtSSKSkjYB2T
	A2KjvSqOhgXkBsSyL8uCUaMhGFuPmP7I7/DmO2NJ9Zax4yDmlr6tjqcybUeKjDUXMIsx1a4wXRFfw
	6v79hgdOgsN+Y7Sy1LMyHrDq4Ah1GVJlifGFMmNT2DSxU3efz21IWsIoCdOLgE1rACjRJYyE2fwmE
	7qMnyeDqoeoCIIafwFGSLerIJdewvQFd6q0Y7B9R4DKr3ETuUDFnz6Y35lpCHH9aESGL0IqjGf+T0
	Wgl6rvdamTF6KMTq3YSRqREsYoq71DO/isL387lqrb0dYtZ7f45+yc80JNSAGe4anVPYTea0O2CjR
	a4tpL00A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13N1-00000000MaK-2yxr;
	Fri, 13 Mar 2026 14:20:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13Mz-00000000MZQ-16Jp
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 14:20:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w13Mw-0002we-AE; Fri, 13 Mar 2026 15:20:02 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w13Mw-0005uu-0Q;
	Fri, 13 Mar 2026 15:20:02 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w13Mw-00000000zXB-0HVR;
	Fri, 13 Mar 2026 15:20:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20260311100347.3761707-1-s.hauer@pengutronix.de>
References: <20260311100347.3761707-1-s.hauer@pengutronix.de>
Message-Id: <177341160206.236520.13101438669326972011.b4-ty@pengutronix.de>
Date: Fri, 13 Mar 2026 15:20:02 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_072005_327680_0543F002 
X-CRM114-Status: UNSURE (   6.52  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts: rk-usb-loader: push header first
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 11 Mar 2026 11:03:47 +0100, Sascha Hauer wrote:
> Board that have secure boot enabled need the image header to be able
> to verify the signature. Boards with secure boot disabled still work
> with this patch as tested on a RK3588 board.
> 
> 

Applied, thanks!

[1/1] scripts: rk-usb-loader: push header first
      https://git.pengutronix.de/cgit/barebox/commit/?id=4cc52dda164b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



