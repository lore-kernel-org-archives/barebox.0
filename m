Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YhZKx-0007R8-Ku
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 08:03:20 +0000
Date: Mon, 13 Apr 2015 10:02:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150413080255.GD9742@pengutronix.de>
References: <1428708181-12506-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1428708181-12506-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/5] MIPS: xburst: add initial JZ4770 SoC support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Sat, Apr 11, 2015 at 02:22:56AM +0300, Antony Pavlov wrote:
> This patchseries adds initial JZ4770 SoC and Ainol Novo7 Paladin tablet support.
> 
> The patchseries can be found on github:
>     https://github.com/frantony/barebox/tree/20150411.jz4770
> 
> The most notable problems and todos:
> 
>   * no PBL support; I have a PBL-enabled barebox version
>     for the tablet, so barebox can be used as only bootloader for tablet.
>     But this version is based on some dirty hacks
>     e.g. it uses special pre-compiled X-Boot blob for bootstraping.
> 
>     Nowadays barebox mips PBL is written in assembler
>     and I see no way to switch it to C. gcc-4.9.1 for mips has no __naked
>     directive support, see this gcc output
> 
>         $ cat > 1.c <<EOF;
>         int __attribute__((naked)) __attribute__((no_instrument_function)) main()
>         {
>         }
>         EOF
> 
>         $ /opt/mips-2014.11/bin/mips-linux-gnu-gcc -o 1.o 1.c
>         1.c:2:1: warning: 'naked' attribute directive ignored [-Wattributes]
>          {
>          ^
> 
>     So for moving X-Boot bootstrap C-code into barebox PBL we have to convert it
>     from C to assembler language :(

Is this really necessary? Only the entry point up to the point where you
setup the stack needs to be assembly, from then on C can be used.


> 
>     Please see JZ4770 bootstrap code in these repos:
> 
>         https://github.com/gcwnow/UBIBoot/
>         https://github.com/IngenicSemiconductor/X-BOOT_NPM801
> 
>   * no clk support just now; we can easely steal it from linux
>     JZ4780 support code (see wip-ci20-v4.1 branch in https://github.com/paulburton/linux);
> 
>   * no hardware clocksource support; this can be easely fixed,
>     see linux JZ4780 support code again;
>     also see https://github.com/frantony/barebox/blob/next.xburst.jz4770.20130511/arch/mips/mach-xburst/csrc-jz4770.c

Before merging this series I'd like to have clocksource support. Using
the dummy clocksource is fine during initial bringup, but I think merged
code should not depend on it.

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
