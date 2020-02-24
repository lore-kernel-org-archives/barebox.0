Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6EQ2-0004lC-Dk
 for barebox@lists.infradead.org; Mon, 24 Feb 2020 14:09:14 +0000
Received: by mail-vs1-xe43.google.com with SMTP id t12so5716514vso.13
 for <barebox@lists.infradead.org>; Mon, 24 Feb 2020 06:09:10 -0800 (PST)
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
In-Reply-To: <64cbefba-5ce4-919e-1de2-48e2247ca391@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Mon, 24 Feb 2020 15:08:36 +0100
Message-ID: <CAGm1_kvpLeAgZyNiwZ1gJFCcRHCm2ijNo7JtzGZjuJx-V632rA@mail.gmail.com>
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

On Mon, Feb 24, 2020 at 1:02 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> On 2/24/20 12:55 PM, Yegor Yefremov wrote:
> > On Mon, Feb 24, 2020 at 12:54 PM Yegor Yefremov
> > <yegorslists@googlemail.com> wrote:
> >>
> >> On Mon, Feb 24, 2020 at 12:50 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> >>>
> >>> Hi,
> >>>
> >>> On 2/24/20 12:09 PM, Yegor Yefremov wrote:
> >>>> Can it be that musb was broken because of this change in the mainline
> >>>> linux kernel [1]?
> >>>
> >>> But you said that it works when you readd status = "okay" to some
> >>> of the USB device tree nodes? Which node was it in particular?
> >>>
> >>>> The kernel uses ti-sysc mechanism to get/configure the related hw
> >>>> blocks. If I grep for ti-sysc in kernel, I get a lot of hits. But in
> >>>> barebox, it is only drivers/bus/ti-sysc.c that I find. Seems like a
> >>>> rather big update is required.
> >>>>
> >>>> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/arch/arm/boot/dts/am33xx.dtsi?h=v5.6-rc3&id=0782e8572ce43f521ed6ff15e4a7ab9aa5acdc85
> >>>
> >>> I don't think that's the problem. Looks to me like it should work with
> >>> barebox as well. Or did you revert this patch and got USB working again?
> >>
> >> Yes, I just reverted the whole patch and got USB working again. It has
> >> nothing to do with my dts file as it is hosted only in barebox
> >> (arch/arm/dts/am335x-baltos-minimal.dts). It just includes the common
> >> DTS files like am33xx.dtsi.
> >
> > I mean, I have reverted only this one 574eed3f6fcf056aa4c9e46c4b5224e3f7844d8d.
>
> I meant that you revert the upstream device tree patch only. Either manually or by doing
> some temporary hack like symlink $BAREBOX/dts/src/arm to $LINUX/arch/arm/boot/dts
> and revert inside the kernel git tree.

I've checked out barebox master and then reverted
574eed3f6fcf056aa4c9e46c4b5224e3f7844d8d (dts: update to v5.5-rc1).
After examining the changes, I found out that am33xx.dtsi was changed.
One of this changes is the following:

-               usb: usb@47400000 {
-                       compatible = "ti,am33xx-usb";
-                       reg = <0x47400000 0x1000>;
-                       ranges;
+               usb: target-module@47400000 {
+                       compatible = "ti,sysc-omap4", "ti,sysc";
+                       reg = <0x47400000 0x4>,
+                             <0x47400010 0x4>;
+                       reg-names = "rev", "sysc";
+                       ti,sysc-mask = <(SYSC_OMAP4_FREEEMU |
+                                        SYSC_OMAP2_SOFTRESET)>;
+                       ti,sysc-midle = <SYSC_IDLE_FORCE>,
+                                       <SYSC_IDLE_NO>,
+                                       <SYSC_IDLE_SMART>;
+                       ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+                                       <SYSC_IDLE_NO>,
+                                       <SYSC_IDLE_SMART>,
+                                       <SYSC_IDLE_SMART_WKUP>;
+                       clocks = <&l3s_clkctrl AM3_L3S_USB_OTG_HS_CLKCTRL 0>;
+                       clock-names = "fck";

If I understand it correctly, drivers/usb/musb/musb_am335x.c still has
the old .compatible string:

static __maybe_unused struct of_device_id am335x_child_dt_ids[] = {
        {
                .compatible = "ti,am33xx-usb",
        }, {
                /* sentinel */
        },
};

This node was removed:

-                       usb_ctrl_mod: control@44e10620 {
-                               compatible = "ti,am335x-usb-ctrl-module";
-                               reg = <0x44e10620 0x10
-                                       0x44e10648 0x4>;
-                               reg-names = "phy_ctrl", "wakeup";
-                               status = "disabled";
-                       };

So there are many changes in device tree files that are not reflected
in the drivers. I haven't debugged it but just examined the introduced
changes.

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
