Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glqfI-0008D0-3a
 for barebox@lists.infradead.org; Tue, 22 Jan 2019 07:40:11 +0000
Date: Tue, 22 Jan 2019 08:40:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190122074003.sclz4twikg3ykbqj@pengutronix.de>
References: <20190121175305.31674-1-vivien.didelot@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190121175305.31674-1-vivien.didelot@gmail.com>
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
Subject: Re: [PATCH 1/2] ARM: zii-vf610-dev: fix boot from SD
To: Vivien Didelot <vivien.didelot@gmail.com>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

Hi Vivien,

On Mon, Jan 21, 2019 at 12:53:04PM -0500, Vivien Didelot wrote:
> VF610 Dev Rev B and VF610 Dev Rev C boot from SD card attached to
> SDHCI1, and CFU1, SPU3 and SCU4 boot from eMMC attached to SDHCI2.
> 
> Since 5f99a8d40305 ("dts: VFxxx: Add aliases for ESDHC controllers"),
> these devices were renamed from mci0 and mci1 to mmc1 and mmc2.
> 
> To fix this, completely drop the automount-sd script, probe mmcX from
> the boot/sd script directly and use the mountpoint /mnt/mmcX.0 from
> there. At the same time, make the sd variable non global.
> 
> Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
> ---
> --- a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/automount-sd
> +++ /dev/null
> @@ -1,13 +0,0 @@
> -#!/bin/sh
> -
> -if [ x${global.hostname} = xdev-rev-b -o x${global.hostname} = xdev-rev-c ];
> -then
> -    global sd=0
> -else
> -    global sd=1
> -fi
> -
> -mkdir -p /mnt/sd
> -automount /mnt/sd 'mci${global.sd}.probe=1 && mount /dev/disk${global.sd}.0 /mnt/sd'

Any special reason you evaluate $global.sd at the time the automount is
executed? I would expect a local variable here and the command put in
"" rather than ''

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
