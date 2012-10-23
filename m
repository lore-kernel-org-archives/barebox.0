Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQdze-00022y-53
 for barebox@lists.infradead.org; Tue, 23 Oct 2012 12:54:03 +0000
Date: Tue, 23 Oct 2012 14:54:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121023125400.GS27665@pengutronix.de>
References: <1350926048-12681-1-git-send-email-w.sang@pengutronix.de>
 <20121023070455.GJ27665@pengutronix.de>
 <20121023112517.GA21425@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121023112517.GA21425@pengutronix.de>
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
Subject: Re: [PATCH] common: Makefile: 'cd' command could lead to broken
 default_env.h
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Oct 23, 2012 at 01:25:17PM +0200, Wolfram Sang wrote:
> On Tue, Oct 23, 2012 at 09:04:55AM +0200, Sascha Hauer wrote:
> > On Mon, Oct 22, 2012 at 07:14:08PM +0200, Wolfram Sang wrote:
> > > Depending on the user's settings (CDPATH), 'cd' may print out the
> > > directory which was changed to. This causes broken barebox_default_env.h
> > > to be generated. Ignore the cd printout.
> > 
> > I didn't know such a thing exists. This can cause unexpected behaviour
> > of 'cd'. Wouldn't it be better to completely disable it by emptying
> > CDPATH in scripts?
> 
> Yes, probably. You or me? :)

If you ask... you ;)

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
