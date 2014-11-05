Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xluuf-0000Tv-VL
 for barebox@lists.infradead.org; Wed, 05 Nov 2014 07:21:54 +0000
Date: Wed, 5 Nov 2014 08:21:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141105072132.GI30369@pengutronix.de>
References: <1415094176-26435-1-git-send-email-l.stach@pengutronix.de>
 <1415094176-26435-2-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1415094176-26435-2-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 02/10] efi: add Barebox GUID
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 04, 2014 at 10:42:48AM +0100, Lucas Stach wrote:
> A proper GUID is needed to namespace all sorts of
> things, most prominently persistent variables.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  include/efi.h | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/include/efi.h b/include/efi.h
> index 70fe254dbafa..507115881b55 100644
> --- a/include/efi.h
> +++ b/include/efi.h
> @@ -468,6 +468,10 @@ extern efi_runtime_services_t *RT;
>  #define EFI_VLANCONFIGDXE_INF_GUID \
>  	EFI_GUID(0xe4f61863, 0xfe2c, 0x4b56, 0xa8, 0xf4, 0x08, 0x51, 0x9b, 0xc4, 0x39, 0xdf)
>  
> +/* barebox specific GUIDs */
> +#define EFI_BAREBOX_VENDOR_GUID \
> +	EFI_GUID(0x5b91f69c, 0x8b88, 0x4a2b, 0x92, 0x69, 0x5f, 0x1d, 0x80, 0x2b, 0x51, 0x75)

Can we just make up our own?

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
