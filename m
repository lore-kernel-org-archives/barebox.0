Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCl2V-0002uv-8n
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 07:44:39 +0000
Date: Thu, 31 Jul 2014 09:44:16 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20140731074416.GR6146@pengutronix.de>
References: <1406715606-6821-1-git-send-email-jbe@pengutronix.de>
 <20140731071425.GQ6146@pengutronix.de>
 <201407310933.02138.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201407310933.02138.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: envfs: provide an intentional way to ignore an existing external
 environment
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jul 31, 2014 at 09:33:02AM +0200, Juergen Borleis wrote:
> Hi Uwe,
> =

> On Thursday 31 July 2014 09:14:25 Uwe Kleine-K=F6nig wrote:
> > [...]
> > Compared with storing the default environment in the external store the
> > only difference is that you don't need to modify it if you change the
> > internal one, right?
> =

> This would also be an advantage of this new feature.
The only one even?

> > I wonder what the targeted use case is.
> =

> To use an external stored environment *only* for development purposes or =
tests =

> and to keep the possibility to do so.
Doesn't make a warm and cosy feeling. Isn't it easier and more robust to
just not tell barebox about the external storage at all and for the
testing/development procedure do an explicit

	loadenv /dev/tralala

?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
