Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShMXy-000769-PB
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 15:10:19 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 20 Jun 2012 17:08:52 +0200
References: <1340202731-30831-1-git-send-email-jbe@pengutronix.de>
 <1340202731-30831-2-git-send-email-jbe@pengutronix.de>
 <4FE1E3CE.8050908@pengutronix.de>
In-Reply-To: <4FE1E3CE.8050908@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201206201708.52673.jbe@pengutronix.de>
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
Subject: Re: [PATCH 1/2] Enable a way to provide the reason for "being here"
To: barebox@lists.infradead.org

Marc Kleine-Budde wrote:
> [...]
> > +
> > +#include <common.h>
> > +#include <init.h>
> > +#include <environment.h>
> > +#include <globalvar.h>
> > +#include <reset_source.h>
> > +
> > +static const char name[] = "global.system.reset";
> > +static const char unknown_reset[] = "unknown";
> > +static const char power_on_reset[] = "POR";
> > +static const char manual_reset[] = "RST";
> > +static const char watchdog[] = "WDG";
> > +static const char wake[] = "WKE";
> > +static const char jtag[] = "JTAG";
>
> what about using an array
>
> static cost char *reset_reason_array[] = {
> 	[RESET_UKWN] = "unknown",
> 	...
> };

The result is not the same. The strings are no longer "const". But it should 
not make a difference from the point of view of a possible reader. Will 
change it.

> [...]

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
