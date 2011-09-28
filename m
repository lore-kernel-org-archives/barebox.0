Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R8tiG-0001ww-PA
	for barebox@lists.infradead.org; Wed, 28 Sep 2011 12:58:13 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1R8tiE-0007cj-S6
	for barebox@lists.infradead.org; Wed, 28 Sep 2011 14:58:10 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 28 Sep 2011 14:58:08 +0200
References: <201109281216.14413.jbe@pengutronix.de>
In-Reply-To: <201109281216.14413.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201109281458.09005.jbe@pengutronix.de>
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

Myself wrote:
> is anybody working on Barebox support for the ARM11 based S3C6410 CPU from
> Samsung (just to be sure to not re-invent the wheel)?

When adding the S3C6410 CPU support: Should I try to extend the existing 
S3C24xx family (its uses an ARMv4 core) with the ARMv6 core S3C64xx family, 
or better a separate mach-* directory? Both CPUs sharing some peripherals, 
but with many little differences (known from i.MX...)

Regards,
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
