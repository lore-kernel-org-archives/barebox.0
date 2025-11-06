Delivery-date: Thu, 06 Nov 2025 08:44:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGufN-00FrlP-1B
	for lore@lore.pengutronix.de;
	Thu, 06 Nov 2025 08:44:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGufM-0001Hm-S2
	for lore@pengutronix.de; Thu, 06 Nov 2025 08:44:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b/QZeyF2omLDo+N+ZHq7Rp14T7Y1sZ9PKDzPZCWJ+q8=; b=x0dNuVH+C1ZDsXKBHR+be3bCIu
	s1GecjP3yM96rV76rXwwliVIw2KkQDYzrvYRFKXHme4lNj42xWsalnmgMvuhu/fb6CIeZIwtYgDTS
	EeMoZg9MeF4SORgFFgZJzDCTrZLWQDG9xLg+Y5KSqArlrRTRYnMBW/6M3azAzPaG8IXaaci/oDJOe
	W3om2t3au5nEXiP0YTiejYeciiJfLS0+0ZDU6ruZOqrwsLj4PIZLmuKHf012gFGy8+V7I0JJdORlb
	w1GNP/MWuaHJbz3FuzTuxwGcJFKjhoHpmEQMZEmxqUJT8B6YxLHcRt+J6dChHoxM5jinozNPAsx5M
	YcZMfhXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGuer-0000000F18I-1h2F;
	Thu, 06 Nov 2025 07:43:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGuep-0000000F17w-0NHE
	for barebox@lists.infradead.org;
	Thu, 06 Nov 2025 07:43:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGuen-00019A-Fq; Thu, 06 Nov 2025 08:43:45 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGuen-007KGe-0y;
	Thu, 06 Nov 2025 08:43:45 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGuen-0000000F2Fk-2qll;
	Thu, 06 Nov 2025 08:43:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
In-Reply-To: <20251105093639.1200672-1-a.fatoum@barebox.org>
References: <20251105093639.1200672-1-a.fatoum@barebox.org>
Message-Id: <176241502522.3583559.475732319714503740.b4-ty@pengutronix.de>
Date: Thu, 06 Nov 2025 08:43:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_234347_134586_7CD09D4E 
X-CRM114-Status: UNSURE (   9.13  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: usbgadget: improve error message on failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 05 Nov 2025 10:36:38 +0100, Ahmad Fatoum wrote:
> The command reports EINVAL when encountering an option it doesn't
> understand and the help text for other errors.
> 
> It's more useful to users to flip them around, so they can see e.g.
> -EPERM if a security policy prevented the command from working.
> 
> 
> [...]

Applied, thanks!

[1/1] commands: usbgadget: improve error message on failure
      https://git.pengutronix.de/cgit/barebox/commit/?id=84288a3726a8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



