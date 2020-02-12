Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1n4q-0003H4-08
 for barebox@lists.infradead.org; Wed, 12 Feb 2020 08:08:57 +0000
Date: Wed, 12 Feb 2020 09:08:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200212080845.o7j2pej3zg7m7ood@pengutronix.de>
References: <BL0PR01MB52513F7AE42E4E6ED527380A8F1C0@BL0PR01MB5251.prod.exchangelabs.com>
 <566f7758-587f-e833-cee7-ee8e7133e3ac@pengutronix.de>
 <BL0PR01MB5251A7D93EE5446BFBF1F8778F180@BL0PR01MB5251.prod.exchangelabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BL0PR01MB5251A7D93EE5446BFBF1F8778F180@BL0PR01MB5251.prod.exchangelabs.com>
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
Subject: Re: imx27 phycard update problems from barebox 2019.01.0 to 2020.01.0
To: "Koelle, Holger" <Holger.Koelle@allegion.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Hi Holger,

On Tue, Feb 11, 2020 at 03:33:12PM +0000, Koelle, Holger wrote:
> Hey,
> 
> today i followed yout recommends with git bisect.
> 
> I've found the offending commit. 
> It is Commit :  [b0348d677bb47bdbd368983603b3e9604528d4ed] ARM: Compile with -fPIE
> 
> If I remove the Compilerflag (line 145) :
> 
> CPPFLAGS += -fPIE 
> 
> from arch/arm/Makefile , then every Barebox Version (include v2020.01.0) compile and run fine on phycard imx27.
> 
> Whats the impact if I remove this flag? Does imx27 not support this option?

The problem here is that the i.MX27 only loads 2k of memory from NAND
initially from which we have to bootstrap ourselves. This code is
cumbersome to write in assembly, so it is written in C. This requires
us to run code from a location it is not linked at. the -fPIE flag
influences the way how this code is compiled and apparently it doesn't
cope well with this flag.

The relevant code is in arch/arm/mach-imx/external-nand-boot.c.

I can see if I can find some time to debug it. Which toolchain are you
using?

Regards,
 Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
