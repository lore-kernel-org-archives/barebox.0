Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R8yLW-0005PY-Nj
	for barebox@lists.infradead.org; Wed, 28 Sep 2011 17:55:04 +0000
Date: Wed, 28 Sep 2011 19:55:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110928175459.GB31404@pengutronix.de>
References: <201109281216.14413.jbe@pengutronix.de>
	<201109281458.09005.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201109281458.09005.jbe@pengutronix.de>
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
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 28, 2011 at 02:58:08PM +0200, Juergen Beisert wrote:
> Myself wrote:
> > is anybody working on Barebox support for the ARM11 based S3C6410 CPU from
> > Samsung (just to be sure to not re-invent the wheel)?
> 
> When adding the S3C6410 CPU support: Should I try to extend the existing 
> S3C24xx family (its uses an ARMv4 core) with the ARMv6 core S3C64xx family, 
> or better a separate mach-* directory? Both CPUs sharing some peripherals, 
> but with many little differences (known from i.MX...)

I would recommend the same directory. The core v6 vs. v6 is irrelevant
for the port and the fact that they share peripherals suggests that it's
not that different from the older Samgsungs. What does the kernel do?

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
