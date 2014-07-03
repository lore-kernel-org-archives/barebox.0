Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X2ck5-0000rr-9K
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 08:51:46 +0000
Date: Thu, 3 Jul 2014 10:51:22 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20140703085122.GT14781@pengutronix.de>
References: <alpine.DEB.2.10.1407031026270.15322@9VTHT2J-D520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1407031026270.15322@9VTHT2J-D520>
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
Subject: Re: [PATCH] automount: check for recursive automount
To: Rolf Evers-Fischer <embedded24@evers-fischer.de>
Cc: barebox@lists.infradead.org

On Thu, Jul 03, 2014 at 10:34:37AM +0200, Rolf Evers-Fischer wrote:
> Hi Sascha,
> =

> Sascha Hauer <s.hauer@...> wrote:
> > +	static int in_automount;
> > +
> > +	if (in_automount)
> > +		return;
> =

> It seems that we are using the 'in_automount' without initialization. =

> Shouldn't we initialize the static 'in_automount' with 0? Or can we rely =

> on the compiler, that all statics will be initialized with zeros?
static variables are initialized to 0 (for pointers: NULL) by the
compiler.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
