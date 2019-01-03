Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gf0iw-0005Dc-OU
 for barebox@lists.infradead.org; Thu, 03 Jan 2019 10:59:40 +0000
Date: Thu, 3 Jan 2019 11:59:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190103105936.b3nkdub77cpeoad4@pengutronix.de>
References: <20181218132233.23669-1-florian.baeuerle@allegion.com>
 <20181219140146.11806-1-florian.baeuerle@allegion.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181219140146.11806-1-florian.baeuerle@allegion.com>
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

Hi Florian,

On Wed, Dec 19, 2018 at 02:02:03PM +0000, Baeuerle, Florian wrote:
> Add a flag to sort directory entries before recursing into them.
> 
> Since this part of lib/ is used inside barebox as well as in
> scripts/bareboxenv.c, we cannot easily use stringlists from lib/, which
> would have made the code a bit nicer.
> 
> Further, add poison.h from kernel 4.5-rc1, which was the base for
> importing linux headers under scripts/ in a883d9a. This is required for
> actually using kernel linked lists within scripts/ tools.

I applied this with some changes. It was important for me that the sort
support does not leak into the barebox image so we do not increase the
binary size. Please check the result in the -next branch, it should do
what you need.

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
