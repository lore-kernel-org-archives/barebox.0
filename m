Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX2V8-0007wA-AT
 for barebox@lists.infradead.org; Fri, 08 May 2020 12:53:15 +0000
Date: Fri, 8 May 2020 14:53:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200508125312.GD10755@pengutronix.de>
References: <20200330143915.663705-1-ahmad@a3f.at>
 <20200330143915.663705-5-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330143915.663705-5-ahmad@a3f.at>
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
Subject: Re: [PATCH 5/8] nvmem: bsec: remove wrongly named bsec_field type
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Mon, Mar 30, 2020 at 04:39:12PM +0200, Ahmad Fatoum wrote:
> BSEC_SMC_READ_SHADOW and BSEC_SMC_WRITE_SHADOW aren't fields, but
> operations to apply on fields. Rename it accordingly and fix up instances
> where it was used wrongly.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/arm/mach-stm32mp/include/mach/bsec.h | 6 +++---
>  drivers/nvmem/bsec.c                      | 2 +-
>  2 files changed, 4 insertions(+), 4 deletions(-)

Applied this series up to this patch.

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
