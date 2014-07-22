Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x235.google.com ([2a00:1450:4010:c04::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9YWG-0006QM-VO
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 11:46:09 +0000
Received: by mail-lb0-f181.google.com with SMTP id 10so3860174lbg.12
 for <barebox@lists.infradead.org>; Tue, 22 Jul 2014 04:45:46 -0700 (PDT)
Date: Tue, 22 Jul 2014 15:58:22 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140722155822.3a49058937190951d1873f34@gmail.com>
In-Reply-To: <53CE4594.7020601@gmail.com>
References: <1405545909-9855-1-git-send-email-antonynpavlov@gmail.com>
 <1405545909-9855-2-git-send-email-antonynpavlov@gmail.com>
 <53CE25FE.9070903@gmail.com>
 <20140722135751.c888208fdea788c15cd5ff0b@gmail.com>
 <53CE4594.7020601@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] i2c: add Marvell 64xxx driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, 22 Jul 2014 13:05:56 +0200
Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> wrote:

> On 07/22/2014 11:57 AM, Antony Pavlov wrote:
> > On Tue, 22 Jul 2014 10:51:10 +0200
> > Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> wrote:
> >> On 07/16/2014 11:25 PM, Antony Pavlov wrote:
> >>> This driver is also used for Allwinner SoCs I2C controllers.
> >>>
> >>> Ported from linux-3.15.
> >>>
> >>> The most notable barebox driver version changes:
> >>>
> >>>     * drop message offloading support;
> >>>     * add reg-io-width parameter to use driver with byte-oriented
> >>>       controller versions.
> >>>
> >>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> >>
> >> Antony,
> >>
> >> I finally finished work on xHCI and PCI on Armada 370. Now I come
> >> back with the promised review of the i2c driver.
> >>
> >> I gave this driver a quick test on Mirabox, i2c_probe just gives I2C b=
us
> >> errors. What SoC did you test the driver on?
> >
> > I test it on custom FPGA-based byte-oriented mv64xxx-style i2c controll=
er.
> >
> > Linux 3.15 driver succesfully works with my controller. The only change=
 is adding
> > mv64xxx_write/mv64xxx_read functions for enabling byte registers access.
> >
> > Have you probed your Mirabox i2c bus under linux?
> =

> Actually, I switched to Dove CuBox after I realized that Mirabox has
> nothing on i2c on-board but only externally connected ;)
>
> Now you can add my
> =

> Tested-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

Very good!

I'll send PATCH v3 in several days.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
