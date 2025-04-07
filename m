Delivery-date: Mon, 07 Apr 2025 17:12:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1o9f-009bEe-0l
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 17:12:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1o9e-0001tQ-Hx
	for lore@pengutronix.de; Mon, 07 Apr 2025 17:12:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tiy/mmtim7+ByRiWmsgPINabu3bs5TRwYgpPHfrpW4w=; b=3NGXmWBNDDg/S7i0iryHtQVRtm
	XMYAEaK3cfV6t3piXm/+KSmRsbRhLOf8U8KG5i/hHLMUCuRxrJiWey1ZJHGq9WunNHlVvx8xzX+HC
	zF/91yPt8ZcwcT+09Iz7yEV7REq7v79K6K8u3giyd3LH8j1PKD5Qt526M9U6RfLGcljsbaZKe8t03
	6d05VqdV3TEFdJTJhekEpW6x4SPjHgaWT/AVUyqLgQ64MrP7QFt+XWMZuzrJeYJ+lQdGGfwvSSk8t
	E9nRTLkxlH/h8sG5jK0nzHq98qrjvlG/UNI7+gVlpjuWNhaHo0lybWMveTpF6gZskf/Eq1t6H9nAX
	0WtEWF8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1o9S-00000000toR-1vdW;
	Mon, 07 Apr 2025 15:12:42 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1mz7-00000000chz-3wqX
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 13:57:59 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-301d6cbbd5bso4319354a91.3
        for <barebox@lists.infradead.org>; Mon, 07 Apr 2025 06:57:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744034277; x=1744639077; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tiy/mmtim7+ByRiWmsgPINabu3bs5TRwYgpPHfrpW4w=;
        b=a2vevkZyl1EJBSPAfgShOZJb3xq+MWSJ+I/+oMcKgRWOyy7vuLKGd9Ltitpy+MXXe1
         KNXG1DWax+AZnQMfBBHUnBBV+jgDwWBrZfH+nS0IG66f+wWT0QiHRsUpsWRbkqwQsPWD
         PRIDyn/EOREo3lmLW/IsUBipagvoeEl02c2W9M27aR1r/aeGRe4u6Al7JCq7eVrg2H9a
         WzZ0fQ39AVtzalJA3/SfcM3EjjPU/qf1Gp0l47Xs1QKKV3Viv5i0wdIeY/jF/u40lFHp
         tObiLUnCgaBs2HBcCT0enS2/w2jV3M3m7tuZ25QgAdJGsJegXRRH7UK8A0FUgFzuPLaA
         ldQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744034277; x=1744639077;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tiy/mmtim7+ByRiWmsgPINabu3bs5TRwYgpPHfrpW4w=;
        b=BELoP1urhbFWuFU19ddme2EcFth4sg9kBBNor0JYxCRzGcKBIL47wpK5RwbWfcE2nO
         2OctQIqY/Xj24rOy2JPpsOqqWzzoR2Z/kkEuM8N7qJLpWIPZnM54fVs9U+DJIwrW8gy6
         AbcmLxBONhcOk5dBfk9q/acpSqb8VYzYh12F39C8HpBXIEilgCd4bY1lr/G6vweT1/7y
         IQAp4vutOB/k7qbsQuIwcBuNyPfSPzZ/NLyCFS+K5HRItXSfTWstvoP87b85rI3hV5nh
         qV9WSSdM64zB4mQ3Ks62kSd7l+CmpgAPEbFq8J7h4Wx4rOMAz9N9Z5rCDy7rxUdM16IV
         rh5w==
X-Gm-Message-State: AOJu0Yzn75mVnTeOhNRguPbeF/nUKLQUOAe3RsnR2vx9zuFVsY4MaHXE
	9Wy5fHHCHyFjjWQA5/FbNhI+zWjGt7vma66EF1TPJzZGbDrrOlkHW0RG6Hp5bZED/fcRzBwgL4R
	H+A29Y1tgbjWBv1B8JInFxjPARCZLM99K
X-Gm-Gg: ASbGncsARUdto0Da5++/qwNpxpwdq16tH55Gc5UriFATphrxtwRd1H23sJFY/OLF5mn
	pUk2bSdWHbWihdBQml+KaRucXLJ+J68nwX3gdf6joDQNe//BO4Dr/dpR8Wbnp/Mqdr6La4lbT1h
	EtSpVsViVxkW3bMe5njE72cLzao0w=
X-Google-Smtp-Source: AGHT+IEAK0FGxktq8IQm+RPFQlFK25AQA3a3XjMYFSJvGd7TRiJLI1YZRxdRenxbjmMWPbq1VXbJagb8BJP/zLx1c+E=
X-Received: by 2002:a17:90a:e183:b0:305:2d68:8d57 with SMTP id
 98e67ed59e1d1-306a47c2d54mr15946491a91.5.1744034276913; Mon, 07 Apr 2025
 06:57:56 -0700 (PDT)
MIME-Version: 1.0
References: <20250331123948.337747-1-eagle.alexander923@gmail.com> <Z_PTgzLra3jphpeu@pengutronix.de>
In-Reply-To: <Z_PTgzLra3jphpeu@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 7 Apr 2025 16:57:44 +0300
X-Gm-Features: ATxdqUEW4KJVqY3A9dZ9btjJDg5H-UTRwWNPTJdiqHmDN-t7Ws0xLFY0D15WQc0
Message-ID: <CAP1tNvTdAmjXXU5dvZgWjYiLTMTt+nQGxXi2YVcuenG0J2uXKw@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_065757_977562_80E58F4B 
X-CRM114-Status: GOOD (  35.90  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] clk: rockchip: rk3588: make refclko25m_ethX critical
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

In fact, at the moment the patch does not fix anything, since there are
no drivers for rk3588 gmac in barebox, even generic ones.
The patch is taken from the kernel repository, so I think the changes
will not disappear anywhere.

Thanks!

=D0=BF=D0=BD, 7 =D0=B0=D0=BF=D1=80. 2025=E2=80=AF=D0=B3. =D0=B2 16:30, Sasc=
ha Hauer <s.hauer@pengutronix.de>:
>
> On Mon, Mar 31, 2025 at 03:39:48PM +0300, Alexander Shiyan wrote:
> > Ethernet phys normally need a 25MHz refclk input. On a lot of boards
> > this is done with a dedicated 25MHz crystal. But the rk3588 CRU also
> > provides a means for that via the refclko25m_ethX clock outputs that
> > can be used for that function.
> >
> > The mdio bus normally probes devices on the bus at runtime, by reading
> > specific phy registers. This requires the phy to be running and thus
> > also being supplied by its reference clock.
> >
> > While there exist the possibility and dt-binding to declare these
> > input clocks for each phy in the phy-dt-node, this is only relevant
> > _after_ the phy has been detected and during the drivers probe-run.
> >
> > This results in a chicken-and-egg-problem. The refclks in the CRU are
> > running on boot of course, but phy-probing can very well happen after
> > clk_disable_unused has run.
> >
> > In the past I tried to make clock-handling part of the mdio bus code [0=
]
> > but that wasn't very well received, due to it being specific to OF and
> > clocks with the consensus being that resources needed for detection
> > need to be enabled before.
> >
> > So to make probing ethernet phys using the internal refclks possible,
> > make those 2 clocks critical.
>
> Quite an unfortunate situation. I must say that I don't really like this
> patch as it's only helps to solve this on RK3588 and additionally this
> change is easily lost when we update the clock drivers from Linux.
>
> I don't see an easy solution for this issue, so I applied this patch for
> now. Nevertheless it would be great to solve that generically in the
> long run.
>
> Sascha
>
> >
> > [0] https://lore.kernel.org/netdev/13590315.F0gNSz5aLb@diego/T/
> >
> > Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> > ---
> >  drivers/clk/rockchip/clk-rk3588.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/c=
lk-rk3588.c
> > index 736ce4a543..f6d16ed0cf 100644
> > --- a/drivers/clk/rockchip/clk-rk3588.c
> > +++ b/drivers/clk/rockchip/clk-rk3588.c
> > @@ -794,10 +794,10 @@ static struct rockchip_clk_branch rk3588_clk_bran=
ches[] __initdata =3D {
> >       COMPOSITE(MCLK_GMAC0_OUT, "mclk_gmac0_out", gpll_cpll_p, 0,
> >                       RK3588_CLKSEL_CON(15), 7, 1, MFLAGS, 0, 7, DFLAGS=
,
> >                       RK3588_CLKGATE_CON(5), 3, GFLAGS),
> > -     COMPOSITE(REFCLKO25M_ETH0_OUT, "refclko25m_eth0_out", gpll_cpll_p=
, 0,
> > +     COMPOSITE(REFCLKO25M_ETH0_OUT, "refclko25m_eth0_out", gpll_cpll_p=
, CLK_IS_CRITICAL,
> >                       RK3588_CLKSEL_CON(15), 15, 1, MFLAGS, 8, 7, DFLAG=
S,
> >                       RK3588_CLKGATE_CON(5), 4, GFLAGS),
> > -     COMPOSITE(REFCLKO25M_ETH1_OUT, "refclko25m_eth1_out", gpll_cpll_p=
, 0,
> > +     COMPOSITE(REFCLKO25M_ETH1_OUT, "refclko25m_eth1_out", gpll_cpll_p=
, CLK_IS_CRITICAL,
> >                       RK3588_CLKSEL_CON(16), 7, 1, MFLAGS, 0, 7, DFLAGS=
,
> >                       RK3588_CLKGATE_CON(5), 5, GFLAGS),
> >       COMPOSITE(CLK_CIFOUT_OUT, "clk_cifout_out", gpll_cpll_24m_spll_p,=
 0,
> > --
> > 2.38.2
> >
> >
> >
>
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  =
|
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|


