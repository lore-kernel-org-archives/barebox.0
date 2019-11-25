Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ93j-00063o-FL
 for barebox@lists.infradead.org; Mon, 25 Nov 2019 07:45:25 +0000
Date: Mon, 25 Nov 2019 08:45:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191125074519.qfv6dzbhdepyozkk@pengutronix.de>
References: <20191118184809.27173-1-m.tretter@pengutronix.de>
 <20191118184809.27173-3-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191118184809.27173-3-m.tretter@pengutronix.de>
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
Subject: Re: [PATCH 2/2] ARM: zynqmp: defconfig: reenable DRIVER_NET_MACB
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 18, 2019 at 07:48:09PM +0100, Michael Tretter wrote:
> Commit d952a0eeba37 ("Regenerate defconfig files") disabled the macb
> driver in the ZynqMP defconfig, because CONFIG_NET was not enabled in
> the defconfig. While not strictly required, you probably want to enable
> the macb driver on the ZynqMP.
> 
> Enable CONFIG_NET and reenable CONFIG_DRIVER_NET_MACB.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  arch/arm/configs/zynqmp_defconfig | 2 ++
>  1 file changed, 2 insertions(+)

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
