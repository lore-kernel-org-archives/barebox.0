Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VNoEX-0004sc-L7
 for barebox@lists.infradead.org; Sun, 22 Sep 2013 18:18:15 +0000
Date: Sun, 22 Sep 2013 20:17:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130922181748.GM30088@pengutronix.de>
References: <1379776829-30964-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1379776829-30964-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH v2] bootm: update os_entry from uimage
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Sep 21, 2013 at 05:20:29PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> if not uimage set 0 by default
> 
> today we do not see the issue as the kernel entry point is the same as the
> load_addr but on other binary its not necessary the case
> 
> as today we ignore the entry point set in the uimage and just assume it's the
> same as the load_addr
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> @@ -80,6 +83,13 @@ static int bootm_open_os_uimage(struct image_data *data)
>  			uimage_close(data->os);
>  			return -ENOMEM;
>  		}
> +
> +	}
> +
> +	if (update_ep && data->os_entry == UIMAGE_SOME_ADDRESS) {
> +		data->os_entry = data->os->header.ih_ep;
> +		if (data->os_address != UIMAGE_INVALID_ADDRESS)
> +			data->os_entry -= data->os_address;
>  	}

This is wrong. struct image_data stores the entry to the image relative
to the image start, not as absolute address.

The architecture support already handles this correctly:

./arch/nios2/lib/bootm.c:43:    kernel = (void *)(idata->os_address + idata->os_entry);
./arch/ppc/lib/ppclinux.c:76:   kernel = (void *)(data->os_address + data->os_entry);
./arch/arm/lib/bootm.c:58:      kernel = data->os_res->start + data->os_entry;
./arch/blackfin/lib/blackfin_linux.c:48:        appl = (void*)(idata->os_address + idata->os_entry);

What's missing is that we have to set data->os_entry to the correct
offset taken from the uImage.

Sascha

From 789bd923f6dd7b9de53f0df61ee749aaf53db83c Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 22 Sep 2013 19:51:53 +0200
Subject: [PATCH] bootm: handle image entry point correctly

The uImage format stores the entry point to the image in the ih_ep
field. Honor this field.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/bootm.c b/common/bootm.c
index 1987a09..4e62006 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -73,6 +73,8 @@ static int bootm_open_os_uimage(struct image_data *data)
 	if (data->os_address == UIMAGE_SOME_ADDRESS)
 		data->os_address = data->os->header.ih_load;
 
+	data->os_entry = data->os->header.ih_ep - data->os->header.ih_load;
+
 	if (data->os_address != UIMAGE_INVALID_ADDRESS) {
 		data->os_res = uimage_load_to_sdram(data->os, 0,
 				data->os_address);
-- 
1.8.4.rc3

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
