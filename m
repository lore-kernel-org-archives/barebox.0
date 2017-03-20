Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cpsKA-0005cw-Hz
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 08:05:56 +0000
Date: Mon, 20 Mar 2017 09:05:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170320080531.nm6n25gsvqe3qk2k@pengutronix.de>
References: <20170320065954.8330-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170320065954.8330-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/3] fix "no previous prototype" warnings
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 20, 2017 at 09:59:51AM +0300, Antony Pavlov wrote:
> Antony Pavlov (3):
>   gui: bmp.c: fix "no previous prototype" warning
>   clk: clk-gate-shared: fix "no previous prototype" warning
>   gui: image_renderer: fix "no previous prototype for
>     'image_renderer_unregister'" warning

Applied, thanks

I notice we currently have -Wmissing-prototypes only on Mips. Maybe we
should enable this on other architectures aswell to make these warnings
more visible.
On ARM though we have tons of missing prototypes, so we should fix a
fair amount of them before enabling this warning in the tree.

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
