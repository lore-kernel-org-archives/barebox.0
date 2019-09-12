Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Q7g-0002Oe-8q
 for barebox@lists.infradead.org; Thu, 12 Sep 2019 14:31:01 +0000
Date: Thu, 12 Sep 2019 16:30:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190912143057.sn7mp37wvprhady4@pengutronix.de>
References: <20190912102905.21307-1-a.fatoum@pengutronix.de>
 <20190912130641.iddh5b7svxbgjlf7@pengutronix.de>
 <90a8b937-2c64-b4ee-426e-b40ba392f490@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <90a8b937-2c64-b4ee-426e-b40ba392f490@pengutronix.de>
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
Subject: Re: [PATCH 1/7] libfile: introduce copy_file_2 for copying starting
 with offset
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

On Thu, Sep 12, 2019 at 03:37:49PM +0200, Ahmad Fatoum wrote:
> Hello Uwe,
> =

> On 9/12/19 3:06 PM, Uwe Kleine-K=F6nig wrote:
> > Hello Ahmad,
> > =

> > On Thu, Sep 12, 2019 at 12:28:59PM +0200, Ahmad Fatoum wrote:
> >> barebox already has a copy_file for copying files. Extend the API by a
> >> copy_file_2 that takes a source offset into account.
> > =

> > Can you give that function a more descriptive name? Something like
> > copy_file_from_offset()?
> =

> I chose copy_file_2 for consistency with the read_file function, which
> had a copy renamed to read_file_2 when it gained a (max) offset parameter.
> =

> Should read_file_2 be renamed as well? =


read_file_2 is named like that because it is a better read_file.
copy_file_2 more looks like another type of copy_file, so I too would
prefer copy_file_from_offset, or even better with an additional size
or end argument and named copy_file_window ;)

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
