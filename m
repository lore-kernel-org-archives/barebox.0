Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1erhij-0007cb-RV
 for barebox@lists.infradead.org; Fri, 02 Mar 2018 10:15:24 +0000
Date: Fri, 2 Mar 2018 11:15:05 +0100
From: 'Sascha Hauer' <s.hauer@pengutronix.de>
Message-ID: <20180302101505.iawtfiddffoswajt@pengutronix.de>
References: <001601d3b17a$a176cbc0$e4646340$@qq.com>
 <20180302073645.az7o7zxeysrafxtw@pengutronix.de>
 <000001d3b205$12bea160$383be420$@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000001d3b205$12bea160$383be420$@qq.com>
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
Subject: Re: =?utf-8?B?562U5aSN?= =?utf-8?Q?=3A?= freescale-mx28-evk run from
 ram
To: duhuanpeng <548708880@qq.com>
Cc: barebox@lists.infradead.org

On Fri, Mar 02, 2018 at 05:01:37PM +0800, duhuanpeng wrote:
> > I assume you use freescale-mx28-evk_defconfig, right?
> Yes.
> 
> Which image do you start? It seems you are trying to start barebox.bin.
> > barebox.bin and barebox-freescale-mx28evk-2nd.img
> It should be images/barebox-freescale-mx28evk-2nd.img instead.
> 
> The image should be linked to 0x0, that is right. The code is position
> independent though and the full barebox relocates itself to the end of the
> available SDRAM automatically. TEXT_BASE is not relevant here.
> The start symbol is still 0x00000000 even I change TEXT_BASE in menuconfig.
> my board have 64MiB ram. Modified board. 
> Very cheap one, just 33?. :D
> EasyARM-i.MX283A

You are running on a board which actually is no mx28-evk, so it's no
wonder it doesn't work. Please mention that next time, because that
changes the question from "What is broken with the mx28-evk" to "What is
different on your board". This is a very important detail to answer
questions.

Anyway, you say your board only has 64MiB of RAM, so you must at least
change:

ENTRY_FUNCTION(start_barebox_freescale_mx28evk, r0, r1, r2)
{
        barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, NULL);
}

to SZ_64M. Other differences might include the pinmux and the UART port
number which is used for console output.

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
