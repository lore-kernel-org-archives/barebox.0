Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGvAD-0006aE-JY
 for barebox@lists.infradead.org; Tue, 03 Sep 2013 18:17:18 +0000
Date: Tue, 3 Sep 2013 20:16:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130903181649.GD30088@pengutronix.de>
References: <32D9025B-5882-4030-A3DA-0CC66CEBD93C@reinrag.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <32D9025B-5882-4030-A3DA-0CC66CEBD93C@reinrag.net>
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
Subject: Re: [PATCH 1/4] mtd: fix erasesize math for non power-of-2 devices
To: Darren Garnier <dgarnier@reinrag.net>
Cc: barebox@lists.infradead.org

Hi Darren,

On Mon, Sep 02, 2013 at 10:22:20PM -0400, Darren Garnier wrote:
> 
> +#define ALIGNED_OFFSET(offset, bs) ((bs & (bs-1)) == 0) ? \
> +									offset & ~(bs-1) : \
> +									bs * div_u64(offset,bs)
> +#define ALIGNED_COUNT(count, bs) ((bs & (bs-1)) == 0) ? \
> +									ALIGN(count,bs) : \
> +									bs * div_u64(count+(bs-1),bs)

Can you convert this into a function? It makes it easier and to read and
more obvious what's happening here. Please use the is_power_of_2 macro
and add whitespaces left and right to operators.

Otherwise looks good. I didn't know such flashes exist...

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
