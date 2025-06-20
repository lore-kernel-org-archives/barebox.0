Delivery-date: Fri, 20 Jun 2025 14:04:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSaUG-009GvB-2m
	for lore@lore.pengutronix.de;
	Fri, 20 Jun 2025 14:04:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSaUG-0002nP-8H
	for lore@pengutronix.de; Fri, 20 Jun 2025 14:04:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4xFZ5PjKytnxkVQ/QHsYj5yFLU3vCndL+b5kTBQeRHc=; b=e8HMGDT53TmkUsNR/gOw0GgZEZ
	6zx4Fjw4sq6/lQSL+kf55WPHCIQDn8VGJwIwcd1QpRkNcTquhGKfrELu8fpEOHHRkOtZ4HZvr8Gia
	j65urLa00ZqffjHgEHw3GwRPGjTx/kdrD2UoomYXZKqaqq6iRUTYQjhKPDJd/x02+Y7IeL+ZZXS5x
	weVyqLTyleP7TVrqO74Zuu7UtOjhs5WSNhOnEM0Z0BiBvCA+QrDh/M9LOHAdwrNEcy/Tg0mWGeFEz
	545kcSCUIFDI+4BbeS2pWZR0Ls0iAFj9MvfIImvSZnMLHiRnvYQ+vHolZGRbJIfu1BouteL8RJECl
	iBJfC5pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSaTl-0000000FWok-1XZf;
	Fri, 20 Jun 2025 12:04:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSaDf-0000000FUyP-19b1
	for barebox@lists.infradead.org;
	Fri, 20 Jun 2025 11:47:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSaDe-0006qY-62; Fri, 20 Jun 2025 13:47:42 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSaDd-004SEh-3C;
	Fri, 20 Jun 2025 13:47:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSaDd-00D0tA-30;
	Fri, 20 Jun 2025 13:47:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250620074157.19047-1-eagle.alexander923@gmail.com>
References: <20250620074157.19047-1-eagle.alexander923@gmail.com>
Message-Id: <175042006192.3101615.11245809571637869554.b4-ty@pengutronix.de>
Date: Fri, 20 Jun 2025 13:47:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_044743_319578_07A7C8FE 
X-CRM114-Status: UNSURE (   7.08  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: boards: sama5d4 xplained: Use proper header for
 image start
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 20 Jun 2025 10:41:57 +0300, Alexander Shiyan wrote:
> Switch to using the SAMA5D4-specific entry function and barebox header
> instead of the generic ARM entry points. This aligns the board with
> standard AT91 bootstrap practices.
> The board is already marked BROKEN, so this refactoring won't cause
> regressions but improves code consistency with other AT91 boards.
> 
> 
> [...]

Applied, thanks!

[1/1] ARM: boards: sama5d4 xplained: Use proper header for image start
      https://git.pengutronix.de/cgit/barebox/commit/?id=09a41f8d2ac8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



