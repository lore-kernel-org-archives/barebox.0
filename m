Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icP3J-0000UF-9A
 for barebox@lists.infradead.org; Wed, 04 Dec 2019 07:26:26 +0000
Date: Wed, 4 Dec 2019 08:26:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191204072623.f3cn7kxsob3chy4t@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
 <20191129151505.23946-2-l.stach@pengutronix.de>
 <20191202100731.zz63c2vsco34x2qb@pengutronix.de>
 <7dc05f13b230f8870f2933351dea8f4921519872.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7dc05f13b230f8870f2933351dea8f4921519872.camel@pengutronix.de>
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
Subject: Re: [PATCH 01/39] ARM: imx: add image type choice
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 02, 2019 at 11:51:08AM +0100, Lucas Stach wrote:
> Uh, sorry about this. Somehow I already had a feeling that his patch
> might mess something up...
> 
> Can you remove this single patch from the series? I'll send an updated
> patch after some soak time in the randconfig builder.

Did that. The rest of the series doesn't introduce any compile test
regressions.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
