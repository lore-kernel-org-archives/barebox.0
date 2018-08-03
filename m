Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-x243.google.com ([2607:f8b0:4003:c06::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fld5i-000062-1K
 for barebox@lists.infradead.org; Fri, 03 Aug 2018 16:38:15 +0000
Received: by mail-oi0-x243.google.com with SMTP id 8-v6so10952825oip.0
 for <barebox@lists.infradead.org>; Fri, 03 Aug 2018 09:38:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAEp+FuA3HtmHQm5GsZ6DAJAYbOKJDUdVHBV4pevrHoswQ4Ktcw@mail.gmail.com>
 <20180720091145.kz2ksyeeumeqf73p@pengutronix.de>
 <CAEp+FuD5CrxiMmEQ1yV2_ugFayrs5ih-etpJfb=jw8771xdDTw@mail.gmail.com>
 <278d07f4-decf-fabc-62cb-7661b1c73a54@rempel-privat.de>
 <CAEp+FuBaOxzoc0aiXpPwm24RQw9hDB-5HiWmTCqMAPf+RYpjjg@mail.gmail.com>
 <CAEp+FuCv-C4Px35VvOW+4ONTq9RU_MELG4kzDdRggvexiXBGtA@mail.gmail.com>
 <6d5fafcb-af99-ec0f-469b-63e4e4f97c51@rempel-privat.de>
In-Reply-To: <6d5fafcb-af99-ec0f-469b-63e4e4f97c51@rempel-privat.de>
From: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Date: Fri, 3 Aug 2018 18:37:47 +0200
Message-ID: <CAEp+FuCoqbg+_G+rNSvjnJBiYS3Au8Wg7hWfUHnTpa53yKSnLw@mail.gmail.com>
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
Subject: Re: MFGTools support in barebox
To: linux@rempel-privat.de
Cc: barebox@lists.infradead.org, u.kleine-koenig@pengutronix.de

Hi,

    I have usb controller configured for OTG both in .config and
device tree sources. But still usbgadget complains about not finding
UDC

Thanks,
       Mihaita
On Fri, Aug 3, 2018 at 10:38 AM Oleksij Rempel <linux@rempel-privat.de> wrote:
>
> Hi
>
> Am 03.08.2018 um 10:21 schrieb Mihaita Ivascu:
> > Hello,
> >
> >      On the topic of enabling fastboot in barebox 2018.04, I have
> > enabled USB gadget support:
> >   USB_GADGET_DRIVER_ARC=y
> >   USB_GADGET_AUTOSTART=y
> >   USB_GADGET=y
> >   USB_GADGET_FASTBOOT=y
> >   USB_GADGET_FASTBOOT_SPARSE=y
> >
> >      I am using board and BSP from Phytec for imx6ul evk. I have
> > reviews usb code and first option USB_GADGET_DRIVER_ARC should enable
> > UDC functionality.
> >     However when tring to start fastboot according to
> > https://www.barebox.org/doc/latest/user/usb.html#android-fastboot-support
> >     I get message about UDC not found, so udc driver probe method does
> > not find any udc device.
> >
> > barebox@Phytec phyCORE-i.MX6 Ultra Lite SOM:/ usbgadget -A
> > /kernel(kernel)c,/initrd(initrd)c,/devicetree(devicetree)c
> > couldn't find an available UDC
> > usbgadget: No such device
> >
> >     Does anybody has experience with this topic, what am I missing in
> > the configuration steps or where could find complete steps on enabling
> > fastboot in barebox?
>
> You are missing actual USB Controler which should be configured to work
> in gadget/otg mode.
>
> --
> Regards,
> Oleksij
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
