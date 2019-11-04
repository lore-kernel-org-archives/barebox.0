Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRYBr-00070D-L2
 for barebox@lists.infradead.org; Mon, 04 Nov 2019 08:58:24 +0000
Date: Mon, 4 Nov 2019 09:58:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191104085822.dfromokjkpomhfos@pengutronix.de>
References: <20191101195429.7728-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101195429.7728-1-dev@lynxeye.de>
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
Subject: Re: [PATCH] serial: cadence: fix serial_flush
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 01, 2019 at 08:54:29PM +0100, Lucas Stach wrote:
> The TXEMPTY bit gets set as soon as the transmit FIFO gets empty, so
> flushing must wait until the bit is set instead of being unset.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  drivers/serial/serial_cadence.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

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
