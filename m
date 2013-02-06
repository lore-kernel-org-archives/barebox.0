Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U39rw-0006Qz-Ez
 for barebox@lists.infradead.org; Wed, 06 Feb 2013 18:37:17 +0000
Date: Wed, 6 Feb 2013 19:37:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130206183714.GJ1906@pengutronix.de>
References: <1360083234-8252-1-git-send-email-h.feurstein@gmail.com>
 <20130205181022.GA27438@pengutronix.de>
 <CAFfN3gV+ddEDNjzKjKBMnEsoM9csqE3cVj1NHQsLpj_VnbTrJg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFfN3gV+ddEDNjzKjKBMnEsoM9csqE3cVj1NHQsLpj_VnbTrJg@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC PATCH] ARM i.MX6: Add support for SabreSD board
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

On Wed, Feb 06, 2013 at 04:55:45PM +0100, Hubert Feurstein wrote:
> Hi Steffen,
> 
> 2013/2/5 Steffen Trumtrar <s.trumtrar@pengutronix.de>:
> >> +static int sabresd_devices_init(void)
> >> +{
> >> +     imx6_add_mmc1(&sabresd_sd2_data);
> >> +     imx6_add_mmc2(&sabresd_sd3_data);
> >> +     imx6_add_mmc3(&sabresd_sd4_data);
> >> +
> >> +     sabresd_enet_setup();
> >
> > I think this is not necessary. The SabreSD ethernet works without this
> > and you can merge the two pinmuxings. On the SabreLite this was necessary
> > because of remuxing.
> OK
> 
> > The rest of the ethernet looks okay though and should work. I have a v2012.08.0
> > barebox for the SabreSD that only does ethernet (Forgot to mainline the patches
> > :-( ). The pinctrl and the rest is almost the same. The only difference is the
> > rgmii_rework.
> > I have
> >         imx6_add_fec(&fec_info);
> >         mx6_rgmii_rework();
> I recognized, that my rework code is the same as for the Arm2-board.
> But ethernet is still not working yet.

The phy rework code is phy specific. You have to look at the phy
datasheet to guess the correct values (Or look at the FSL sourcecode)

> Hit m for menu or any other key to stop autoboot:  3
> 
> type exit to get to the menu
> barebox@SabreSD:/
> barebox@SabreSD:/ dhcp
> 1000Mbps full duplex link detected

I have never tested gigabit support under barebox. Maybe connect to a
100MBit switch for now?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
