Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCIDt-0003Re-L3
 for barebox@lists.infradead.org; Mon, 23 Sep 2019 06:53:27 +0000
Date: Mon, 23 Sep 2019 08:53:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190923065324.vf654tt2wyvq2f3q@pengutronix.de>
References: <1568979319-254499-1-git-send-email-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568979319-254499-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: Re: [PATCH v2] mtd: ubi: Max out wear-leveling threshold
To: Stefan Riedmueller <s.riedmueller@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Sep 20, 2019 at 01:35:19PM +0200, Stefan Riedmueller wrote:
> Due to the recursive ubi_thread implementation in the barebox, a large
> amount of wear-leveling can lead to a stack overflow.
> 
> This was observed during extensive ubi stress tests with the linux
> kernel and periodic power cycles. We found that if the wear-leveling
> threshold is exceeded and a large amount of erase blocks need
> wear-leveling the stack can overflow.
> 
> The hardware used to observe this was a phyCORE-i.MX 6 with 1GB NAND flash.
> 
> As the kernel is perfectly capable of handling wear-leveling we can
> disable wear-leveling in the barebox by maxing out the threshold and
> removing its Kconfig option.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
> Changes in v2:
>  - Remove threshold config completely instead of just maxing out the default
> ---

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
