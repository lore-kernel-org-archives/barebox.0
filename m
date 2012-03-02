Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S3UXb-0001L6-Fw
 for barebox@lists.infradead.org; Fri, 02 Mar 2012 15:37:08 +0000
Date: Fri, 2 Mar 2012 16:35:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120302153559.GP3852@pengutronix.de>
References: <4F50C74E.20703@ronetix.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4F50C74E.20703@ronetix.at>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: AT91SAM9G45: MACB: not usable Ethernet when MMU is enabled
To: RONETIX - Asen Dimov <dimov@ronetix.at>
Cc: barebox@lists.infradead.org

On Fri, Mar 02, 2012 at 03:12:46PM +0200, RONETIX - Asen Dimov wrote:
> Hello everyone,
> 
> the Ethernet on AT91SAM9G45(with ARM926J CPU) is not operational
> when the MMU is enabled.
> Have some met with this issue before and probably solved it?

grep for dma_alloc_coherent, dma_flush_range. This should give you the
hints necessary to make it work.

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
