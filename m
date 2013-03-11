Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEyDv-0006Z8-D3
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 08:36:48 +0000
Date: Mon, 11 Mar 2013 09:36:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130311083644.GC1906@pengutronix.de>
References: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
 <1362871182-25726-9-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362871182-25726-9-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 8/9] archos: add atag appender for all features
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Mar 10, 2013 at 12:19:41AM +0100, Vicente Bergas wrote:
> 
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
> ---
>  arch/arm/boards/archosg9/archos_features.c | 414 ++++++++++++++++++++++++++---
>  arch/arm/boards/archosg9/archos_features.h |  39 +++
>  2 files changed, 412 insertions(+), 41 deletions(-)
> 
> diff --git a/arch/arm/boards/archosg9/archos_features.c b/arch/arm/boards/archosg9/archos_features.c

[...]

> +#ifdef INSERT_ATAG_HSDPA
> +	features->hdr.tag = FTAG_HAS_HSDPA;
> +	features->hdr.size = feature_tag_size(feature_tag_generic);
> +
> +	memset(&features->u.generic, 0, sizeof(features->u.generic));
> +
> +	features = feature_tag_next(features);
> +#endif
> +}
> +static void setup_feature_nfc(void)
> +{
> +#ifdef INSERT_ATAG_NFC
> +	features->hdr.tag = FTAG_HAS_NFC;
> +	features->hdr.size = feature_tag_size(feature_tag_generic);
> +
> +	memset(&features->u.generic, 0, sizeof(features->u.generic));
> +
> +	features = feature_tag_next(features);
> +#endif

So all features get an additional ifdef,...

>  }
>  static void setup_feature_none(void)
>  {
> @@ -191,6 +495,34 @@ static struct tag *setup_feature_list(struct tag * params)
>  	setup_feature_has_gpio_volume_keys();
>  	setup_feature_screen();
>  	setup_feature_turbo();
> +	setup_feature_product_oem();
> +	setup_feature_product_zone();
> +	setup_feature_clock();
> +	setup_feature_dcin();
> +	setup_feature_ext_screen();
> +	setup_feature_wifi();
> +	setup_feature_bluetooth();
> +	setup_feature_accelerometer();
> +	setup_feature_gps();
> +	setup_feature_harddisk_controller();
> +	setup_feature_harddisk();
> +	setup_feature_touchscreen();
> +	setup_feature_mmcsd();
> +	setup_feature_gpio_keys();
> +	setup_feature_wifi_pa();
> +	setup_feature_speaker();
> +	setup_feature_battery();
> +	setup_feature_electrical_shortcut();
> +	setup_feature_gyroscope();
> +	setup_feature_compass();
> +	setup_feature_camera();
> +	setup_feature_microphone();
> +	setup_feature_ambient_light_sensor();
> +	setup_feature_proximity_sensor();
> +	setup_feature_gsm();
> +	setup_feature_dect();
> +	setup_feature_hsdpa();
> +	setup_feature_nfc();

... they are all called unconditionally, many of them end up being
no-ops ...

>  	setup_feature_none();
>  
>  	fl->size = ((u32)features) - ((u32)(fl->data));
> diff --git a/arch/arm/boards/archosg9/archos_features.h b/arch/arm/boards/archosg9/archos_features.h
> index 5769c6c..a3e1437 100644
> --- a/arch/arm/boards/archosg9/archos_features.h
> +++ b/arch/arm/boards/archosg9/archos_features.h
> @@ -1,6 +1,45 @@
>  #ifndef __ARCHOS_FEATURES_H
>  #define __ARCHOS_FEATURES_H
>  
> +#undef  INSERT_ATAG_PRODUCT_NAME
> +#undef  INSERT_ATAG_PRODUCT_SERIAL_NUMBER
> +#undef  INSERT_ATAG_PRODUCT_MAC_ADDRESS
> +#undef  INSERT_ATAG_BOARD_PCB_REVISION
> +#define INSERT_ATAG_SDRAM
> +#undef  INSERT_ATAG_PMIC
> +#define INSERT_ATAG_SERIAL_PORT
> +#define INSERT_ATAG_HAS_GPIO_VOLUME_KEYS
> +#define INSERT_ATAG_SCREEN
> +#define INSERT_ATAG_TURBO

And then you use a header file to configure this.

I don't see a point in obfuscating this so much. Please call only call
the features you want to have setup in the first place. For your own
debugging purposes it makes no difference whether you edit the C file
above or this header file. For different tablets with different features
you need to find another solution anyway.

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
