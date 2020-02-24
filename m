Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6CLK-0006cJ-SP
 for barebox@lists.infradead.org; Mon, 24 Feb 2020 11:56:12 +0000
Received: by mail-vs1-xe44.google.com with SMTP id n27so5516178vsa.0
 for <barebox@lists.infradead.org>; Mon, 24 Feb 2020 03:56:10 -0800 (PST)
MIME-Version: 1.0
References: <CAGm1_ku5kzBoxiRYks2uLYt1D6-QPB0vJm0DygF8a2WXTC6NoQ@mail.gmail.com>
 <92a929cc-b9e6-db9b-352d-c7c271a29558@pengutronix.de>
 <CAGm1_ktTGx1MMY-jcbVrOwnwqHeHm8Qe2f2iRxEQxmY0y5HM4g@mail.gmail.com>
 <43978130-6f7d-759c-ef63-a005cb6f0934@pengutronix.de>
 <CAGm1_kt6wpsn_o4djfmycA=H3gcZEOPYoQLX=uL11jo8mb6cwQ@mail.gmail.com>
 <c58c0ce8-a2ad-8b34-debf-d120deb43df2@pengutronix.de>
 <CAGm1_kvKVzWL==J23ajf4d0YO89BXL6HuE+7RN_MdhSz5o9tfg@mail.gmail.com>
In-Reply-To: <CAGm1_kvKVzWL==J23ajf4d0YO89BXL6HuE+7RN_MdhSz5o9tfg@mail.gmail.com>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Mon, 24 Feb 2020 12:55:35 +0100
Message-ID: <CAGm1_ks32TBwmARaBtE0F3RvopJ6x5-tdxETq=gC3jndEOtdYA@mail.gmail.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: musb is broken in master
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: t.remmet@phytec.de, barebox <barebox@lists.infradead.org>

On Mon, Feb 24, 2020 at 12:54 PM Yegor Yefremov
<yegorslists@googlemail.com> wrote:
>
> On Mon, Feb 24, 2020 at 12:50 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> >
> > Hi,
> >
> > On 2/24/20 12:09 PM, Yegor Yefremov wrote:
> > > Can it be that musb was broken because of this change in the mainline
> > > linux kernel [1]?
> >
> > But you said that it works when you readd status = "okay" to some
> > of the USB device tree nodes? Which node was it in particular?
> >
> > > The kernel uses ti-sysc mechanism to get/configure the related hw
> > > blocks. If I grep for ti-sysc in kernel, I get a lot of hits. But in
> > > barebox, it is only drivers/bus/ti-sysc.c that I find. Seems like a
> > > rather big update is required.
> > >
> > > [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/arch/arm/boot/dts/am33xx.dtsi?h=v5.6-rc3&id=0782e8572ce43f521ed6ff15e4a7ab9aa5acdc85
> >
> > I don't think that's the problem. Looks to me like it should work with
> > barebox as well. Or did you revert this patch and got USB working again?
>
> Yes, I just reverted the whole patch and got USB working again. It has
> nothing to do with my dts file as it is hosted only in barebox
> (arch/arm/dts/am335x-baltos-minimal.dts). It just includes the common
> DTS files like am33xx.dtsi.

I mean, I have reverted only this one 574eed3f6fcf056aa4c9e46c4b5224e3f7844d8d.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
