Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dXV9k-0007FV-LP
 for barebox@lists.infradead.org; Tue, 18 Jul 2017 16:15:30 +0000
Date: Tue, 18 Jul 2017 18:15:01 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170718161501.GA13114@ravnborg.org>
References: <20170718152320.16792-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170718152320.16792-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] scripts: Provide script that helps using cpp defines in
 dcd tables
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jul 18, 2017 at 05:23:20PM +0200, Uwe Kleine-K=F6nig wrote:
> This script was used to help create commit ("ARM: imx: use register
> defines in imxcfg files instead of plain numbers").
> =

> It is documented in Perl Pod, you can pretty-print it using
> =

> 	$ perldoc scripts/regsubst.pl.

Could you add this info as a comment in the perl script too?
So people not used to perl is reminded by this when they look
in the perl script and see something only halfway readable.

(halway readable is maybe what one are sued to with respect
to (some) perl scripts, but thats another story).

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
