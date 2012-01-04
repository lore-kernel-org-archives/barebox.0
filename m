Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RiMfR-0008I6-VR
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 08:57:55 +0000
Date: Wed, 4 Jan 2012 09:57:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120104085742.GN5446@pengutronix.de>
References: <1325609969-21471-3-git-send-email-eric@eukrea.com>
 <1325623931-28780-1-git-send-email-eric@eukrea.com>
 <20120104080043.GL945@game.jcrosoft.org>
 <20120104091158.2b2788f8@eb-e6520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120104091158.2b2788f8@eb-e6520>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 3/4] serial gadget: enable/disable on request
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 04, 2012 at 09:11:58AM +0100, Eric B=E9nard wrote:
> Hi Jean-Christophe,
> =

> Le Wed, 4 Jan 2012 09:00:43 +0100,
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :
> =

> > > +/*		case 'o':
> > > +			mode =3D 1;
> > > +			break;*/
> > ditto
> > > +/*BAREBOX_CMD_HELP_OPT  ("-o",   "CDC OBEX\n")*/
> > ditto
> =

> that's not an error, OBEX is currently present in serial.c but the
> necessary code is not yet in barebox, so I prepared the code for OBEX
> but comented it out everywhere.

Can you then please add a

/* OBEX support is missing in barebox */
/* #define HAVE_OBEX */

and ifdef the code relevant for OBEX? It makes it more clear why
this is commented out.

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
