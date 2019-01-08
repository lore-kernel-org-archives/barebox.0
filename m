Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggtUV-0004AF-1S
 for barebox@lists.infradead.org; Tue, 08 Jan 2019 15:40:34 +0000
Date: Tue, 8 Jan 2019 16:40:28 +0100
From: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Message-ID: <20190108154028.adxnpobfluvphque@pengutronix.de>
References: <20181218132233.23669-1-florian.baeuerle@allegion.com>
 <20181219140146.11806-1-florian.baeuerle@allegion.com>
 <20190103105936.b3nkdub77cpeoad4@pengutronix.de>
 <61e7e82c99bb2d70b8e8502daaf2cab8135851cc.camel@allegion.com>
 <20190107075821.x7gwx2mrlcyfvvz7@pengutronix.de>
 <a86ae0154c6069405619d7752fcb227d5f2384b6.camel@allegion.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a86ae0154c6069405619d7752fcb227d5f2384b6.camel@allegion.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 1/2] recursive_action: add ACTION_SORT flag
To: "Baeuerle, Florian" <Florian.Baeuerle@allegion.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Jan 08, 2019 at 09:47:04AM +0000, Baeuerle, Florian wrote:
> NAK! NAK!
> 
> There are two terrible mistakes - indeed the patches produce a very reproducible
> environment. Independent of what environment you want, you'd get an empty one.
> 
> Problem 1: a2f3b3d
> it requires ACTION_RECURSE | ACTION_SORT
> 
> Problem 2: f5c0978
> +			e->dirname = xstrdup(next->d_name);
> should be much more like:
> +			e->dirname = xstrdup(fileName);
> 
> Sorry for that, problem 2 should really *not* have happened.

Don't worry, it's still in -next and not yet in master.
I squashed your fixups into the broken commits.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
