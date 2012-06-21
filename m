Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from canuck.infradead.org ([2001:4978:20e::1])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShmfY-0007BM-QE
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 19:03:52 +0000
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShmfX-0000mb-NB
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 19:03:52 +0000
Date: Thu, 21 Jun 2012 21:03:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120621190350.GK28394@pengutronix.de>
References: <1340270178-2615-1-git-send-email-jbe@pengutronix.de>
 <1340270178-2615-3-git-send-email-jbe@pengutronix.de>
 <20120621182757.GF28394@pengutronix.de>
 <201206212101.42996.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201206212101.42996.jbe@pengutronix.de>
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
Subject: Re: [PATCH 2/2] Add two architectures which can detect the reset
 source
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jun 21, 2012 at 09:01:42PM +0200, Juergen Beisert wrote:
> Hi Sascha,
> 
> Sascha Hauer wrote:
> > On Thu, Jun 21, 2012 at 11:16:18AM +0200, Juergen Beisert wrote:
> > > These are examples how to provide the reset source. Not really tested on
> > > the corresponding hardware yet.
> >
> > I did. On i.MX1 it does not work. The reset source register is not
> > inside the watchdog module, but at 0x0021b800 (Reset source register,
> > RSR)
> 
> Hmm, in my old MC9328MX1 manual the watchdog register at 0x201008 (=Watchdog 
> Status Register) reports in bit 0 (=TOUT) if the watchdog timed out.
> 
> But the RSR seems a more reliable source to read the status.
> 
> > On i.MX27 it correctly detects a watchdog reset but not a power on
> > reset. On i.MX27 it must be:
> >
> > #  define WDOG_WRSR_EXT (1 << 3)
> > #  define WDOG_WRSR_PWR (1 << 4)
> 
> Ups, sure. "not really tested"...I told you so ;)
> 
> > i.MX51 does not seem to have a power-on-reset bit, at least not in the
> > watchdog module. I didn't check the other i.MXs
> 
> Time for a #ifdef hell?

At least the bits do not conflict. The bit which is the POR bit on
i.MX27 is reserved on i.MX51.

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
