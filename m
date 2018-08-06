Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fmkQh-0000II-Lv
 for barebox@lists.infradead.org; Mon, 06 Aug 2018 18:40:33 +0000
Date: Mon, 6 Aug 2018 20:40:19 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20180806184019.od66awd55aqxazio@pengutronix.de>
References: <F272D9410BD38E429D604B94748C61547AB08E80@WIEMS02101.ceu.corp.heidelberg.com>
 <a3bd0a48-665c-f654-0434-ca73cec7ca98@rempel-privat.de>
 <F272D9410BD38E429D604B94748C61547AB08F97@WIEMS02101.ceu.corp.heidelberg.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <F272D9410BD38E429D604B94748C61547AB08F97@WIEMS02101.ceu.corp.heidelberg.com>
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
Subject: Re: PATCH added tftp port to fsoptions
To: "Toews, Dietrich" <Dietrich.Toews@heidelberg.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, Aug 03, 2018 at 12:10:34PM +0000, Toews, Dietrich wrote:
> Hi,
> =

> that can be a way, but then it is not possible to connect to different se=
rvers, when they have different ports.
> e.g. one server for large files, one (intelligent) server for script-files
> =

> Why different ports? - For testing it is very nice to have all the server=
s on one machine.
> =

> Dietrich
> =

> -----Original Message-----
> Hi,
> =

> Am 03.08.2018 um 13:07 schrieb Toews, Dietrich:
> > Hi all,
> >
> > we are using barebox for a while now, but we need different tftp-server=
 with different ports.
> > Here a proposition for a patch, if someone else needs it also.
> >
> > Usage: tftp -o port=3D1234 ....
> =

> Good point. I assume, barebox way, would be to make it:
> global.net.tftp_port
> nv.net.tftp_port
> nv.dev.<devname>.tftp_port

I'd say

	nv.net.server.tftp_port=3D1234

and only use that for the default mount to /mnt/tftp and otherwise keep
it as a mount option.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
