Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U0pJO-0008Ma-DI
 for barebox@lists.infradead.org; Thu, 31 Jan 2013 08:15:59 +0000
Date: Thu, 31 Jan 2013 09:15:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130131081555.GL1906@pengutronix.de>
References: <CAAfyv370GDsJuAKMdZ4eQsHTqvy+cM_=WPk1Og_UkQDy-+dd=g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAfyv370GDsJuAKMdZ4eQsHTqvy+cM_=WPk1Og_UkQDy-+dd=g@mail.gmail.com>
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
Subject: Re: current master pandaboard booting broken
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

Hi Marek,

On Thu, Jan 31, 2013 at 12:07:42AM +0100, Belisko Marek wrote:
> Hi,
> 
> I'm just build MLO + barebox.bin for panda from actual master
> but booting failed when trying to run barebox.bin:
> 
> barebox 2013.01.0-00158-g1e8c9c5 #1 Wed Jan 30 23:06:40 CET 2013
> 
> 
> Board: Texas Instrument's Panda
> PandaBoard Revision: 003
> omap-hsmmc omap4-hsmmc0: registered as omap4-hsmmc0
> mci mci0: registered disk0
> malloc space: 0x84000000 -> 0x85ffffff (size 32 MiB)
> stack space:  0x8f000000 -> 0x8f007fff (size 32 KiB)
> booting from MMC1
> 
> Any ideas?

Strange, I just checked, works for me:

 Panda
PandaBoard Revision: 003
omap-hsmmc omap4-hsmmc0: registered as omap4-hsmmc0
mci mci0: registered disk0
malloc space: 0x84000000 -> 0x85ffffff (size 32 MiB)
stack space:  0x8f000000 -> 0x8f007fff (size 32 KiB)
booting from MMC1


barebox 2013.01.0-00160-g8d5faa8 #6 Thu Jan 31 09:06:05 CET 2013


Board: Texas Instrument's Panda
registered netconsole as cs1
PandaBoard Revision: 003
I2C probe
i2c-omap i2c-omap0: bus 0 rev4.0 at 100 kHz
omap-hsmmc omap4-hsmmc0: registered as omap4-hsmmc0
mci mci0: registered disk0
ehci ehci0: USB EHCI 1.00
malloc space: 0x8d000000 -> 0x8effffff (size 32 MiB)
stack space:  0x8cff8000 -> 0x8cffffff (size 32 KiB)
running /env/bin/init...

Hit m for menu or any other key to stop autoboot:  3

type exit to get to the menu

I just wonder since when the banner does not show up for the MLO
anymore.

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
