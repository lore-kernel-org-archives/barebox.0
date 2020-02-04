Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iysoh-0005QW-5x
 for barebox@lists.infradead.org; Tue, 04 Feb 2020 07:40:16 +0000
Date: Tue, 4 Feb 2020 08:40:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200204074013.2pzg4y2okfcidpat@pengutronix.de>
References: <20200128130801.24890-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128130801.24890-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 0/3] commands/test: some improvements
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jan 28, 2020 at 02:07:58PM +0100, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> my main intention was to implement -b and -c, the other two patches just
> fix some stuff I noticed while doing so.
> =

> One thing I noticed is that the check for
> =

> 	strlen(ap[1])
> =

> in the handling of -e and others is wrong.
> =

> This makes
> =

> 	test -e ''
> =

> return success, but
> =

> 	test -z something -o -e ''
> =

> fails. I don't know for sure how to fix this as the empty string might
> mean "." sometimes?
> =

> Best regards
> Uwe
> =

> Uwe Kleine-K=F6nig (3):
>   commands/test: Bail out on incomplete command line options
>   commands/test: Improve option parsing to handle "]" less special
>   commands/test: Implement -b and -c to test for character and block
>     devices
> =

>  commands/test.c | 32 +++++++++++++++++++++++++++-----
>  1 file changed, 27 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
