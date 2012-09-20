Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEmO2-0005G2-OT
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 19:26:11 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1TEmNz-00058m-Sg
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 21:26:07 +0200
Received: from jlu by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jlu@pengutronix.de>) id 1TEmNz-0004qf-Rk
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 21:26:07 +0200
Date: Thu, 20 Sep 2012 21:26:07 +0200
From: Jan Luebbe <jlu@pengutronix.de>
Message-ID: <20120920192607.GA13630@pengutronix.de>
References: <1348149724-28468-1-git-send-email-t.gamez@phytec.de>
 <1348149724-28468-2-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348149724-28468-2-git-send-email-t.gamez@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] ARM OMAP AM33XX: create new ARCH for AM33xx
To: barebox@lists.infradead.org

Hi,

On Thu, Sep 20, 2012 at 04:02:03PM +0200, Teresa G=E1mez wrote:
> Created ARCH for AM33xx boards as second stage bootloader.
> This includes:
> - Added dmtimer0
> - Created basic header files
> - Added MMC support for ARCH_AM33XX
> - Added reset function

Thanks for working on this!

I've got a barebox booting as MLO+barebox.bin from SD on the
BeagleBone, but it was a quick (or ugly) hack. A patch is here:
http://git.pengutronix.de/?p=3Dplatform-pengutronix-beagleboneti.git;a=3Dbl=
ob;f=3Dpatches/barebox-2012.07.0/0001-WIP-beaglebone-add-support-for-AM335x=
-and-board.patch

I didn't have time to polish it for mainline inclusion and it's
still based on 2012.07. I'll try to rebase it on your series and
we should have first stage support rather soon.

As the AM335x's SRAM is so large (109kB), it is possible to avoid a
second stage and have a useful barebox even as MLO.

Regards,
Jan
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
