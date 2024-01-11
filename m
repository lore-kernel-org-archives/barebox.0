Delivery-date: Thu, 11 Jan 2024 09:14:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNqCV-00CiSx-0m
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 09:14:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNqCU-0004hJ-Lo
	for lore@pengutronix.de; Thu, 11 Jan 2024 09:14:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jz3K/c5OSlsfqCtae/BuLmAocq98ZimPNpNiNsMEj/w=; b=xy0EEENKM6BBYZfC3un8/L/0RC
	YaZehhMwOorHrmoiOq1xA2MOLp6i2NxEXt+9c8OBgVvULKNC2RudNE74nwKqCHsMUxZK3A9tqymoZ
	IQmG+B6S1BEafBulNyOsQyVTWDPf21Apad01k8j9V+1R+P//6Aps4nSQoqX0lQ5LhkHb22tlB5wki
	Gf4ueLfzRWn5UX2CgjrMzIcLUOhrNfmHyKA8He05f8ZomSFnKzk/c/YaiSgenvUPFW87tnX8wgMps
	HjvlEE8tVeMMfoa0snMn0EFLg2xTE9WQptu/iyH4Tg1nOmQQ+y9RZsKX7eBxOrKZ01gGU1DPVrDbI
	ztUoveHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNqBK-00GRB3-14;
	Thu, 11 Jan 2024 08:12:54 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNqBG-00GR8M-2I
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 08:12:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:mime-version:references:in-reply-to:
	 message-id:subject:cc:to:from:date:from;
	bh=Jz3K/c5OSlsfqCtae/BuLmAocq98ZimPNpNiNsMEj/w=;
	b=oLbpX1oKDDpmcQqqkCArnqHbPKi1Rb1I9Win6U1E0XxA/rzqdMjnjyubJyIRn4dD0hXdQkipHypdR
	 hb05qQju6Z4uiU3nq5nkcFNF2zJ6U02SGFFIXO4zuAcYBb6FFM0Lvx42pKd7yHoT41LgzEflZ2pAob
	 KXQqAusEBzdfpkDj7lZdvSZ7JHQt9ng+R6Z+8y4jtzS0A/h/MEMJXqhr0acjwmHHLey/S8F5m4mh4H
	 oaTATiLtg+Mt6Cb4c1fuew1VKh9DE4EbEfHdR/mye0lM2UtRz7PaH+Yji07O6LXCa9SHusDAym9n+u
	 gfuIZnJFK3C4bzIJcr70N3G7GIqjrmg==
X-MSG-ID: 312b3265-b059-11ee-a36c-005056817704
Date: Thu, 11 Jan 2024 09:12:41 +0100
From: Robin van der Gracht <robin@protonic.nl>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240111091241.6274a399@ERD993>
In-Reply-To: <20240111073412.1318725-1-a.fatoum@pengutronix.de>
References: <20240111073412.1318725-1-a.fatoum@pengutronix.de>
Organization: Protonic Holland
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_001251_194301_8BBA28C0 
X-CRM114-Status: GOOD (  13.91  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] regmap: clarify struct regmap::max_register value some
 more
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Thanks!

Acked-by: Robin van der Gracht <robin@protonic.nl>

On Thu, 11 Jan 2024 08:34:12 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

> We already have documentation for the member that was taken from Linux,
> but still managed to use it wrongly at multiple places that were
> recently fixed. To prevent such issues from reoccurring in the future,
> expand the documentation a bit.
> 
> Suggested-by: Robin van der Gracht <robin@protonic.nl>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/regmap.h | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/include/linux/regmap.h b/include/linux/regmap.h
> index 690dc3b1dccb..9e38fbc12e16 100644
> --- a/include/linux/regmap.h
> +++ b/include/linux/regmap.h
> @@ -31,6 +31,9 @@ enum regmap_endian {
>   *         data.
>   *
>   * @max_register: Optional, specifies the maximum valid register index.
> + *		  This must be a valid register address and thus a multiple
> + *		  of the register stride returned by regmap_get_reg_stride()
> + *		  after registration.
>   *
>   * @read_flag_mask: Mask to be set in the top byte of the register when doing
>   *                  a read.


