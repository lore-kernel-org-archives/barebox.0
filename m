Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJSLf-0003y1-9L
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 16:30:48 +0000
Date: Sun, 15 Apr 2012 18:30:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120415163040.GL3852@pengutronix.de>
References: <20120414155623.GA30672@game.jcrosoft.org>
 <1334419343-1121-6-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1334419343-1121-6-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 6/6] arm: bootm: zImage: add error message when can not
 request the memory
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Apr 14, 2012 at 06:02:23PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This will allow to understand what happened.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/lib/bootm.c |    2 ++
>  1 files changed, 2 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
> index 26053dc..1e29afd 100644
> --- a/arch/arm/lib/bootm.c
> +++ b/arch/arm/lib/bootm.c
> @@ -239,6 +239,8 @@ static int do_bootz_linux(struct image_data *data)
>  
>  	data->os_res = request_sdram_region("zimage", load_address, end);
>  	if (!data->os_res) {
> +		pr_err("bootm/zImage: failled to request memory at 0x%lx to 0x%lx (%d).\n",
> +		       load_address, load_address + end, end);

s/failled/failed/

I applied the remaining patches from this series.

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
