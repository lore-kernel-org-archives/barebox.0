Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYpPr-00046y-LD
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 09:42:25 +0000
Date: Mon, 17 Dec 2018 10:42:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181217094209.al7uf2sz2z2ls5mm@pengutronix.de>
References: <20181213070336.26837-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181213070336.26837-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/4] net/e1000: Map custom error codes to more
 appropriate errno values
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Dec 12, 2018 at 11:03:33PM -0800, Andrey Smirnov wrote:
> A number of custom error codes used by e1000 driver will be propagated
> all the way up to generic networking code and will end up being fed to
> strerror(). As a result of that, some of the current error codes will
> result in not very helpful failure messages. For example, trying to
> ping a host on a system where access to i210's EEPROM fails results in
> the following message:
> 
>   barebox@ZII RDU2 Board:/ ping 192.168.53.7
>   ping failed: Operation not permitted
> 
> In order to make message like that one a little bit more helpful,
> change definitions of various E1000_ERR_* constants to map to a bit
> more appropriate error codes.
> 
> While at it, remove E1000_ERR_MASTER_REQUESTS_PENDING and
> E1000_ERR_HOST_INTERFACE_COMMAND that are not referenced anywhere in
> the codebase.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/net/e1000/e1000.h | 24 +++++++++++-------------
>  1 file changed, 11 insertions(+), 13 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
> index 4a1a1aa33..0a9e107c0 100644
> --- a/drivers/net/e1000/e1000.h
> +++ b/drivers/net/e1000/e1000.h
> @@ -95,19 +95,17 @@ typedef enum {
>  
>  /* Error Codes */
>  #define E1000_SUCCESS				0
> -#define E1000_ERR_EEPROM			1
> -#define E1000_ERR_PHY				2
> -#define E1000_ERR_CONFIG			3
> -#define E1000_ERR_PARAM				4
> -#define E1000_ERR_MAC_TYPE			5
> -#define E1000_ERR_PHY_TYPE			6
> -#define E1000_ERR_NOLINK			7
> -#define E1000_ERR_TIMEOUT			8
> -#define E1000_ERR_RESET				9
> -#define E1000_ERR_MASTER_REQUESTS_PENDING	10
> -#define E1000_ERR_HOST_INTERFACE_COMMAND	11
> -#define E1000_BLK_PHY_RESET			12
> -#define E1000_ERR_SWFW_SYNC 			13
> +#define E1000_ERR_EEPROM			EIO
> +#define E1000_ERR_PHY				EIO
> +#define E1000_ERR_CONFIG			EINVAL
> +#define E1000_ERR_PARAM				EINVAL
> +#define E1000_ERR_MAC_TYPE			EINVAL
> +#define E1000_ERR_PHY_TYPE			EINVAL
> +#define E1000_ERR_NOLINK			ENETDOWN
> +#define E1000_ERR_TIMEOUT			ETIMEDOUT
> +#define E1000_ERR_RESET				EIO
> +#define E1000_BLK_PHY_RESET			EWOULDBLOCK
> +#define E1000_ERR_SWFW_SYNC 			EBUSY
>  
>  /* PCI Device IDs */
>  #define E1000_DEV_ID_82542			0x1000
> -- 
> 2.19.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
