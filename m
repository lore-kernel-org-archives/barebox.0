Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwMxc-0006GC-Bu
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 09:15:05 +0000
Date: Tue, 28 Jan 2020 10:15:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200128091502.3daq2zgro2wllrjo@pengutronix.de>
References: <20200127145151.31954-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127145151.31954-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v4 1/3] imd: replace magicvalue with sizeof(struct)
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jan 27, 2020 at 03:51:49PM +0100, Steffen Trumtrar wrote:
> Instead of using "8" as the size of an imd_header, use the sizeof operator.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  common/imd.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

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
