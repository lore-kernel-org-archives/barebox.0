Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShR9k-0000g1-BA
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 20:05:36 +0000
Date: Wed, 20 Jun 2012 22:05:34 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20120620200534.GE5642@pengutronix.de>
References: <1340200153-9215-1-git-send-email-jbe@pengutronix.de>
 <1340200153-9215-2-git-send-email-jbe@pengutronix.de>
 <20120620184613.GB5642@pengutronix.de>
 <201206202104.09381.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201206202104.09381.jbe@pengutronix.de>
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
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello J=FCrgen,

On Wed, Jun 20, 2012 at 09:04:09PM +0200, Juergen Beisert wrote:
> > Is it worth to introduce a common function
> >
> > 	void __noreturn sensiblename(unsigned long clkctrl_reset_offset, unsig=
ned
> > long unused) {
> > 		...
> > 	}
> >
> > and make the reset_cpu functions for imx23 and imx28 just call
> > sensiblename()?
> =

> Refer "http://www.spinics.net/lists/u-boot-v2/msg07681.html"
I don't see how this answers my question. To combine both answers, put
sensiblename into arch/arm/mach-mxs/common.c and the imx23 and the imx28
specific call to sensiblename into imx23.c and imx28.c respectively.

Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
