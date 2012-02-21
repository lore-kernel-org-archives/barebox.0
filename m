Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RzwaO-0000Tj-5P
 for barebox@lists.infradead.org; Tue, 21 Feb 2012 20:45:25 +0000
Date: Tue, 21 Feb 2012 21:45:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120221204501.GF3852@pengutronix.de>
References: <1329784059-6006-1-git-send-email-eric@eukrea.com>
 <1329784059-6006-2-git-send-email-eric@eukrea.com>
 <20120221034835.GD9343@game.jcrosoft.org>
 <20120221080346.1501ec1f@eb-e6520>
 <20120221130318.GJ9343@game.jcrosoft.org>
 <20120221142255.547a4e67@eb-e6520>
 <20120221141011.GK9343@game.jcrosoft.org>
 <20120221163527.1a42ed2b@eb-e6520>
 <20120221153856.GL9343@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120221153856.GL9343@game.jcrosoft.org>
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
Subject: Re: [PATCH 2/7] mfd: add mc34708 driver
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 21, 2012 at 04:38:56PM +0100, Jean-Christophe PLAGNIOL-VILLARD =
wrote:
> On 16:35 Tue 21 Feb     , Eric B=E9nard wrote:
> > Le Tue, 21 Feb 2012 15:10:11 +0100,
> > Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :
> > > I still don't like the idea to export it
> > > =

> > > You need a proper API to manage the PMIC
> > > =

> > > so for today no need of this and I doubt the API will need it
> > > =

> > for today we have what is inside barebox and this patche is coherent
> > with what is actually inside barebox (please check other drivers in mfd
> > and mx35-3stack for example).
> > For the future we may no more need this if we have a proper PMIC API
> > but as this API actually is not written, this patchset makes sense.
> today you do not need it
> =

> today you just need to known it the chip is here
> =

> so just check if the devfs is present
> =


Don't know where your problem is with exporting it. Yes, it supports
only a single pmic, but that's all we have on the boards I know. And
this function can be used to modify registers on the pmic, some boards
need this. The day might come when we need some regulator API, but we
are not there and often enough getting a board to run properly is just
'modify this damn bit in the pmic'

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
