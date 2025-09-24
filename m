Delivery-date: Wed, 24 Sep 2025 15:06:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1PC4-000ZTA-2a
	for lore@lore.pengutronix.de;
	Wed, 24 Sep 2025 15:06:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1PC3-0007Df-VO
	for lore@pengutronix.de; Wed, 24 Sep 2025 15:06:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YlpJOdNyHvV2I8xVBrzdgpMa6isUlE/1v/d573cm8fE=; b=CzU2cH3C7c9iUORH2gmjGU+La+
	l1An6Sf/NF2/XkKj3VF7lfa7/c7T+CYxmRXWl56McC16Yp1C5vtEedfqMJDcipELgjlYyJ6t6wIsQ
	RDGP8zMqljv9Y1zfmZOJ/BNy4xvLcTg0OUhmNdUgA11LqOHMPEdaZpnjeORABX78Sk9Rx/a57vsTb
	UJ4PnIaTpRlqnTnCinV6XlmfaBIaxu0oUHVgRtfQetzZFDcReaBd0K1OeTQyUBpn/aQopCr9+88aR
	SrQoC9VyjxCd++JGaAjyguKyVfcNAIP51qJA2ADvCP1aettKTd/MSHTzfEuF7/qZhizt1w5aIw31e
	sPLCNveQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1PBM-000000003el-3KTo;
	Wed, 24 Sep 2025 13:05:16 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1PBL-000000003dv-0jGl
	for barebox@lists.infradead.org;
	Wed, 24 Sep 2025 13:05:16 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-273a0aeed57so11499195ad.1
        for <barebox@lists.infradead.org>; Wed, 24 Sep 2025 06:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758719114; x=1759323914; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YlpJOdNyHvV2I8xVBrzdgpMa6isUlE/1v/d573cm8fE=;
        b=Jfad4qXYQUyTGjjGpGf1MXou8PLgqmCTd7CiQCPcCPmfrpXf+qThRaS0y5EgQd8R7b
         gtfd9bTgXP8gKvdsG/DXsPM56VhTMK2w/UlO6m38SJffo9Pbbq8MC6ihQkmeRvXaPZN0
         rIrfZPFIPZMRtLoZIFARyZfDn/gXRa4GSmRuGec2nxZzQ480c74Is1xSSXRqhDSe9nha
         g3v/Yh5LKgGfzvV37MMgI5NU56TxJb1u//I0mtV+NlOCv68p4cVhwbanN1zSjomDb5aF
         XsS/w3gw/UF54GpVJGXoKo3QBnS/qFVtQddbEV12zdqAsGuPn+U0SMU+2eTK6yEUL+2n
         wjwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758719114; x=1759323914;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YlpJOdNyHvV2I8xVBrzdgpMa6isUlE/1v/d573cm8fE=;
        b=N7JODgg5pM3gIFcUfUz7BWvEf0rORuZC36b8YPk8nsbox4sq8/Bd6qzm6kAZGsrTRz
         5jguX89bZZ3mb5OsaB8E4bXdthU9p73l3aoOX1z5mdm/AWMBRy0v3OVQKPyphrr/soIZ
         c4gq+Eviios8UDy6du8HZ+N2APjoGGq9Lkbsj0d6AE+NxQg5uKbQ9GUxhuR5pWwO2XnX
         kZ7EkpcY67Cke2cNtTOlI9YPL3+fF19J96jW9dYTf04ObfZ6clPjTr+Gw4H5LBXVhSAj
         GLAlA+Ch6Qd29RSlIU1K2nq7xoEyJ/3E22ng8mCRkvS8I431z7dK/X/+gXKL0fcyLmMD
         Mvgg==
X-Gm-Message-State: AOJu0YysH42jZ/+4+FReoZJ2kr9jwUQ+DOsf+45UZ9OwSjRuT5KGBi2X
	0igIxQmkQsFgwHJr83b4I8Gw041qRUVpDTKg21nphWS/3+ejN7mjehAImENyo0ZKIcBUaXNBjec
	ZIg3ytwWnG9YLeYLE7B6gSkU5ss4TB2MxZxep
X-Gm-Gg: ASbGncvkPya7q8fSO6eLgTyFsie0QF3fBOwYMu2rSM/xEdRMEJYa0Pu1dEZWOAuXiAp
	FiJboahLWMA/GXSzWCq/SdWtLrABh/KmQv5b6uzXsH0M9sbl+rJlDH7qVMTVvQkk32hJNovLJ9I
	nHY+noymRYdESr9d+UaAkHpb9cD6CkN9HTmscOzpEytwo68VUssa+tQZGusb+Co06ThQy6zS3vt
	d66wJA1
X-Google-Smtp-Source: AGHT+IFGkvlVuhx3NxAH6dxQ+XiCNG0cDkAK7XuYhtCMTkjRFMgg11UlfWKJg7PO4FO3N1Zcwk3mMIlSU4M6K8HLgro=
X-Received: by 2002:a17:903:1a4c:b0:267:fa8d:29a6 with SMTP id
 d9443c01a7336-27ec126acc0mr26305965ad.25.1758719113944; Wed, 24 Sep 2025
 06:05:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvQLfni2s37JYe-hDBxQfWLc2TNhrypH+-bicWXmW9o6Og@mail.gmail.com>
 <Z-6TBYRYiazahICg@pengutronix.de> <CAP1tNvR6mxe8gMSb05U20GdGqaO4N9zq-7so74+fm0DJ0iopVA@mail.gmail.com>
 <Z-6WbLbIkVS_wvLj@pengutronix.de> <CAP1tNvTfCC=f+naoA5MJXnwr8EGxL2wEsMpOVbKWGBjb=CGztg@mail.gmail.com>
 <Z--KaWCsJbI7hyxw@pengutronix.de> <CAP1tNvSL6vMx=ePmwHx-=yJGtWi2PdAfpa34PEZFPCgNrP1nhQ@mail.gmail.com>
In-Reply-To: <CAP1tNvSL6vMx=ePmwHx-=yJGtWi2PdAfpa34PEZFPCgNrP1nhQ@mail.gmail.com>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 24 Sep 2025 16:05:02 +0300
X-Gm-Features: AS18NWAeBx09aHUZFG5Xi5XeNqu0iwZjlLQO6eiKsU5T5ZmUX9dGLCx1bdeHdI0
Message-ID: <CAP1tNvRcKkBfqP_mTQf2KOzqPU=RnzjEZkfQ2kgS9MpQ9Vo6Fw@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_060515_224298_44420218 
X-CRM114-Status: GOOD (  27.99  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: RK3588 CPLL question
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello All.

There's still no successful result with properly configuring the CPLL
for the RK3588.
Without it, kernel startup becomes pointless, as important frequencies
for network
interfaces, and likely some others, remain half the speed required for
system operation.
The CPLL in U-Boot is programmed for a frequency of 1500 MHz, and it
works there,
but in barebox these actions do not bring success.

CRU_CPLL_CON1 Address: Operational Base + offset (0x01A4)
CRU_CPLL_CON6 Address: Operational Base + offset (0x01B8)
CRU_MODE_CON00 Address: Operational Base + offset (0x0280)

md -l 0xfd7c0280+1
fd7c0280: 00000545

md -l 0xfd7c01a0+28
fd7c01a0: 0000007d 00000081 00000000 00000000
fd7c01b0: 00000000 00000000 00009c00

clk_set_parent cpll xin24m
md -l 0xfd7c0280+1
fd7c0280: 00000445

md -l 0xfd7c01a0+28
fd7c01a0: 0000007d 00002081 00000000 00000000
fd7c01b0: 00000000 00000000 00004000

mw -l 0xfd7c01a4 0x20000000
<Freeze here>

So the error occurs when the CPLL is turned on. Line:
writel(HIWORD_UPDATE(0, RK3588_PLLCON1_PWRDOWN, 0), pll->reg_base +
RK3588_PLLCON(1));

I don't know what else to try...
Has anyone had any successful experience running a barebox for RK3588
with working network interfaces?

Thanks!

=D0=BF=D0=BD, 7 =D0=B0=D0=BF=D1=80. 2025=E2=80=AF=D0=B3. =D0=B2 15:31, Alex=
ander Shiyan <eagle.alexander923@gmail.com>:

>
> Hello.
>
> Unfortunately, there is still a stupor in this issue
> Any PLL can be configured normally, except CPLL.
> Changing CPLL freezes the system. I tried to use some tricks from
> U-boot, but to no avail...
>
> barebox@Diasom DS-RK3588-BTB-EVB:/ clk_set_parent cpll xin24m
> barebox@Diasom DS-RK3588-BTB-EVB:/ clk_set_rate pll_cpll 816000000
> rockchip_rk3588_pll_set_rate: changing pll_cpll to 816000000 with a
> parent rate of 24000000
> rockchip_rk3588_pll_set_params: rate settings for 816000000 p: 2, m:
> 272, s: 2, k: 0
> <freeze here>
>
> =D0=BF=D1=82, 4 =D0=B0=D0=BF=D1=80. 2025=E2=80=AF=D0=B3. =D0=B2 10:29, Sa=
scha Hauer <s.hauer@pengutronix.de>:
> >
> > On Thu, Apr 03, 2025 at 05:20:33PM +0300, Alexander Shiyan wrote:
> > > I found this hack:
> > > https://github.com/u-boot/u-boot/blob/master/drivers/clk/rockchip/clk=
_rk3588.c#L1933
> >
> > Let's do the same then.
> >
> > It would be nicer to have the CPLL setting in the assigned-clock-rates
> > property. That should be done in the upstream dtsi though, overwriting
> > the assigned-clock-rates in the barebox dtsi would mean we would have t=
o
> > copy the many existing settings and hope they don't change upstream.
> >
> > Sascha
> >
> > >
> > > =D1=87=D1=82, 3 =D0=B0=D0=BF=D1=80. 2025=E2=80=AF=D0=B3. =D0=B2 17:08=
, Sascha Hauer <s.hauer@pengutronix.de>:
> > > >
> > > > On Thu, Apr 03, 2025 at 05:01:05PM +0300, Alexander Shiyan wrote:
> > > > > Thanks Sascha!
> > > > >
> > > > > So something is wrong here.
> > > > > At least the GMAC0/1 interfaces end up with the wrong frequency.
> > > > > I have another image with u-boot and Rockchip kernel where CPLL
> > > > > is 1.5GHz and network is ok.
> > > >
> > > > The only place where the PLL rates are configured in barebox is via
> > > > assigned-clock-rates in the clock controller node. PLL_CPLL doesn't=
 show
> > > > up there, so I would assume it is just left to the default whatever=
 that
> > > > is.
> > > >
> > > > You could chainload barebox from U-Boot and see what the CPLL rate =
is
> > > > then.
> > > >
> > > > Sascha
> > > >
> > > > --
> > > > Pengutronix e.K.                           |                       =
      |
> > > > Steuerwalder Str. 21                       | http://www.pengutronix=
.de/  |
> > > > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917=
-0    |
> > > > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917=
-5555 |
> > >
> >
> > --
> > Pengutronix e.K.                           |                           =
  |
> > Steuerwalder Str. 21                       | http://www.pengutronix.de/=
  |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0  =
  |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-555=
5 |


