Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gAqBP-00068J-5B
 for barebox@lists.infradead.org; Fri, 12 Oct 2018 05:40:21 +0000
Date: Fri, 12 Oct 2018 07:40:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181012054002.uuxvolwpqybzgppt@pengutronix.de>
References: <20181011164145.GA21891@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181011164145.GA21891@lenoch>
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
Subject: Re: [PATCH] environment: Fix overlapping partitions error message
To: Ladislav Michl <ladis@linux-mips.org>
Cc: barebox@lists.infradead.org

On Thu, Oct 11, 2018 at 06:41:46PM +0200, Ladislav Michl wrote:
> Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
> Fixes: b234a6da331f ("environment: Do not use environment when
>                       overlapping with other partitions")
> ---
>  common/startup.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/common/startup.c b/common/startup.c
> index 832d3262f..5793ea28a 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -110,9 +110,9 @@ static int check_overlap(const char *path)
>  conflict:
>  	pr_err("Environment partition (0x%08llx-0x%08llx) "
>  		"overlaps with partition %s (0x%08llx-0x%08llx), not using it\n",
> -		cenv->offset, cenv->offset + cenv->offset + cenv->size - 1,
> +		cenv->offset, cenv->offset + cenv->size - 1,
>  		cpart->name,
> -		cpart->offset, cpart->offset + cpart->offset + cpart->size - 1);
> +		cpart->offset, cpart->offset + cpart->size - 1);

/me pulls over a brown paper bag and applies

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
