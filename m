Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sj9UJ-0002t8-Uj
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 13:38:00 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 25 Jun 2012 15:37:51 +0200
References: <1340358843-30614-1-git-send-email-jbe@pengutronix.de>
 <201206251445.43408.jbe@pengutronix.de>
 <20120625125305.GF14321@pengutronix.de>
In-Reply-To: <20120625125305.GF14321@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201206251537.51633.jbe@pengutronix.de>
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

Hi Sascha,

Sascha Hauer wrote:
> [...]
> > > > +
> > > > +	rc = watchdog_set_timeout(timeout);
> > > > +	if (rc == -EINVAL) {
> > >
> > > Why do you check for -EINVAL only? This way all other errors will be
> > > silently ignored.
> >
> > Are you sure we must handle other failure codes than -EINVAL here? The
> > called function is very simple and only must distinguish "timeout != 0"
> > and "timeout == 0". So, timeout can be "out of range" or - as you
> > mentioned - some platforms cannot disable the watchdog anymore once it is
> > enabled. Both results into -EINVAL, because the called function cannot
> > use the given value. What else can happen?
>
> Why should we only test for errors that we know and silently drop all
> others?

+1

> Somebody might think that -ENOSYS is the appropriate return value if the
> watchdog can't be disabled. When such a patch is added nobody will
> remember that our error handling only checks for a special error value.

If we accept every possible error value, then we also must move the readable 
error message into the called function (because only the called function 
knows the meaning of its returned value).
Otherwise we must force a specific return-value to give a correct error 
message to the user. But if we force a specific return-value (-EINVAL for 
example) then the -ENOSYS would violate the defined API.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
