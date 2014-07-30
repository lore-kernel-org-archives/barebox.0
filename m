Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCb81-0001xg-KQ
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 21:09:42 +0000
Date: Wed, 30 Jul 2014 23:09:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140730210917.GL23235@pengutronix.de>
References: <1406715606-6821-1-git-send-email-jbe@pengutronix.de>
 <1406734093.22823.134.camel@coredoba.hi.pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406734093.22823.134.camel@coredoba.hi.pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: envfs: provide an intentional way to ignore an existing external
 environment
To: Jan =?iso-8859-15?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 30, 2014 at 05:28:13PM +0200, Jan L=FCbbe wrote:
> Hi J=FCrgen!
> =

> This looks good so far.
> =

> On Wed, 2014-07-30 at 12:20 +0200, Juergen Borleis wrote:
> > This change set adds a new option to the saveenv command which will
> > write an empty environment without content. But it will be marked as a
> > placeholder and thus should be "ignored" and barebox falls back to its
> > built-in default environment.
> =

> I haven't found where the environment loading is changed to implement
> this behavior. Is a patch missing?

It's in the first patch. envfs_check_super is changed to return an error
when the ENVFS_FLAGS_PLACEHOLDER flag is set. Then barebox will fall
back to the default environment.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
