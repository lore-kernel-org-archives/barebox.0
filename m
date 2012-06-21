Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Shcr1-0003jG-Db
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 08:35:04 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 21 Jun 2012 10:33:20 +0200
References: <1340200153-9215-1-git-send-email-jbe@pengutronix.de>
 <201206202104.09381.jbe@pengutronix.de>
 <20120620200534.GE5642@pengutronix.de>
In-Reply-To: <20120620200534.GE5642@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201206211033.21218.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] ARM/MXS: add new way to reset the whole SoC
To: barebox@lists.infradead.org
Cc: Uwe =?iso-8859-1?q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

Hi Uwe,

Uwe Kleine-K=F6nig wrote:
> On Wed, Jun 20, 2012 at 09:04:09PM +0200, Juergen Beisert wrote:
> > > Is it worth to introduce a common function
> > >
> > > 	void __noreturn sensiblename(unsigned long clkctrl_reset_offset,
> > > unsigned long unused) {
> > > 		...
> > > 	}
> > >
> > > and make the reset_cpu functions for imx23 and imx28 just call
> > > sensiblename()?
> >
> > Refer "http://www.spinics.net/lists/u-boot-v2/msg07681.html"
>
> I don't see how this answers my question. To combine both answers, put
> sensiblename into arch/arm/mach-mxs/common.c and the imx23 and the imx28
> specific call to sensiblename into imx23.c and imx28.c respectively.

What would be the advantage? You add one more indirection but almost the sa=
me =

amount of code.

jbe

-- =

Pengutronix e.K.                              | Juergen Beisert            =
 |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/ =
 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
