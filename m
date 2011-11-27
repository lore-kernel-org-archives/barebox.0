Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUcgb-0006vo-In
 for barebox@lists.infradead.org; Sun, 27 Nov 2011 11:14:20 +0000
Date: Sun, 27 Nov 2011 12:12:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111127111221.GL27267@pengutronix.de>
References: <201111261603.16236.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201111261603.16236.jbe@pengutronix.de>
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
Subject: Re: Current Barebox/Next and GCC-4.6.2
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sat, Nov 26, 2011 at 04:03:15PM +0100, Juergen Beisert wrote:
> Hi,
> 
> compiling the current Barebox Next branch with a 4.6.2 GCC gives me the
> following list of warnings.
> 
> common/console.c: In function 'fprintf':
> common/console.c:333:7: warning: variable 'i' set but not used [-Wunused-but-set-variable]

This one should be fixed in master.

> 
> drivers/mtd/nand/nand_bbt.c: In function 'search_bbt':
> drivers/mtd/nand/nand_bbt.c:466:6: warning: variable 'bits' set but not used [-Wunused-but-set-variable]
> 
> drivers/usb/core/usb.c: In function 'usb_parse_config':
> drivers/usb/core/usb.c:183:17: warning: variable 'ch' set but not used [-Wunused-but-set-variable]
> drivers/usb/core/usb.c: In function 'usb_hub_port_connect_change':
> drivers/usb/core/usb.c:1011:29: warning: variable 'portchange' set but not used [-Wunused-but-set-variable]
> 
> drivers/usb/host/ohci-hcd.c: In function 'dl_transfer_length':
> drivers/usb/host/ohci-hcd.c:961:8: warning: variable 'tdINFO' set but not used [-Wunused-but-set-variable]
> 
> This one is a little bit strange:
> 
> lib/vsprintf.c: In function 'vasprintf':
> lib/vsprintf.c:595:2: warning: generating trampoline in object (requires executable stack) [-Wtrampolines]

We should probably just silence the compiler. Our stack is executable.

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
