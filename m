Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVKmJ-00075P-6a
 for barebox@lists.infradead.org; Thu, 25 Apr 2013 11:55:56 +0000
Message-ID: <1366891012.4158.115.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Thu, 25 Apr 2013 13:56:52 +0200
In-Reply-To: <1366794590.4158.81.camel@coredoba.hi.pengutronix.de>
References: <51767713.8070507@sam-solutions.net>
 <1366794590.4158.81.camel@coredoba.hi.pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH] ARM OMAP5: Basic support of Texas Instruments OMAP5
 processors
To: Uladzimir Bely <u.bely@sam-solutions.net>
Cc: barebox@lists.infradead.org

Hi,

you didn't respond to my comments in your new version, especially
regarding the code duplication in arch/arm/mach-omap/omap5_generic.c
(relative to omap4_generic.c).

Regards,
Jan

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
