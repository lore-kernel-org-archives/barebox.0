Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e80TN-0005bU-M0
 for barebox@lists.infradead.org; Fri, 27 Oct 2017 08:58:39 +0000
Date: Fri, 27 Oct 2017 10:58:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171027085815.aiuy7cjxbmvchlzk@pengutronix.de>
References: <1509087948-15969-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1509087948-15969-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/2] efi-gui: add USB IO Protocol GUID definition
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 27, 2017 at 09:05:47AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/efi-guid.c | 1 +
>  include/efi.h     | 3 +++
>  2 files changed, 4 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/common/efi-guid.c b/common/efi-guid.c
> index 71aa21ddd..1e45ccf4d 100644
> --- a/common/efi-guid.c
> +++ b/common/efi-guid.c
> @@ -35,6 +35,7 @@ const char *efi_guid_string(efi_guid_t *g)
>  	EFI_GUID_STRING(EFI_UGA_PROTOCOL_GUID, "UGA Draw Protocol", "EFI 1.1 UGA Draw Protocol");
>  	EFI_GUID_STRING(EFI_UGA_IO_PROTOCOL_GUID, "UGA Protocol", "EFI 1.1 UGA Protocol");
>  	EFI_GUID_STRING(EFI_PCI_IO_PROTOCOL_GUID, "PCI IO Protocol", "EFI 1.1 PCI IO Protocol");
> +	EFI_GUID_STRING(EFI_USB_IO_PROTOCOL_GUID, "USB IO Protocol", "EFI 1.0 USB IO Protocol");
>  	EFI_GUID_STRING(EFI_FILE_INFO_GUID, "File Info", "EFI File Infom");
>  	EFI_GUID_STRING(EFI_SIMPLE_FILE_SYSTEM_GUID, "Filesystem", "EFI 1.0 Simple FileSystem");
>  	EFI_GUID_STRING(EFI_DEVICE_TREE_GUID, "Device Tree", "EFI Device Tree GUID");
> diff --git a/include/efi.h b/include/efi.h
> index e1fc134ee..7cc5fe05f 100644
> --- a/include/efi.h
> +++ b/include/efi.h
> @@ -358,6 +358,9 @@ extern efi_runtime_services_t *RT;
>  #define EFI_PCI_IO_PROTOCOL_GUID \
>      EFI_GUID(  0x4cf5b200, 0x68b8, 0x4ca5, 0x9e, 0xec, 0xb2, 0x3e, 0x3f, 0x50, 0x2, 0x9a )
>  
> +#define EFI_USB_IO_PROTOCOL_GUID \
> +    EFI_GUID(0x2B2F68D6, 0x0CD2, 0x44cf, 0x8E, 0x8B, 0xBB, 0xA2, 0x0B, 0x1B, 0x5B, 0x75)
> +
>  #define EFI_FILE_INFO_GUID \
>      EFI_GUID(  0x9576e92, 0x6d3f, 0x11d2, 0x8e, 0x39, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b )
>  
> -- 
> 2.11.0
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
