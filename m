Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R9A7t-0004Sw-1V
	for barebox@lists.infradead.org; Thu, 29 Sep 2011 06:29:46 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 29 Sep 2011 08:29:42 +0200
References: <201109281216.14413.jbe@pengutronix.de>
	<201109281458.09005.jbe@pengutronix.de>
	<20110928175459.GB31404@pengutronix.de>
In-Reply-To: <20110928175459.GB31404@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201109290829.42803.jbe@pengutronix.de>
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
Subject: Re: Anybody working on Samsung S3C64xx support
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> On Wed, Sep 28, 2011 at 02:58:08PM +0200, Juergen Beisert wrote:
> > Myself wrote:
> > > is anybody working on Barebox support for the ARM11 based S3C6410 CPU
> > > from Samsung (just to be sure to not re-invent the wheel)?
> >
> > When adding the S3C6410 CPU support: Should I try to extend the existing
> > S3C24xx family (its uses an ARMv4 core) with the ARMv6 core S3C64xx
> > family, or better a separate mach-* directory? Both CPUs sharing some
> > peripherals, but with many little differences (known from i.MX...)
>
> I would recommend the same directory. The core v6 vs. v6 is irrelevant
> for the port and the fact that they share peripherals suggests that it's
> not that different from the older Samgsungs. What does the kernel do?

The kernel uses "arch/arm/mach-s3c2440 and "arch/arm/mach-s3c64xx" 
with "arch/arm/plat-s3c24xx" and "arch/arm/plat-samsung". So, no easy answer. 
Maybe this structure has only historical reasons.
I will try to include both SoCs into one directory.

Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-5121-206917-5128 |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
