Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QiuyT-0001OC-2L
	for barebox@lists.infradead.org; Mon, 18 Jul 2011 21:03:33 +0000
Date: Mon, 18 Jul 2011 23:03:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110718210328.GJ20587@pengutronix.de>
References: <1310994370-28444-1-git-send-email-antonynpavlov@gmail.com>
	<CAJfOKByNkqH8UKB6OU_rh67oG3c43=fW_7wRa=+Lc0Rf7HrcBw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJfOKByNkqH8UKB6OU_rh67oG3c43=fW_7wRa=+Lc0Rf7HrcBw@mail.gmail.com>
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
Subject: Re: [PATCH v2 1/2] debug_ll.h: add PUTS_LL() function
To: Franck JULLIEN <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 18, 2011 at 03:26:33PM +0200, Franck JULLIEN wrote:
> 2011/7/18 Antony Pavlov <antonynpavlov@gmail.com>
> 
> 
> 
> Hello,
> 
> Could we add an entry for CONFIG_DEBUG_LL in the debugging menu
> (common/Kconfig) ?
> This file makes barebox not compile if we are not on arm arch due to the
> <mach/debug_ll.h> inclusion.
> 
> I know it's not related to your patch :)

Patches that make the lowlevel debug stuff more generally useful
are very welcome. It's not nice to have to modify the code to make
it work, but I couldn't find the energy to do something about it.

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
