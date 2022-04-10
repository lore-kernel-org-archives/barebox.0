Delivery-date: Sun, 10 Apr 2022 11:30:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ndTuI-00E5tZ-5B
	for lore@lore.pengutronix.de; Sun, 10 Apr 2022 11:30:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ndTuF-0007vf-Db
	for lore@pengutronix.de; Sun, 10 Apr 2022 11:30:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vahqT3oJeDXJdZn83eqYyQXL+hmRKJ/20fGFE6D3A4c=; b=BqCd4r/4aKFC5P
	0nXwodjS5XEP7jZXn40J0jQcvx1IVaZTRaPXvV5/Sh9x8dv2RTi/mmLyhRDSKvfzkHXMGVjwHzxFl
	YuEj4FzNFNFrb9t75mEWbVQ5yCZXSOML3ZIIlLjMka5oZvBPrpZL/lDV1OObi7Ee7CA7TJaezF7xP
	tGUkYqGGTyxNaniQvwhzfcumiHuuBxocnbwvoLcA4CAmGjpBpPI03rSGkCXkUWDc65RAp/Dd1UVQH
	+oHVBH+RvgkxtUNN1kAzMXnMEckYBAlMkvtB7Lwu4xTfSM3J5Lo97KZ+yMm1T0OtGzgYMVTSue9W0
	erobItzOkQrWZyt4DTTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndTse-004ZEr-1J; Sun, 10 Apr 2022 09:29:12 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndTsZ-004ZDi-9p
 for barebox@lists.infradead.org; Sun, 10 Apr 2022 09:29:09 +0000
Received: by mail-lf1-x12e.google.com with SMTP id bq30so9025065lfb.3
 for <barebox@lists.infradead.org>; Sun, 10 Apr 2022 02:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LTz3ptNrq/A5/Z1ccmSWC4oD7Jm5m6jQ7+A2QPmot0o=;
 b=pYsEQ+U/pJeZ6xTgPgttj3i6py7BrVN3fZwiSun4bHjTZalvDhZ4nM2zFhN6Rnvcn+
 ZDpnWhDyFzQ3I4xvWx2g0cMDrW0bktNXbIAQPfflsIC4TP+TAtbFaTDgX118bqPXizb5
 Gfkhuj2zhYjSYR9tp8Uv3h2+WwwXtVOPBAJ8zLoMLpyZA5QhpvfklwmJBdt+nEZmgVxP
 dMsgxJmrIR+dmwcYv673pAHhTET+9RBdG2r/e2nxYubxHbS3sJkrZsUnJWBH9/CcJt5F
 szkj6wbHjOqx80f6OBVGlRMRN+rshWwy4k7QBK7GVBphPl2tiFd27HVftsMfh1T+q5sM
 jGxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LTz3ptNrq/A5/Z1ccmSWC4oD7Jm5m6jQ7+A2QPmot0o=;
 b=mxH04xmCXBBht3B3AVD4QqSTcbJGl14BJadCnDOIiGPYyRlRO1hWZGAS+dtbOlft1J
 Za0j+InSZ51nnNvkT1KWhS1DEVDZHxfDfXHBIqddivbpn0v1zrDo/ZvLWuxytK8ogjCL
 5bTk+al70YOUo/qByrkk+Mzp6vioV7wE9N+IDFV+vAtpybWko+c9tptnNoC3DvL4F5TF
 +XLzTgEFZ8oqBxin6GKqNiDsLki9Pk4lBd+LLcov3aksqDCXAsY1caEFNe7eex1TegIC
 PxnoMH7qBHD/ynM5a6+8qFFq3K59pUPrv+bgVlSLyJzsIz2RTeMnDvaF13JtMC3B+xeR
 KZEA==
X-Gm-Message-State: AOAM533KADpo1wP3NyumY+PW4RcyPISZQ3+cpYZ9IMZF17lQ4pckwqx9
 1kQIYfeEKLz2YvPKPEGwQlKHAqrZHz+oFz3GDwUQQA==
X-Google-Smtp-Source: ABdhPJzypxTV924PnVwDlj0mOfxTv5VmPpooqFtu6lZs7iaCG/oz1PLVZ5SZ1InBoM8y1qcifJl3QNG6zLl9bcvOQgE=
X-Received: by 2002:a05:6512:c23:b0:44a:3191:b65c with SMTP id
 z35-20020a0565120c2300b0044a3191b65cmr17510929lfu.636.1649582943342; Sun, 10
 Apr 2022 02:29:03 -0700 (PDT)
MIME-Version: 1.0
References: <6FA3446D-797C-4DA1-A2FA-BAC5B213A65A@public-files.de>
 <2620f87b-ec79-7184-cd8a-d29c39938001@pengutronix.de>
 <trinity-82311693-b8da-49e3-a71c-d577df7e4021-1648021632406@3c-app-gmx-bap36>
 <747cc560-0ff4-da39-6076-7348fc312052@pengutronix.de>
 <trinity-76ce1194-1e72-4cce-81ae-529407eb0ae0-1649415827026@3c-app-gmx-bap48>
 <7f97de95-9fc0-11ba-c06a-d4f38f41d521@rempel-privat.de>
 <314D87C6-FA2A-4A23-8962-5BCDC83BA9E0@public-files.de>
 <0333df9f-5ef7-fc60-4ebc-81bece1781a3@rempel-privat.de>
 <trinity-f3d7c3fc-0418-4509-8b61-8d9c0f65d56c-1649493318641@3c-app-gmx-bap35>
 <1b2a8dc2-629d-6c76-207b-d1d78de4c458@rempel-privat.de>
 <CAMHeXxNuqjfkdoJ=pLLjbv60hzqx6cT1EzegX0ryAeYTBa9vdA@mail.gmail.com>
 <286876ce-e2bb-4a67-7db4-8a4bb9ecf142@rempel-privat.de>
In-Reply-To: <286876ce-e2bb-4a67-7db4-8a4bb9ecf142@rempel-privat.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Sun, 10 Apr 2022 02:28:52 -0700
Message-ID: <CAMHeXxP6Mam1KL3p0R3yBe0gdBj931RwUNe_M9sPV6E8NVsy+g@mail.gmail.com>
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220410_022907_728466_9CB66F62 
X-CRM114-Status: GOOD (  28.39  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: change r2pro dts to public hw version (was "Board code with 2
 dts" )
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Apr 10, 2022 at 12:41 AM Oleksij Rempel <linux@rempel-privat.de> wrote:
>
> Am 09.04.22 um 19:08 schrieb Trent Piepho:
> > On Sat, Apr 9, 2022 at 9:02 AM Oleksij Rempel <linux@rempel-privat.de> wrote:>
> >>
> >> In this case driver will set some default values:
> >> priv->tx_delay = used cd;
> >> priv->rx_delay = 0x10;
> >>
> >> No idea what this values mean.
> >
> > They are supposed to be delays in picoseconds, but sometimes driver
> > authors are lazy and just use whatever goes into their device's
> > registers.  That creates a dts binding that only works for one
> > specific device.
>
> According to RGMII 2.0 specification, delay should be 2.8 nanosecond or 2800 picoseconds. None of
> used raw values fits to the specified range.

As I understand it, there are also delays due to PCB signal routing
that might be significant enough that they need to be taken into
account too.  Thus we have standard properties like:

  rx-internal-delay-ps:
   description: |
     RGMII Receive Clock Delay defined in pico seconds.
     This is used for controllers that have configurable RX internal delays.
     If this property is present then the MAC applies the RX delay.

This is for the MAC delay, not the PHY delay, but you will notice that
it is in fact in picoseconds.  If the value was always 2.8 ns, then it
could just be boolean property to enable the delay.  But it's not,
because the delay is not always the same value for every board.

Some drivers will not use this property and will make up their own.
It will probably be whatever is written into the device registers.
Others might use vendor specific properties in picoseconds for some
reason known only to the author, e.g.:

mediatek,tx-delay-ps = <1530>;

You will notice in picroseconds and also not 2800.

When delay is controlled by the PHY, then there are properties like:

    - rxc-skew-ps : Skew control of RXC pad
    - txc-skew-ps : Skew control of TXC pad

Also in picoseconds.  A search of existing device trees will show it
is not always 2800 either.

> Normally we use phy-mode with predefined values:
> - rgmii == tx/rx delay is 0
> - rgmii-id == PHY configures tx and rx delays to closest possible values to 2.8ns
> - rgmii-txid == PHY configures only tx delay to 2.8ns, rx is 0
> - rgmii-rxid == same as rgmii-txid but for rx.
>
> Using raw values or fine tuning this delays makes no sense in 99% cases.

I agree today, rgmii-id is the normal configuration and usually works
with no further modification.

For a new board design, I think running though the delay test is a
valuable part of validating the RGMII design of the board.  Just
because the 20 prototype boards all work at room temperature does not
mean the million you make afterward will have a 0% failure rate over
the full spec temp range.

> As I already said, except of delays there can be other issue. For example:
> - incorrect pinmux configuration
> - incorrect RGMII clock source configuration
> - incorrect MAC or PHY mode configuration (xMII instead of RGMII)
> - incorrect reset or power up sequence affecting proper bootstrap configuration.
> - incorrect MDIO configuration, for example CLK rate outside of range supported by the PHY.
> - not properly configured SoCs internal clock dependencies.
> - some missing "enable" bit on the PHY or the MAC side

If all one knows is ethernet doesn't work, then I think all of those
problems above are more likely the problem than a need to fine tune
the RGMII delays.

> Even if you don't like the fact, that for most of this cases, scope will reduce dramatically
> investigation time. I'll need to repeat it, it will help to use the scope.

Where do get this idea that I do not like an oscilloscope?  I use one
constantly.  I do not own one that can measure the clk vs data delay
on RGMII to 100 ps precision.  Do have one at work that can.  But
rarely does a board have test points to do this anyway.  Determining
if the various 25/50/125 MHz clocks are there is far more feasible.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

