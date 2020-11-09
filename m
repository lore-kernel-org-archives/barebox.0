Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kc9jF-0007Ps-OX
 for barebox@lists.infradead.org; Mon, 09 Nov 2020 16:09:14 +0000
Date: Mon, 9 Nov 2020 17:09:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201109160911.GL29830@pengutronix.de>
References: <20201103200932.18824-1-u.kleine-koenig@pengutronix.de>
 <20201109090215.GF29830@pengutronix.de>
 <20201109143723.mz6tu45bydnnfhek@NB061.eckelmann.group>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201109143723.mz6tu45bydnnfhek@NB061.eckelmann.group>
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
Subject: Re: [PATCH v2] nfs: check return value of various rpc calls
To: Gavin Schenk <g.schenk@eckelmann.de>
Cc: barebox@lists.infradead.org, Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

On Mon, Nov 09, 2020 at 03:37:23PM +0100, Gavin Schenk wrote:
> Hi,
> 
> > I've rewritten this thing a little bit. First of all, this doesn't need
> > preprocessor tricks and also with this the nfserror to error mapping
> > function returns the error string, so we can convert printing the
> > messages to pr_* or dev_* functions. Also we use the human readable
> > error names for the errors we have a string for.
> >
> Nice to here that there is progress.
> 
> > +
> > +static const char *nfserrstr(u32 nfserror, int *errcode)
> > +{
> 
> Instead using this Preprocessor thing wouldn't it be better to use a number and
> sizeof(str) at the other locations?
> 
> > +	static char str[BUFLEN];
> static char str[32];
> 
> here
> > +				snprintf(str, BUFLEN, "NFS3ERR_%s", err->name);
> snprintf(str, sizeof(str), "NFS3ERR_%s", err->name);
> 
> 
> and here
> > +	snprintf(str, BUFLEN, "Unknown NFS error %d", nfserror);
> snprintf(str, sizeof(str), "Unknown NFS error %d", nfserror);

Much better, thanks. I'll change that

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
