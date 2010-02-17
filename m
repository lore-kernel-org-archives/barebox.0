Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NhgTy-0006OR-IY
	for barebox@lists.infradead.org; Wed, 17 Feb 2010 09:46:11 +0000
Date: Wed, 17 Feb 2010 10:46:09 +0100
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20100217094609.GZ17643@pengutronix.de>
References: <1266331586-11253-1-git-send-email-mkl@pengutronix.de>
	<4B7AB1A0.6070903@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4B7AB1A0.6070903@pengutronix.de>
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
Subject: Re: [PATCH 00/11] arch/arm and other random cleanups
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 16, 2010 at 03:54:24PM +0100, Marc Kleine-Budde wrote:
> Marc Kleine-Budde wrote:
> > Please review and consider to apply.
> 
> The following changes since commit 2e6eb64a396b99559cd46dfd49e649521c42c010:
>   Juergen Beisert (1):
>         Fix compile time errors when DEBUG is defined
> 
> are available in the git repository at:
> 
>   git://git.pengutronix.de/git/mkl/barebox.git for-sha-cleanups
> 
> Marc Kleine-Budde (11):
>       arm/Kconfig: delete trailing whitespace
>       arm/Kconfig: removed unused TAG options
>       arm/Makefile: keep list of boards sorted
>       arm/cpu/Makefile: cleanup: propper indention
>       drivers/video/Makefile: cleanup propper indention
>       start-arm: cleanup: propper indention
>       i2c.h: fix typo in copyright
>       ioreadsb: put the whole ioreadsb function into the .text.readsb section
>       import recent include/linux/compiler*.h
>       io.h: update definitions of __raw_{read,write}*
>       common.h: add compile time check helper functions

Looks good modulo the changes mentioned.

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
