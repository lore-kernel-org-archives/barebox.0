Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YRJsF-0008U0-Bs
 for barebox@lists.infradead.org; Fri, 27 Feb 2015 12:18:31 +0000
Date: Fri, 27 Feb 2015 13:18:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150227121807.GD12209@pengutronix.de>
References: <1424973945-8008-1-git-send-email-s.hauer@pengutronix.de>
 <1424973945-8008-2-git-send-email-s.hauer@pengutronix.de>
 <1425038693.3668.5.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425038693.3668.5.camel@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: Allow to mask data aborts
To: Jan =?iso-8859-15?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 27, 2015 at 01:04:53PM +0100, Jan L=FCbbe wrote:
> On Do, 2015-02-26 at 19:05 +0100, Sascha Hauer wrote:
> > +int data_abort_unmask(void)
> > +{
> > +       arm_ignore_data_abort =3D 0;
> > +
> > +       return arm_data_abort_occured;
> > +}
> =

> arm_data_abort_occured is set to &arm_data_abort_occured when an abort
> occurs. Should we return arm_data_abort_occured !=3D 0?

Yes, sounds good. Changed that.

> =

> Also occured is actually spelled occurred.

Fixed, thanks

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
