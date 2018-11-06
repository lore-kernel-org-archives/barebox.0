Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJwqT-0006gl-Rz
 for barebox@lists.infradead.org; Tue, 06 Nov 2018 08:36:23 +0000
Date: Tue, 6 Nov 2018 09:36:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181106083609.7o4j2p6ltvezae2o@pengutronix.de>
References: <20181019141242.8687-1-m.niestroj@grinn-global.com>
 <20181026065921.dxclwuj4i75x32qx@pengutronix.de>
 <87pnvnl58i.fsf@grinn-global.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87pnvnl58i.fsf@grinn-global.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] ARM: i.MX: Add liteboard support
To: Marcin =?iso-8859-15?Q?Niestr=F3j?= <m.niestroj@grinn-global.com>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

Hi Marcin,

On Fri, Nov 02, 2018 at 07:11:09PM +0100, Marcin Niestr=F3j wrote:
> >> +bbu_register:
> >> +	imx6_bbu_internal_mmc_register_handler("emmc", "/dev/mmc1.barebox",
> >> +					emmc_flag);
> >> +	imx6_bbu_internal_mmcboot_register_handler("emmc-boot", "mmc1",
> >> +					emmc_boot_flag);
> >> +}
> >
> > I'm not sure if the way you switch the default handler to the current
> > bootsource might not be a bit confusing. For example if you start from
> > eMMC user partition and execute the mmcboot handler once then the
> > default will change from user partition to boot next time.
> =

> I am not sure what introduces more confusion here: choosing default
> handler based on eMMC boot configuration or implicitly switching to eMMC
> boot partitions when running mmcboot handler (even if they were disabled
> before running that handler). I think it is the latter.
> =

> Maybe we should only switch between boot0 <-> boot1 partitions, but do
> not change eMMC boot configuration when none of boo0 and boot1 were
> configured? I looks logical that `barebox_update ...` command should
> only update bootloader on specified target, no implicit boot source
> changes.
> =

> > Also if you think of the SD slot as a temporary boot source to recover
> > the eMMC bootloader then you might want to keep the default boot slot
> > as eMMC even if you are booting from SD currently.
> =

> If eMMC has valid bootloader (at least valid header with DCD for NXP
> processors), then SD card will not be booted without changing boot
> configuration on dip switch.
> =

> In case of no valid bootloader on eMMC processor will actually try to
> boot from SD card, but this is due the fact that SD card is on esdhc0
> interface on this board, which is tried when configured boot source did
> not work.
> =

> >
> > I'll merge it as is if you think it's fine, but otherwise I suggest to
> > keep the default as eMMC boot partition. Maybe the others are not even
> > needed at all.
> =

> I've looked at other boards and there is no consistency across them, i.e
> some boards set always the same handler as default, some choose default
> handler based on bootsource.

Indeed, unfortunately there is no consistency.

> =

> > Less choices make it easier for the user to pick the right one ;)
> =

> But at the same time on development boards we also want to give users
> options they can easily test, before designing their own solution :)

As said, these were only suggestions, I'm fine with either way.

> > You should check for index out of bounds before using boot_source_idx as
> > an array index, even when you know you only have 0 and 1 as boot
> > sources.
> =

> Okay, I will fix that in v3.

I'll wait for v3 then.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
