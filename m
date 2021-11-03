Delivery-date: Wed, 03 Nov 2021 23:37:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miOsp-0000QK-EL
	for lore@lore.pengutronix.de; Wed, 03 Nov 2021 23:37:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miOso-0001Lk-E3
	for lore@pengutronix.de; Wed, 03 Nov 2021 23:37:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iT+Tb/vFArjbiFrelmvZZauwgTvRXXTS+FFTBRWK/4w=; b=xEobJemgxixGru
	ChZbGmy96kA7UJtNMeKURdcUsgyM362v6lp0YRTdc5bxnw5g13LVAy049MTCg8ja5wknGXNv4sAU7
	//kyO7vUBscpicdgaIbU0gjY8SmHEuMw+uqkBwaNoygTdhVOeGnvBGc3iRHI4otHbDJDiolqFh2+N
	W5d++2bH6OEWEjL2JeK+VlFu6HZUI5g5LMUs9Cfp79AysVV7L+eVd24+1kSvD3z5Q/Mcxx2o/d3x0
	lvjpneEtrzSakFH6gtiOlBa4eiABUqO3i7umXeFEX8a5YMzcxHL6jC0HIA1qx9xZKwXFgl/7HQgjq
	WqG5O26guPtyOcYCAu3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miOqw-006oLp-4E; Wed, 03 Nov 2021 22:35:30 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miOqq-006oL3-1S
 for barebox@lists.infradead.org; Wed, 03 Nov 2021 22:35:26 +0000
Received: by mail-lf1-x12f.google.com with SMTP id d12so4593344lfv.6
 for <barebox@lists.infradead.org>; Wed, 03 Nov 2021 15:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zNXQ4sEDKK8uokWjS6ggStOIVhFSYvaMH72v6Kic618=;
 b=hw30mn/kVGygMU3nCfKyhAAFKYufmt2MdxMh3cV75/s7SjlXZiJYPX6fjsSvQVfyco
 ha49SlLIPCdg5IKvQqQVLIYXQrwDqEwz9lBavcAkwa0DLmFHWhSOLZRE7Ypxf29zklXL
 W2thBBBS+C9G1ktzd/c8sMCBGzG3M3trGD+V5Fiyv9F+/gPQ9KAklkSImql3z89LelXK
 1QmW2MvSnmyHEjwORveg6MMovsFSvaZwsTHbF5B3J35dq359fVrrI9g1eIUSqakfsgU2
 HK4Xk/oz6Urud3SRrIOD0MBPo4Dlg6bhsUs8pEsGrs3T+Z9cE9zbRiyzwsflejqPg12s
 /LcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zNXQ4sEDKK8uokWjS6ggStOIVhFSYvaMH72v6Kic618=;
 b=7GzXpLbSeqC5Vr02Hf1ouF0tOaX1aiwBhtSHDuNF267oyzp+LIMAYuTsB+anvhxf/A
 oKg5mYrnQVr4S4ShCs2EmSKoAPN7Jc0/rtDTpsR+WQzC+WKI6mNq/9adUTASQu5NH5yb
 RgmXxjlyDEaHluIzvVmWjkM+kotWn8wMc/K38xhLK8dwJfxd0UMX9nWvbDis7JdBROPZ
 nMX/IyJpvEemt6lZLXgwK0h4hJc7315W+FFAUOCIDqh0zDnXOwe+joszflmm7W6mEH0V
 LFd/3OxxYomjrATZN5uPAiB2oqfpUJeQdBxWPPf9703mUR0GklwzIyg2Mg7w8/6N6VSh
 itMg==
X-Gm-Message-State: AOAM532JmogHB6lZUkYfGxi/0nFsJ+qDU1aRvfmyVq9gS044wdUDnD0o
 2StJjHieNjysp3IH/weiq5ywkAtxWqci3bjSofwMTA==
X-Google-Smtp-Source: ABdhPJykDNd8tC/F/vd+KNSXgVWJPNfWGDNeXC2lsFaxsNxXu6SeeTmDjM6v2Qv2xAs2hV/s/av70FoBLuGFFHtZ6oA=
X-Received: by 2002:a05:6512:539:: with SMTP id
 o25mr16511230lfc.541.1635978919088; 
 Wed, 03 Nov 2021 15:35:19 -0700 (PDT)
MIME-Version: 1.0
References: <20211020083954.3787-1-danek.brat@gmail.com>
 <20211101090039.GM25698@pengutronix.de>
 <CAMHeXxMJYC2q4Hs7zd9A=5-KsXyFUtTshMVoZZC2nJUah=LtjA@mail.gmail.com>
 <20211102074048.GW25698@pengutronix.de>
In-Reply-To: <20211102074048.GW25698@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Wed, 3 Nov 2021 15:35:08 -0700
Message-ID: <CAMHeXxNbHxrEyzsYaXaaaFx38iKt+LjAkC-EcVUXt96yZ3XBBw@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: =?UTF-8?B?RGFuaWVsIEJyw6F0?= <danek.brat@gmail.com>, 
 barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211103_153524_320186_38F4E843 
X-CRM114-Status: GOOD (  37.07  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] phy: core: Make 'phy_optional_get' return NULL when not
 implemented
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Nov 2, 2021 at 12:40 AM Sascha Hauer <sha@pengutronix.de> wrote:
>
> On Mon, Nov 01, 2021 at 11:33:07AM -0700, Trent Piepho wrote:
> >    On Mon, Nov 1, 2021 at 2:01 AM Sascha Hauer <[1]sha@pengutronix.de> wrote:
 >    >
> >    > The phy is only optional as long as none is specified in the device
> >    > tree. When there is one specified then it's no longer optional. We can't
> >    > do the right thing here without checking the device tree. Given that
> >    > it's simple to enable CONFIG_GENERIC_PHY I think this is the way to go.
> >
> >    But this force enables GENERIC_PHY when it's not needed.
> >
> >    There are commonly many device nodes in Linux dts files that are not used
> >    by an enabled Barebox driver.  It's normal to turn off a driver that might
> >    be or could be used.  Is it necessarily an error if a phy is present in
> >    the dts but we don't wish to include support for it?
>
> We need to distinguish the cases "There is a phy specified, but the
> reset defaults are good enough to go without a driver" and "There is a
> phy specified and we need driver support for it". barebox can't know
> this.

Could we say that compiling barebox without CONFIG_GENERIC_PHY means
the driver is not needed and compiling it with the driver means that
is it?

One can have the defconfig include drivers that might be needed, but
at some point an engineer ought to be able to

> Returning NULL from the phy_optional_get() stub has another problem:
> Some devices might work with CONFIG_GENERIC_PHY disabled, but stop
> to work when CONFIG_GENERIC_PHY gets enabled, because we might have
> no driver for the phy. Having boards that only work with CONFIG_GENERIC_PHY
> disabled is rather unexpected as well.

Return NULL if there is no driver.

> >    struct phy *phy_optional_get(struct device_d *dev, const char *string)
> >    {
> >            if (dev->device_node &&
> >                !of_parse_phandle_with_args(dev->device_node, "phys",
> >    "#phy-cells", of_property_match_string(dev->device_node, "phy-names",
> >    string), NULL))
> >                    dev_warn(dev, "%s phy specified in device tree but
> >    CONFIG_GENERIC_PHY support is not enabled", string);
> >            return NULL;
> >    }
>
> I am fine with this approach. We could add a check if the phy node has a
> status = "disabled" property. That would allow a board to explicitly
> state that we do not need to support a phy. We could then do the
> right thing no matter if CONFIG_GENERIC_PHY is enabled or not.
>
> Thinking about it I would prefer something like barebox,status = "disabled"
> to prevent the property from leaking into Linux.

Wouldn't it be easier to just delete the phy-names property to disable the phy?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

