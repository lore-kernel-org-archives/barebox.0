Delivery-date: Mon, 17 May 2021 22:59:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1likKy-0006Jc-6t
	for lore@lore.pengutronix.de; Mon, 17 May 2021 22:59:40 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1likKx-00010U-C8
	for lore@pengutronix.de; Mon, 17 May 2021 22:59:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PPkLWtdRsFoiLIE7MwjO1/1vML6x4Cw1PW9w5eU5FB4=; b=laORMaPzooDKKaq7s+vWEbKMC
	VhifJ7kBYUtgq+JtzpBIVBh37i5SGGcF2qrnCEkJPqpHMPD0gaPokE4gMGkWHLeGBZbmJ+Txj8j8l
	aTYTvIdjeVsX+yb0bzmmaPyz9hPeRE4U/TYNDudK5uzy4oOTPj8FNb7ftE+R1WaSV59gfmRL/7+Xq
	Gn/AJu1WcGVqKWrwfLYmnLRZvAJoDwttxJlZn0hCGkL05chY00yfDv0vWNWjmXknZMDio9tLovp6d
	Izp+eurjsQEbEDniu3AjgQ8ab81z2WgbVAgncEjrxoGGDpP6iyd91NIvmS7NajV7rMmihIBP/cC+F
	jm9ihnjHg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1likJh-00G9ux-Si; Mon, 17 May 2021 20:58:22 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1likJY-00G9ug-NE
 for barebox@desiato.infradead.org; Mon, 17 May 2021 20:58:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=MsRWfJhxC5LhIDOAWwmG1ApemVPbN3KBLzMeWGDEcEo=; b=PZ2K7IMi7DdzBmoBKGwnmov4yS
 ucW4JmkNhNsCsv7xZZeA2I+qNqyJAgSmephf/wD88GwrEhjSIm5q7CQA0FynXvsojzvEMX/NL8I4T
 PQoUEX0V5d/cATvs242F2g/eZcmP11xCD1ymJFAQ121oeMsNLPkFKl5JDcRtqVF28yDLqn/2cWd1j
 zHUl6Stggsn+6uciA/wz6kovQTM5qTb4GEBhT+P8Nhi10LBszeAWGOXSgvK5gnh7upmlm6v3h5vjd
 zUYrnINwpAtybdpP3SvyMKX9MIgwTEeZ3BlCP0/zF7neNMxdaRO/ShlMkddyE1E4BaovTrEt6mAJZ
 1WyO5g0Q==;
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1likJV-00E9HT-T0
 for barebox@lists.infradead.org; Mon, 17 May 2021 20:58:11 +0000
Received: by mail-lf1-x129.google.com with SMTP id i22so10728250lfl.10
 for <barebox@lists.infradead.org>; Mon, 17 May 2021 13:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MsRWfJhxC5LhIDOAWwmG1ApemVPbN3KBLzMeWGDEcEo=;
 b=H7mRgQ4Erxg6FwXl0YBUoNI9R5V7UCkmRw3/1+b6P7676NimLD3EetzQ3wkkfIQVTE
 dWPwzT5mUaPkzqOUF2Y0zkAZ6Mw866GN0t55kkltI8sIN8fQPYki2hX5S+DLDlbgz4be
 40gS7kOExztXEU+v6ZAHF+CW3glkX6kcZ9qWvRqKNSZWwBgx4eioz4wASLJEFforIuAz
 AWhGIZ50noVlDNytxMVXOoP/uQG7kzVTKFY/zwR6cfD+JL6TKNh0/rYdJW1ju7Ya7KoS
 KzQuJqe4qXmd5dRZvEUDzPvo+hR6tSgma5bKpL7MYO0a5Cz0vugVl0x5hC1h6DCkKNU1
 W8kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MsRWfJhxC5LhIDOAWwmG1ApemVPbN3KBLzMeWGDEcEo=;
 b=JXHleeVe377iTCTbIzWo0PA/4ShaQU6AyEuywuWcfUEoostAn0c9VE/IbmSMCYcgRG
 /Jve6DMskEIpd78Nhp6Yj6v9ohVzaykfqJpW0EQtsf+TebTH3eGp7h+taZnBvryYh9qS
 lAFOIXWxeEtP3U9PukefvAKic2jZcQ1KtyiZ0qJvacu+ejFD6NHpFknLLcGk5xs9KWgP
 0RL+fgss9BsjMSzlnJUA7AnPUxUygfrOEBKya54TXABDW0uQYtogiRDmgCEtfxU6B/1I
 MxXHjrBsrt/I51burL7PZrjWp3f/321qf2mi5kXm0KsxCrMKhjH2UCBvfpID0yZFvf8B
 01GA==
X-Gm-Message-State: AOAM5304rfshpWcqoSkHqy3YOOZu8Rf1gmJ0/P1ZlAVuvZ4LQH1tFzX/
 +KhdCGnU/k8DQ4D/aYc9ZXbO64UK9U7ZDwECWWj1zMTsihsWnA==
X-Google-Smtp-Source: ABdhPJwWSd1cQHqi7NmgJG9vCKbd+j5GjhcRTHxj7/DUih2fwbttFHYg5rVM5srB+yUlIw5c9CkhPvNQ6zbCO8eTpTk=
X-Received: by 2002:a05:6512:1141:: with SMTP id
 m1mr1181718lfg.28.1621285087454; 
 Mon, 17 May 2021 13:58:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAMHeXxMH8E4ae3HvFtkckJAc_hk1xWBJxMyBxab_OdPRn3y1Vw@mail.gmail.com>
 <20210517073830.GR19819@pengutronix.de>
In-Reply-To: <20210517073830.GR19819@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Mon, 17 May 2021 13:57:56 -0700
Message-ID: <CAMHeXxMZ-ib7TRGs8gON2VeRNbhvKfWbVtDHwT-mNSTtvyYadg@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_135810_099152_6341C546 
X-CRM114-Status: GOOD (  22.64  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: Board specific environments and broken configs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 17, 2021 at 12:38 AM Sascha Hauer <sha@pengutronix.de> wrote:
> On Fri, May 14, 2021 at 11:46:38PM -0700, Trent Piepho wrote:
> >
> > An issue with CONFIG_DEFAULT_ENVIRONMENT_PATH is that it applies to
> > all boards in a config.  If multiple boards are built at once, e.g.
> > imx_v7_defconfig, then there is no way for each board to have a
> > different extra env this way.
>
> Thanks for spotting this. It shows some points that could be cleaned up.
> Generally I suggest to remove the unused files. When they are unused
> nobody should miss them. For some boards we could think about removing

Maybe the documentation could be improved, as it appears to say that a
board env dir will automatically included?  I wonder if some boards,
e.g. skov, thought this too and didnt' realize their env was unused.

> them as well, like for example the i.MX boards that are still not
> converted to multiimage support.

If I understand correctly, with multimage support one puts the env
directory in the board makefile and then board code will add it.
Doesn't this mean that every env for a supported board will be in barebox?

I was thinking there might be a way to avoid that and also avoid board
specific code.

Pass an env overlay, or overlays, in the u-boot dtb that the pbl
provides.  Do it like a FIT image... e.g:
bbenv@0 {
    compatible = "barebox,environment-data";
    barebox-bbenv-data = (raw data of the .bbenv goes here);
};

The raw data is injected during build the same way a FIT image puts in
the data for a kernel, dtb, initramfs, etc. into the FIT.

This way the env is only in the board specific image with the board
specific barebox dtb.  And common code for barebox's dtb handler can
trigger on the node and add it to the dtb instead of duplicating that
in the board code.  One could also pass additional env to a chained
barebox, though I don't know what one would do with that exactly.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

