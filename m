Delivery-date: Wed, 08 Sep 2021 21:02:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mO2qV-0000Vu-Tz
	for lore@lore.pengutronix.de; Wed, 08 Sep 2021 21:02:55 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mO2qV-0004Z2-1F
	for lore@pengutronix.de; Wed, 08 Sep 2021 21:02:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O/6jDc4hYxXryP8D5QHy7haFOsf46wqInj4eoos1Iv0=; b=GySqioZzLIpzaXSS0zJLDyujOe
	H5r/Cflj1zRsznU59i5igBibbB3M/YCctrq8E6QVkyq8VLJMt96TnJlYcbHXPV4wGCoGji1E55GAJ
	AJvaS6+F0mvy6GD4HrtDm4N3XMmvGcOmLvl3LBsEEgxWx4BgyBdwBJxpIQAYodlWbOUt3igfKxP8i
	ufrPY2xXebiwBkK/njjqDLwdwbT8/XIcMOUeOiICEZPaMuztqtomrFnJ1MoFY/J8p8szcaccbnScm
	LSXkmjnLaopZNFcBvR0TZfrnrborB6w4tYiPg7EYFa+etI74FKMJpc2pZSyhaHbryf9YMnuxpR1+y
	0QxN0PtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mO2ob-007Rjh-4U; Wed, 08 Sep 2021 19:00:57 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mO2oW-007Rhv-7S
 for barebox@lists.infradead.org; Wed, 08 Sep 2021 19:00:53 +0000
Received: by mail-lf1-x12c.google.com with SMTP id k13so6880783lfv.2
 for <barebox@lists.infradead.org>; Wed, 08 Sep 2021 12:00:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=u6Glkqq/s+VHPieVRxYWEVJYJdWN7pYafMgp7ygRd6I=;
 b=HV0TUFYAU7Ef0H4dvAWkh7iaJC57XA1z0E3KmkT8yGBXhpjo1SkhMlgOG76rNPcxsM
 CgaShSW6trJSE+KFWT5536eL9ojiOSX7m4cAvnM082G4nM/BsDAMvoov0iceno7JvYPE
 VDU572KL1mDd530ceAUloknoYO0G6qGv1GdnmnzvrgbY0VceD/6GU5ek3cMS+HmIZktF
 C9OCjD+cRQLt2EMJUeQsSftsTO40LLCF6uzF56nAV5VlHudYvgEEe2zza7Bx/azclJcK
 R8bXTAb+oAPMRVV61t3SfN5fR8FPt4Wvd7l9WoSM1VxMiCR0pmffZbH9paVp9j4eH0Bo
 vgmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=u6Glkqq/s+VHPieVRxYWEVJYJdWN7pYafMgp7ygRd6I=;
 b=wBzMFE69v/uvrPHVVo+MQR0x0xjngNRbjsQF0hohXoWNBrzXjhIJ1KXWJyRaCTVzzi
 zHS/wVjrNKsB6p0qjwXQFxfC3D2kvvuPmj0D82Wv3mncHKCNL0sDG5d73+xEDMhkXeMZ
 V3zCs+cAhWIYahA53Gj4EoTAr2sjOZIA1KGKdWEEy4NQoVprzvsAp2wfs5wDMIAvwtp8
 SnQeZ5Gs8uU2iIUIwz9pguK9wi44PYbF5ubo7ivIvxnEntUM/bS6S+hxBOJzfKEBtni7
 Zxn6MmVBfF26WL23QsLCKG0ZYJvF5RjZSYDq0hca89/ImK4JHayo0awaHtOhs6TFq0gn
 tG7A==
X-Gm-Message-State: AOAM533XllnGrFfTMGb6tjdvzR4vxpf3chn82gCDA3cyyZGpPltc9g07
 h0TpzZJ7Uz6MBnzgDxgS+nStUoYghcz3TiV7cML9fDu86w2xhQ==
X-Google-Smtp-Source: ABdhPJxn9iopxPJ+h592b/3z22nbukr5Fw7vx1qsz68+sy+H5oLJf3LChKnLI9331x1hniceZPURNbnyASucAW9aHqo=
X-Received: by 2002:a05:6512:3252:: with SMTP id
 c18mr3615322lfr.196.1631127648444; 
 Wed, 08 Sep 2021 12:00:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210905135122.7038-1-a.fatoum@pengutronix.de>
 <20210905135122.7038-6-a.fatoum@pengutronix.de>
 <CAMHeXxPV_5mzAH3gbpy4WrL16kSstkLhJvx-VUQqbmy9C1r6WQ@mail.gmail.com>
In-Reply-To: <CAMHeXxPV_5mzAH3gbpy4WrL16kSstkLhJvx-VUQqbmy9C1r6WQ@mail.gmail.com>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Wed, 8 Sep 2021 12:00:37 -0700
Message-ID: <CAMHeXxOmYuM9+ucqiXEzSSJ7z_0xgRLSE4BYG7GVNCFT0PR3xg@mail.gmail.com>
To: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_120052_517183_32AE274C 
X-CRM114-Status: GOOD (  16.42  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/9] ARM: i.MX8MM: correct unrecognized fracpll frequency
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Sep 5, 2021 at 6:52 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Correct the value in imx8mm_fracpll_tbl to match the one expanded by
> MHZ(266) macro, rounding it down to MHz range only.

It's not really "correcting" the value, since the value is wrong.

24 MHz / 9 * 400 / 2^2 = 266666666.6 Hz

Maybe it would be better to say, "make the value in imx8mm_facpll_tbl
incorrect so it matches another incorrect value used elsewhere."

In which case, one has to wonder why it would not be better to use the
correct value everywhere?

>
> Signed-off-by: Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>
> [afa: ported from U-Boot 6ac4d4480663]
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/ddr/imx8m/ddrphy_utils.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/ddr/imx8m/ddrphy_utils.c b/drivers/ddr/imx8m/ddrphy_utils.c
> index 9a4e1a22ee5e..6836e7d4b351 100644
> --- a/drivers/ddr/imx8m/ddrphy_utils.c
> +++ b/drivers/ddr/imx8m/ddrphy_utils.c
> @@ -198,7 +198,7 @@ static struct imx_int_pll_rate_table imx8mm_fracpll_tbl[] = {
>         { .rate = 600000000U,  .r1 = MDIV(300) | PDIV(3) | SDIV(2), .r2 = 0 },
>         { .rate = 594000000U,  .r1 = MDIV( 99) | PDIV(1) | SDIV(2), .r2 = 0 },
>         { .rate = 400000000U,  .r1 = MDIV(300) | PDIV(9) | SDIV(1), .r2 = 0 },
> -       { .rate = 266666667U,  .r1 = MDIV(400) | PDIV(9) | SDIV(2), .r2 = 0 },
> +       { .rate = 266000000U,  .r1 = MDIV(400) | PDIV(9) | SDIV(2), .r2 = 0 },
>         { .rate = 167000000U,  .r1 = MDIV(334) | PDIV(3) | SDIV(4), .r2 = 0 },
>         { .rate = 100000000U,  .r1 = MDIV(300) | PDIV(9) | SDIV(3), .r2 = 0 },
>  };

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

