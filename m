Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z56C7-0003p0-0C
 for barebox@lists.infradead.org; Wed, 17 Jun 2015 05:47:27 +0000
Date: Wed, 17 Jun 2015 07:47:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150617054703.GX6325@pengutronix.de>
References: <1434356973-16490-1-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1434356973-16490-1-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [PATCH] scripts/omap_signGP: Fix image size in GP header
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org, p-stockmar@ti.com

On Mon, Jun 15, 2015 at 10:29:33AM +0200, Wadim Egorov wrote:
> The size field in the GP header has to include its own size.
> This can be easily misread in the TRM.
> 
> Sometimes, when the gp_header size is not included, the ROM code
> will not copy the complete MLO into the SRAM. This happens when the MLO file
> size is 98823 bytes (and the value of GP header size field is 98303 bytes).
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
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
