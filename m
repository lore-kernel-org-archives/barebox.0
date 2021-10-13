Delivery-date: Wed, 13 Oct 2021 13:00:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mabzn-0002Fb-UK
	for lore@lore.pengutronix.de; Wed, 13 Oct 2021 13:00:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mabzm-0006KJ-BP
	for lore@pengutronix.de; Wed, 13 Oct 2021 13:00:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1EUivPKE0Pyr2fJHAV7NuJOYJvwJmXAkDtatmFGnlek=; b=kKK7ML73clyLft
	phOSVCM8dEC2/14kZl+EHCQ+lo254dRFI6/udnNkipxdJjE2IX+6qO1K6VIEkm3TsvhybDidRRyku
	IRWtC4qIJR8Jm9qRo+7bt9LLkhusY1KDffLsKGrB2ETorOJ5irfkVM0mnSUOi5GsSGuOvCDSvGgVq
	M76v3nYw/0IGxQg/ft5slAtq17thB0y1x7ePKC0IuPqG8aB6wXPcYg4CqRBBGarrzk/mTMPcdagE6
	KdaKgFErlaZNDpEBYhbrpAn2lGghjYr0RShMtj1JBhnIoMlO/P4MMl0v9223Rl+np2lDXhKE9/VnU
	7uobSuh+7VmqiHf8JAAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maby2-00G8tV-B2; Wed, 13 Oct 2021 10:58:39 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maZwA-00Fdqr-BJ
 for barebox@lists.infradead.org; Wed, 13 Oct 2021 08:48:38 +0000
Received: by mail-lf1-x135.google.com with SMTP id c16so8623173lfb.3
 for <barebox@lists.infradead.org>; Wed, 13 Oct 2021 01:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5993yKWzv+izsrorOn0OnWrtoIcfVOeq6NkBm8oVB6w=;
 b=xp63HPAu6zwvKlf6LAHdD5DGW0TneJnH5g91Wsx+KZ3iGj+Hdj0QPsWoO1GteyEpgy
 Z0+0eLoYIS1XVvQaU1zFgx2uB54Fxss3hEf7D/Di0onrYRD7NCpzuyDaTlVrORTZk99f
 AJ67urR/POBQQRi2y8TGoyZJy6C7fMx2fr8upDTmCFAe3xfgkZ0xOo1T9l7SJTsfELDc
 yjGPRcIOQP+9wSByBjoPBjhwz1SOC7y2G+XICHOmxmRzdgKV9eMC70ePRzh0XJsM9+PG
 AfM4d6rZzqjS3/YsQD6vG4XHE3F5rpMWDBZ23/jfLcuo4V4FHdi4wtnuxdFg8VgHVeGf
 ErvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5993yKWzv+izsrorOn0OnWrtoIcfVOeq6NkBm8oVB6w=;
 b=YMsS3YY/PrCcqEaDtX6Je688N7AyFIGQq3di1jvB80XfAEREuE5QkPVcqVahqs/WYz
 Yr6UiYApfbMK8v2ECKFxcE6HWBSJAN+TJ/4tfn7Fvt1Z2Hy3wzkGudtHR98i79FoqNww
 QWTRXDWpEkY1QdgvyMRGjLSkyyB51/V9l33qeYHZ2ci2XtKZMaEI87PKZLcPRAhpfpLU
 ZVC6tuxnstpTvP4N0ZzQaEbW5QBcDjH5MsphG/6UmJ5W9zMjiSq9/Yx3iiPvRnlynF2o
 kpMqQyy99VpmJdQOQpC6OnCrm0OnZVSy1oB3X0yQnrDJZ7PBnfbZmzc4iiCjKzxtMjYO
 wCmg==
X-Gm-Message-State: AOAM532B2JtDrng8VO+4WMw5VekkHWYbHgutzW2uGpGV9qJObF8GhHkq
 vcjpR2AIUqRqN/nH+uFkHd1DjpZnRfhxrkNWCP0EB1ze/pX7Fw==
X-Google-Smtp-Source: ABdhPJyYKs+tOok7vVRBIA44PgqGqHVv9/JhLZfxs4bmaPRlaqytHcQW+alVLeVYLYcMJ1s+0GhUOM4uN9nTXC5qivo=
X-Received: by 2002:a2e:90cf:: with SMTP id o15mr2147637ljg.241.1634114911188; 
 Wed, 13 Oct 2021 01:48:31 -0700 (PDT)
MIME-Version: 1.0
References: <20211012100859.1409-1-o.rempel@pengutronix.de>
 <20211012100859.1409-2-o.rempel@pengutronix.de>
 <CAMHeXxOmv1TR0-4LQDz5A1Bfw+xrBBU+WsO43rn26hwTYrbVqw@mail.gmail.com>
 <20211013072858.GC14971@pengutronix.de>
In-Reply-To: <20211013072858.GC14971@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Wed, 13 Oct 2021 01:48:20 -0700
Message-ID: <CAMHeXxMTxSWb_evKksZVZkUxJoYF5DS0amDKaAOGhJ3f5pORAQ@mail.gmail.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_014834_590443_69D70994 
X-CRM114-Status: GOOD (  14.12  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 2/2] net: phy: micrel: port clock select support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 13, 2021 at 12:29 AM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> > Note that not just KSZ8081 has this bit.  Also KSZ8021, KSZ8031, and
> > KSZ8051, which has the existing different method to handle it, as
> > described earlier.
>
> ok, i'll sync all of this PHYs with the state of the kernel driver.
> The board fixups should be removed by someone who can confirm it.

If you copy the entire kernel driver you will massively bloat this
code with stuff that is totally unused.

> > > +static int kszphy_rmii_clk_sel(struct phy_device *phydev, bool val)
> > > +{
> > > +       int ctrl;
> > > +
> > > +       ctrl = phy_read(phydev, MII_KSZPHY_CTRL);
> > > +       if (ctrl < 0)
> > > +               return ctrl;
> > > +
> > > +       if (val)
> > > +               ctrl |= KSZPHY_RMII_REF_CLK_SEL;
> > > +       else
> > > +               ctrl &= ~KSZPHY_RMII_REF_CLK_SEL;
> > > +
> > > +       return phy_write(phydev, MII_KSZPHY_CTRL, ctrl);
> > > +}
> >
> > phy_set_bits(phydev, MII_KSZPHY_CTRL, KSZ8051_RMII_50MHZ_CLK);
>
> No, it should be synced with kernel not in the opposite way.

If you want the code to match, then improve the kernel code rather
than make Barebox code worse.  phy_set_bits, phy_clear_bits and
phy_modify exist.  One can not use them if a kernel driver has not
been refactored to use them?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

