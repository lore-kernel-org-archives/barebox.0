Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pwz1D-00044l-3M
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 15:40:17 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 8 Mar 2011 16:37:47 +0100
References: <39A4B204C321D34DA3490E3B119D5A6C68C006F893@SBS2008.wellsense.local>
	<39A4B204C321D34DA3490E3B119D5A6C68C0054F52@SBS2008.wellsense.local>
	<20110306182606.GD16849@tarshish>
In-Reply-To: <20110306182606.GD16849@tarshish>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201103081637.47812.jbe@pengutronix.de>
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
Subject: Re: Fallback environment in barebox
To: barebox@lists.infradead.org
Cc: Udi Ron <udi.ron@wellsense-tech.com>, Itai Raab <itai.raab@wellsense-tech.com>

Baruch Siach wrote:
> On Sun, Mar 06, 2011 at 04:59:02PM +0200, Itai Raab wrote:
> > I tried doing what you explained, but it seems like Barebox startup code
> > didn't load the environment from env1 when env0 was corrupted.
> >
> > In barebox shell I could find /dev/env1 with all the data, but when the
> > Barebox started I got:
> > 	no valid environment found on /dev/env0. Using default environment
> >
> > Looking at the startup code (common/startup.c - is this the place?) I
> > don't see any mechanism to load env1 when env0 fails.
>
> You seem to be right. Juergen, can you explain what you meant?

It seems the patches to add this feature are forgotten in one of our BSPs. :-(

I will search for them and resend them to this list. Please be patient.

Regards,
Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
