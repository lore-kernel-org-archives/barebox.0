Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRHoY-0000Tm-PX
 for barebox@lists.infradead.org; Wed, 02 Oct 2013 08:29:47 +0000
Date: Wed, 2 Oct 2013 10:29:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131002082925.GI30088@pengutronix.de>
References: <1380608528-26999-1-git-send-email-s.hauer@pengutronix.de>
 <1380608528-26999-4-git-send-email-s.hauer@pengutronix.de>
 <20131001074947.GI2548@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131001074947.GI2548@pengutronix.de>
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
Subject: Re: [PATCH 3/6] ARM: mx23-evk: Fix result checking of
 devfs_add_partition
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Oct 01, 2013 at 09:49:47AM +0200, Uwe Kleine-K=F6nig wrote:
> Hello Sascha,
> =

> On Tue, Oct 01, 2013 at 08:22:05AM +0200, Sascha Hauer wrote:
> > +	if (IS_ERR(cdev))
> > +		return PTR_ERR(cdev);
> > +	return 0;
> In Linux you can use
> =

> 	return PTR_ERR_OR_ZERO(cdev)
> =

> instead. Didn't check if barebox already has that.

I wasn't aware this exists. barebox currently doesn't have this, but it
would be nice to introduce it.

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
