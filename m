Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V7iWD-0006iu-MD
 for barebox@lists.infradead.org; Fri, 09 Aug 2013 08:57:58 +0000
Date: Fri, 9 Aug 2013 10:57:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130809085735.GD26614@pengutronix.de>
References: <ce9d0dc069aa93694635e8bd5ac2fbd94bd2fa24.1376020752.git.baruch@tkos.co.il>
 <20130809073237.GA26614@pengutronix.de>
 <20130809085019.GT6104@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130809085019.GT6104@pengutronix.de>
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
Subject: Re: [PATCH] net: fix checksum verification
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Aug 09, 2013 at 10:50:19AM +0200, Uwe Kleine-K=F6nig wrote:
> > D'oh. There's a bug indeed. For a good packet net_checksum returns
> > 0xffff (all ones in an u16). So the check should be:
> > =

> > 	return net_checksum(ptr, len) =3D=3D 0xffff;
> with
> =

> 	return net_checksum(ptr, len) + 1
> =

> net_checksum_ok returns always something >0 (i.e. success) because both
> summands are converted to unsigned, and so never catches an error[1],
> does it?
> =

> > U-Boot has this instead:
> > =

> > 	return !((net_checksum(ptr, len) + 1) & 0xfffe);
> > =

> > From what I see both above should be equivalent so I wonder why U-Boot
> > has such a complicated code here. Some compiler optimization or is this
> > something I don't see?
> This isn't equivalent. The U-Boot code returns 1 iff net_checksum
> returns 0 or 0xffff; 0 otherwise.

Hm, indeed. Which brings me to my next question: In which cases does
net_checksum() return 0 and the result can be considered ok?

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
