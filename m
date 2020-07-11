Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ju7KT-0004ks-A8
 for barebox@lists.infradead.org; Sat, 11 Jul 2020 04:41:38 +0000
Date: Sat, 11 Jul 2020 06:41:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200711044135.GN15485@pengutronix.de>
References: <20200709202204.2448-1-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200709202204.2448-1-cleger@kalray.eu>
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
Subject: Re: [PATCH] kvx: exclude dtb from malloc zone
To: Clement Leger <cleger@kalray.eu>
Cc: barebox@lists.infradead.org

Hi Clement,

On Thu, Jul 09, 2020 at 10:22:04PM +0200, Clement Leger wrote:
> When dtb is provided by the FSBL (first stage bootloader), it might
> end up in the malloc zone initialized by barebox. While the dtb is
> discarded after being unflatten, if the dtb is provided right after
> barebox elf, then the malloc can overwrite it while unflattening it when
> allocating nodes.
> To avoid that, exclude the dtb from the malloc zone by checking if it
> overlaps it. If so, determine the largest zone for the allocation and
> modify the memory area to use that.

Isn't there some safe place where the dtb can be copied to? Making the
malloc area smaller seems a bit wasteful.

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
