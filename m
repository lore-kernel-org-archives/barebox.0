Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9Bdn-0003X4-7q
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 07:34:32 +0000
Date: Mon, 11 Apr 2011 09:34:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110411073428.GD7285@pengutronix.de>
References: <4DA2AC28.3050802@selea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4DA2AC28.3050802@selea.com>
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
Subject: Re: imx25 3 stack problem
To: Omar Pighi <pighi@selea.com>
Cc: barebox@lists.infradead.org

Hi Omar,

On Mon, Apr 11, 2011 at 09:22:16AM +0200, Omar Pighi wrote:
> Hi,
> 
> I downloaded the last version of barebox and using the tolchain
> downloaded from pengutronix (not the last one).
> i compiled with ARCH=arm and CROSS_COMPILER=....
> i configured it with make menuconfig
> than make
> put it on the nand flash using the ATK toolkit.
> try to boot (from NAND flash )but nothing happen....
> the hardware is working because if i do the same with the u-boot
> included with the BSP from freescale it works fine.
> reading the mailing list a lot of people is using barebox on imx25 , so
> it is my fault.... but what i can check? to fix it?

First thing to check is if barebox runs as second stage loader. Flash
U-Boot back to your board, load barebox.bin to ram and jump to this
address using U-Boots 'go' command.
The i.MX processors support internal and external boot modes. barebox
expects the board to be in internal boot mode. Are your jumpers set
correctly for this mode?

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
