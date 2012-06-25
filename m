Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sj8fr-0007wQ-2N
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 12:45:51 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 25 Jun 2012 14:45:43 +0200
References: <1340358843-30614-1-git-send-email-jbe@pengutronix.de>
 <1340358843-30614-2-git-send-email-jbe@pengutronix.de>
 <20120625122831.GE14321@pengutronix.de>
In-Reply-To: <20120625122831.GE14321@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201206251445.43408.jbe@pengutronix.de>
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
Subject: Re: [PATCH 1/2] Add a simple watchdog framework
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> On Fri, Jun 22, 2012 at 11:54:02AM +0200, Juergen Beisert wrote:
> > This patch adds a simple wd command which can setup, trigger and stop a
> > watchdog on the platform.
> >
> > +static int do_wd(int argc, char *argv[])
> > +{
> > +	int rc;
> > +
> > +	if (argc > 1) {
> > +		if (isdigit(*argv[1])) {
> > +			timeout = simple_strtoul(argv[1], NULL, 0);
> > +		} else {
> > +			printf("numerical parameter expected\n");
> > +			return 1;
> > +		}
> > +	}
> > +
> > +	rc = watchdog_set_timeout(timeout);
> > +	if (rc == -EINVAL) {
>
> Why do you check for -EINVAL only? This way all other errors will be
> silently ignored.

Are you sure we must handle other failure codes than -EINVAL here? The called 
function is very simple and only must distinguish "timeout != 0" and "timeout 
== 0". So, timeout can be "out of range" or - as you mentioned - some 
platforms cannot disable the watchdog anymore once it is enabled. Both 
results into -EINVAL, because the called function cannot use the given value. 
What else can happen?

> > +		if (timeout == 0)
> > +			printf("Watchdog cannot be disabled\n");
> > +		else
> > +			printf("Timeout value out of range\n");
> > +		return rc;
>
> Do not return negative error codes here. The shell will interpret
> negative numbers as 'exit'. You have to return 1 for failure.

Okay, missed that.

> > +	}
> > +	return 0;
> > +}
> > +
> > +
> > +#ifndef INCLUDE_WATCHDOG_H
> > +# define INCLUDE_WATCHDOG_H
> > +
> > +extern int watchdog_set_timeout(unsigned);
>
> extern is not needed here.

Okay.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
