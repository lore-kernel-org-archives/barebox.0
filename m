Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmcKk-0008JS-Nn
 for barebox@lists.infradead.org; Wed, 21 Sep 2016 07:52:50 +0000
Date: Wed, 21 Sep 2016 09:52:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160921075224.xuzb3gmvrre2unlo@pengutronix.de>
References: <1474008220-7601-1-git-send-email-m.olbrich@pengutronix.de>
 <20160916111243.1dc2a3f16421fb33831817a0@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160916111243.1dc2a3f16421fb33831817a0@gmail.com>
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
Subject: Re: [PATCH v2 1/3] state: copy backend of_path string
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Michael Olbrich <m.olbrich@pengutronix.de>

On Fri, Sep 16, 2016 at 11:12:43AM +0300, Antony Pavlov wrote:
> On Fri, 16 Sep 2016 08:43:38 +0200
> Michael Olbrich <m.olbrich@pengutronix.de> wrote:
> =

> > Caching pointers to device tree nodes or names is not save. The barebox
>                                                         ^^^^ safe?

Fixed, thanks

Sascha

> > internal device tree may be changed by loading a new device tree or thr=
ough
> > fixup handlers. As a result, the string may be deleted.
> > Use local copies of the full path instead.
> > =

> > Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> =

> --=A0
> Best regards,
> =A0 Antony Pavlov
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
