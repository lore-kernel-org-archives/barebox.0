Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STUno-0001TO-BO
 for barebox@lists.infradead.org; Sun, 13 May 2012 09:09:20 +0000
Date: Sun, 13 May 2012 11:09:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120513090917.GX27341@pengutronix.de>
References: <4FAE8E66.4010701@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4FAE8E66.4010701@gmail.com>
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
Subject: Re: [Pull request] Minimal S5PV210 support
To: Alexey Galakhov <agalakhov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Alexey,

On Sat, May 12, 2012 at 10:23:02PM +0600, Alexey Galakhov wrote:
> This is minimal working Samsung S5PV210 CPU support and very minimal
> example Tiny210 board support. No working MMC or NAND drivers yet.
> 
> It is able to start from MMC using iROM, can blink LEDs and has working
> command-line. It has working DRAM and clock initialization. Also there
> is BL1 file cooker.
> 
> The checksummed image is named barebox.s5p and should be dd-ed from 1st
> 512-byte sector of an MMC card.
> 
> TODO: add S5P NAND driver, add MMC driver.
> TODO: get rid of iROM booting.
> TODO: support USB and DM9000 in Tiny210.
> 
> The following changes since commit c7c32736bcd428ef146fa49846defaeff0679fdb:
> 
>   i2c: Fix barebox crash when 'count' is not set for i2c_read command
> (2012-05-11 20:12:19 +0200)
> 
> are available in the git repository at:
> 
>   git://github.com/agalakhov/barebox.git master
> 
> for you to fetch changes up to 1a50adbbea14a995e14301725b969680410a3f24:
> 
>   S5P boot header and image generator (2012-05-12 22:08:58 +0600)
> 
> ----------------------------------------------------------------
> Alexey Galakhov (9):
>       Support most Samsung SoCs in S3C serial driver
>       Fine split S3C arch dependencies from generic code
>       Minimal S5PV210 + Tiny210 support (2nd stage only)
>       S5PV210 iROM magic boot code
>       S5P DRAM support
>       S5P lowlevel clock init
>       Revert "S5PV210 iROM magic boot code"
>       S5P iROM boot support - improved
>       S5P boot header and image generator

I can't see these patches on the list. Can you post them first?
Otherwise I can't pull this series.

Thanks
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
