Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieHOA-0005IA-58
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 11:39:44 +0000
Date: Mon, 9 Dec 2019 12:39:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191209113938.nmm6vyges7dxpbzg@pengutronix.de>
References: <20191209104238.31161-1-s.trumtrar@pengutronix.de>
 <20191209104238.31161-2-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209104238.31161-2-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v2 2/4] image-metadata: add flags field to imd_header
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Dec 09, 2019 at 11:42:36AM +0100, Steffen Trumtrar wrote:
> To allow marking an imd tag with properties, add a flags field to the imd_header.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  include/image-metadata.h | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/include/image-metadata.h b/include/image-metadata.h
> index 5904d95acd37..ca73e6cf6ec6 100644
> --- a/include/image-metadata.h
> +++ b/include/image-metadata.h
> @@ -28,6 +28,8 @@
>  #define IMD_TYPE_END		0x640c7fff
>  #define IMD_TYPE_INVALID	0xffffffff
>  
> +#define IMD_FLAG_TAG_VALID	(1 << 0)
> +
>  /*
>   * The IMD header. All data is stored in little endian format in the image.
>   * The next header starts at the next 4 byte boundary after the data.
> @@ -35,6 +37,7 @@
>  struct imd_header {
>  	uint32_t type;		/* One of IMD_TYPE_* above */
>  	uint32_t datalength;	/* Length of the data (exluding the header) */
> +	uint32_t flags;
>  };

Erm, no. struct imd_header shouldn't be changed, this breaks the imd
tool. What I meant is that the valid flag should be added to the crc
tag.

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
