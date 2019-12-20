Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJwq-0007Tq-Sx
 for barebox@lists.infradead.org; Fri, 20 Dec 2019 15:12:14 +0000
Date: Fri, 20 Dec 2019 16:12:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191220151211.bots2cny4f3tluli@pengutronix.de>
References: <20191219090101.10030-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219090101.10030-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH v2] lds: align RO_DATA_SECTION members
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 19, 2019 at 10:01:01AM +0100, Lucas Stach wrote:
> From: Lucas Stach <dev@lynxeye.de>
> 
> When using the RO_DATA_SECTION macro, all the individual components
> are put into the rodata section. As they now end up in the same
> section there is no alignment enforced between them anymore. This
> leads to unaligned start pointers when any of the components have a
> unaligned size. Enforce some alignment between them.
> 
> Fixes: c5d38e920101 (lds: Add and use RO_DATA_SECTION macro)
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
> v2: use STRUCT_ALIGN
> ---
>  include/asm-generic/barebox.lds.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)

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
