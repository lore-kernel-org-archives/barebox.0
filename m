Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1geyx6-0003GC-3U
 for barebox@lists.infradead.org; Thu, 03 Jan 2019 09:06:09 +0000
Date: Thu, 3 Jan 2019 10:06:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190103090605.3qycpb22j3nveo6p@pengutronix.de>
References: <20181231080725.2141-1-sam@ravnborg.org>
 <20181231080725.2141-3-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181231080725.2141-3-sam@ravnborg.org>
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
Subject: Re: [PATCH v1 2/5] images: fix force rebuild of piggy.o
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Dec 31, 2018 at 09:07:22AM +0100, Sam Ravnborg wrote:
> piggy.o would be build for every time barebox was built
> This had the sideeffect that the image(s) would
> always be rebuilt despite no changes
> 
> Fix this by adding piggy.o to targets
> and avoid an extra command in the rule to create .pblb files
> 
> The patch includes the removal of a stray assignment
> 
> Fixes: 2078438662 ("Add multi images support")

This adds multi images support, but the actual change that this patch
fixes came with 5a1a5ed253 ("ARM: images: use piggydata").

I changed that while applying.

Thanks,
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
