Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PS8AJ-0000b9-IP
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 13:10:08 +0000
Date: Mon, 13 Dec 2010 14:10:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101213131005.GK6017@pengutronix.de>
References: <13507e3e1f3a5dfa2e79be2ffcfbe6d7b9e84bb3.1292219932.git.baruch@tkos.co.il>
	<20101213120857.GH6017@pengutronix.de>
	<20101213123328.GD5766@jasper.tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101213123328.GD5766@jasper.tkos.co.il>
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
Subject: Re: [PATCH] remove redundant .gitignore entries
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

On Mon, Dec 13, 2010 at 02:33:28PM +0200, Baruch Siach wrote:
> Hi Sascha,
> 
> On Mon, Dec 13, 2010 at 01:08:57PM +0100, Sascha Hauer wrote:
> > On Mon, Dec 13, 2010 at 08:00:10AM +0200, Baruch Siach wrote:
> > > The ARCH and CROSS_COMPILE entries were introduced in commit cdfd8bdd, probably
> > > by mistake.
> > 
> > 'redundant' seems to imply that these are duplicates, but they are not.
> 
> English is not my native language. I couldn't come up with anything better.
> 
> > They were also not introduced by accident. I use a wrapper script for
> > make which evaluates these files, so I'd like to keep them, although
> > they are only for my personal use.
> 
> The .git/info/exclude file is a better place for local excludes, IMHO. I use 
> it myself for this.

Ok, works good. I applied your patch.

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
