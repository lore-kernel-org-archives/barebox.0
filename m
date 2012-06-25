Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sj8my-0008Bx-Hk
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 12:53:13 +0000
Date: Mon, 25 Jun 2012 14:53:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120625125305.GF14321@pengutronix.de>
References: <1340358843-30614-1-git-send-email-jbe@pengutronix.de>
 <1340358843-30614-2-git-send-email-jbe@pengutronix.de>
 <20120625122831.GE14321@pengutronix.de>
 <201206251445.43408.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201206251445.43408.jbe@pengutronix.de>
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
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 25, 2012 at 02:45:43PM +0200, Juergen Beisert wrote:
> Sascha Hauer wrote:
> > On Fri, Jun 22, 2012 at 11:54:02AM +0200, Juergen Beisert wrote:
> > > This patch adds a simple wd command which can setup, trigger and stop a
> > > watchdog on the platform.
> > >
> > > +static int do_wd(int argc, char *argv[])
> > > +{
> > > +	int rc;
> > > +
> > > +	if (argc > 1) {
> > > +		if (isdigit(*argv[1])) {
> > > +			timeout = simple_strtoul(argv[1], NULL, 0);
> > > +		} else {
> > > +			printf("numerical parameter expected\n");
> > > +			return 1;
> > > +		}
> > > +	}
> > > +
> > > +	rc = watchdog_set_timeout(timeout);
> > > +	if (rc == -EINVAL) {
> >
> > Why do you check for -EINVAL only? This way all other errors will be
> > silently ignored.
> 
> Are you sure we must handle other failure codes than -EINVAL here? The called 
> function is very simple and only must distinguish "timeout != 0" and "timeout 
> == 0". So, timeout can be "out of range" or - as you mentioned - some 
> platforms cannot disable the watchdog anymore once it is enabled. Both 
> results into -EINVAL, because the called function cannot use the given value. 
> What else can happen?

Why should we only test for errors that we know and silently drop all others?

Somebody might think that -ENOSYS is the appropriate return value if the
watchdog can't be disabled. When such a patch is added nobody will
remember that our error handling only checks for a special error value.

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
