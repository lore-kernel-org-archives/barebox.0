Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZU78S-0006vk-IV
 for barebox@lists.infradead.org; Tue, 25 Aug 2015 05:51:05 +0000
Date: Tue, 25 Aug 2015 07:50:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150825055040.GM18700@pengutronix.de>
References: <1440415935-32674-1-git-send-email-d.schultz@phytec.de>
 <1440415935-32674-3-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1440415935-32674-3-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH 3/3] include: mci: Add new ext. CSD field defines
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Aug 24, 2015 at 01:32:15PM +0200, Daniel Schultz wrote:
> Added missing defines for the extended CSD register until standard 5.1.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  include/mci.h | 188 ++++++++++++++++++++++++++++++++++++++++++++--------------
>  1 file changed, 143 insertions(+), 45 deletions(-)
> 
> diff --git a/include/mci.h b/include/mci.h
> index a7bf8cd..dfeca46 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -137,51 +137,149 @@
>   * EXT_CSD fields
>   */
>  
> -#define EXT_CSD_FLUSH_CACHE		32      /* W */
> -#define EXT_CSD_CACHE_CTRL		33      /* R/W */
> -#define EXT_CSD_POWER_OFF_NOTIFICATION	34	/* R/W */
> -#define EXT_CSD_GP_SIZE_MULT		143	/* R/W */

Please do not change the whitespaces in existing defines. Better some
whitespaces inconstistencies but a better to review patch.

Also you are using some of the defines in 1/3, so this patch should be
before it, right?

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
