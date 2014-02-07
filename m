Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo1.mail-out.ovh.net ([87.98.179.142]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBh2l-0007jD-PK
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 08:44:16 +0000
Received: from mail170.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 7C2EDFF9278
 for <barebox@lists.infradead.org>; Fri,  7 Feb 2014 09:50:35 +0100 (CET)
Date: Fri, 7 Feb 2014 09:45:10 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20140207084510.GI9671@ns203013.ovh.net>
References: <1391704854-3141-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <1391704854-3141-10-git-send-email-u.kleine-koenig@pengutronix.de>
 <20140207065032.GG9671@ns203013.ovh.net>
 <20140207082221.GD17045@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140207082221.GD17045@pengutronix.de>
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
Subject: Re: [PATCH 9/9] nfs: parse nfsport and mount port from file system
 options
To: Uwe Kleine-K??nig <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:22 Fri 07 Feb     , Uwe Kleine-K??nig wrote:
> Hello Jean-Christophe,
> =

> On Fri, Feb 07, 2014 at 07:50:32AM +0100, Jean-Christophe PLAGNIOL-VILLAR=
D wrote:
> > > +static void parseopt_hu(const char *options, const char *opt,
> > > +		unsigned short *val)
> > > +{
> > > +	const char *start;
> > > +	size_t optlen =3D strlen(opt);
> > > +	ulong v;
> > > +	char *endp;
> > > +
> > > +again:
> > > +	start =3D strstr(options, opt);
> > > +
> > > +	if (!start)
> > > +		return;
> > > +
> > > +	if (start > options && start[-1] !=3D ',') {
> > > +		options =3D start;
> > > +		goto again;
> > > +	}
> > > +
> > > +	if (start[optlen] !=3D '=3D') {
> > > +		options =3D start;
> > > +		goto again;
> > > +	}
> > > +
> > > +	v =3D simple_strtoul(start + optlen + 1, &endp, 0);
> > > +	if (v > USHORT_MAX)
> > > +		return;
> > > +
> > > +	if (*endp =3D=3D ',' || *endp =3D=3D '\0')
> > > +		*val =3D v;
> > > +}
> > =

> > this should be global
> Yeah, do you have a suggestion where to put it? fs/parseopt.c?

why not

but IIRC the cmdline parser should be the same too

Best Regards,
J.
> =

> Uwe
> =

> -- =

> Pengutronix e.K.                           | Uwe Kleine-K=F6nig          =
  |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
