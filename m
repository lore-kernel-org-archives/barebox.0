Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUQF2-0000YG-Vj
 for barebox@lists.infradead.org; Mon, 19 Oct 2020 08:10:05 +0000
Date: Mon, 19 Oct 2020 10:10:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201019081003.GP13710@pengutronix.de>
References: <20201015132048.420995-1-m.tretter@pengutronix.de>
 <20201015132048.420995-3-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201015132048.420995-3-m.tretter@pengutronix.de>
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
Subject: Re: [PATCH 3/3] net: macb: fix compiler warning for 64 bit systems
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Oct 15, 2020 at 03:20:48PM +0200, Michael Tretter wrote:
> On arm64 the compiler prints the following warning, when the macb driver
> is enabled:
> 
> 	warning: cast from pointer to integer of different size
> 
> Add the same explicit cast as implemented for all other dma addresses in
> the macb driver.
> 
> Fixes: befd110b5922 ("net: macb: init multiple dummy TX queues")

Well for me this updates the commit befd110b5922 to the state it should
have looked like, so for me this qualifies as a fix.

Anyway, it would be really good if we could at least catch runtime
errors when we truncate pointers.

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
