Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6r7P-0002NE-IE
 for barebox@lists.infradead.org; Wed, 26 Feb 2020 07:28:32 +0000
Received: by mail-vs1-xe44.google.com with SMTP id c18so1167504vsq.7
 for <barebox@lists.infradead.org>; Tue, 25 Feb 2020 23:28:31 -0800 (PST)
MIME-Version: 1.0
References: <CAGm1_ku5kzBoxiRYks2uLYt1D6-QPB0vJm0DygF8a2WXTC6NoQ@mail.gmail.com>
 <92a929cc-b9e6-db9b-352d-c7c271a29558@pengutronix.de>
 <CAGm1_ktTGx1MMY-jcbVrOwnwqHeHm8Qe2f2iRxEQxmY0y5HM4g@mail.gmail.com>
 <43978130-6f7d-759c-ef63-a005cb6f0934@pengutronix.de>
 <CAGm1_kt6wpsn_o4djfmycA=H3gcZEOPYoQLX=uL11jo8mb6cwQ@mail.gmail.com>
 <c58c0ce8-a2ad-8b34-debf-d120deb43df2@pengutronix.de>
 <CAGm1_kvKVzWL==J23ajf4d0YO89BXL6HuE+7RN_MdhSz5o9tfg@mail.gmail.com>
 <CAGm1_ks32TBwmARaBtE0F3RvopJ6x5-tdxETq=gC3jndEOtdYA@mail.gmail.com>
 <64cbefba-5ce4-919e-1de2-48e2247ca391@pengutronix.de>
 <CAGm1_kvpLeAgZyNiwZ1gJFCcRHCm2ijNo7JtzGZjuJx-V632rA@mail.gmail.com>
 <7ba631db-78a6-d0d6-8036-8516c0a9b948@pengutronix.de>
In-Reply-To: <7ba631db-78a6-d0d6-8036-8516c0a9b948@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Wed, 26 Feb 2020 08:27:56 +0100
Message-ID: <CAGm1_ktn8haQwkd04pbmdHvd9KhDzKB6Syg4JpvU_5w-rrpZkQ@mail.gmail.com>
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

Hi Ahmad,

On Tue, Feb 25, 2020 at 6:13 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hello,
>
> On 2/24/20 3:08 PM, Yegor Yefremov wrote:
> > I've checked out barebox master and then reverted
> > 574eed3f6fcf056aa4c9e46c4b5224e3f7844d8d (dts: update to v5.5-rc1).
> > After examining the changes, I found out that am33xx.dtsi was changed.
> > One of this changes is the following:
> >
> > -               usb: usb@47400000 {
> > -                       compatible = "ti,am33xx-usb";
> > -                       reg = <0x47400000 0x1000>;
> > -                       ranges;
> > +               usb: target-module@47400000 {
> > +                       compatible = "ti,sysc-omap4", "ti,sysc";
> > +                       reg = <0x47400000 0x4>,
> > +                             <0x47400010 0x4>;
> > +                       reg-names = "rev", "sysc";
> > +                       ti,sysc-mask = <(SYSC_OMAP4_FREEEMU |
> > +                                        SYSC_OMAP2_SOFTRESET)>;
> > +                       ti,sysc-midle = <SYSC_IDLE_FORCE>,
> > +                                       <SYSC_IDLE_NO>,
> > +                                       <SYSC_IDLE_SMART>;
> > +                       ti,sysc-sidle = <SYSC_IDLE_FORCE>,
> > +                                       <SYSC_IDLE_NO>,
> > +                                       <SYSC_IDLE_SMART>,
> > +                                       <SYSC_IDLE_SMART_WKUP>;
> > +                       clocks = <&l3s_clkctrl AM3_L3S_USB_OTG_HS_CLKCTRL 0>;
> > +                       clock-names = "fck";
> >
> > If I understand it correctly, drivers/usb/musb/musb_am335x.c still has
> > the old .compatible string:
> >
> > static __maybe_unused struct of_device_id am335x_child_dt_ids[] = {
> >         {
> >                 .compatible = "ti,am33xx-usb",
> >         }, {
> >                 /* sentinel */
> >         },
> > };
> >
> > This node was removed:
> >
> > -                       usb_ctrl_mod: control@44e10620 {
> > -                               compatible = "ti,am335x-usb-ctrl-module";
> > -                               reg = <0x44e10620 0x10
> > -                                       0x44e10648 0x4>;
> > -                               reg-names = "phy_ctrl", "wakeup";
> > -                               status = "disabled";
> > -                       };
> >
> > So there are many changes in device tree files that are not reflected
> > in the drivers. I haven't debugged it but just examined the introduced
> > changes.
>
> I see. I misunderstood your earlier answer to mean that reverting the _Linux_
> patch in question fixed the issue for you instead of reverting the whole _barebox_
> patch.
>
> I've bisected the issue in the kernel git and arrived at the same commit about
> ti,sysc that you suspected. While we have the necessary support of barebox to
> support this, the new device tree structuring changed the order in which we probed
> the different MUSB drivers. I have just sent out two patches to teach the MUSB
> drivers to accept the new world order. Your Tested-by: would be appreciated.
>
> Apparently, we already do some automatic testing for the BeagleBone, including
> barebox, with our internal DistroKit CI. I'll amend our tests, so it may catch
> new warnings after updates, like the one you encountered.

Thank you very much for your fix. An addition to the CI procedure
would be really useful.

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
