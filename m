Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UGP1I-0001va-3o
 for barebox@lists.infradead.org; Fri, 15 Mar 2013 07:25:41 +0000
Date: Fri, 15 Mar 2013 08:25:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130315072538.GY1906@pengutronix.de>
References: <1363040687-1221-1-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1363040687-1221-1-git-send-email-vicencb@gmail.com>
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

On Mon, Mar 11, 2013 at 11:24:47PM +0100, Vicente Bergas wrote:
> > I don't see a point in obfuscating this so much. Please call only call
> > the features you want to have setup in the first place. For your own
> > debugging purposes it makes no difference whether you edit the C file
> > above or this header file. For different tablets with different features
> > you need to find another solution anyway.
> > 
> > Sascha
> 
> I agree with you. My first intention was to put a place-holder for each feature
> so it would be easy to customize for each tablet. But anyways the file has to
> be edited for customization.
> This second version of the patch leaves the same features, which are required,
> but still has the changes for zeroing each feature before setting it.

Can you please resend with a proper commit message?

Sascha

> 
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
> ---
>  arch/arm/boards/archosg9/archos_features.c | 58 +++++++++---------------------
>  1 file changed, 16 insertions(+), 42 deletions(-)
> 
> diff --git a/arch/arm/boards/archosg9/archos_features.c b/arch/arm/boards/archosg9/archos_features.c
> index 5d93403..b396734 100644
> --- a/arch/arm/boards/archosg9/archos_features.c
> +++ b/arch/arm/boards/archosg9/archos_features.c
> @@ -27,9 +27,9 @@ static void setup_feature_core(void)
>  	features->hdr.tag = FTAG_CORE;
>  	features->hdr.size = feature_tag_size(feature_tag_core);
>  
> +	memset(&features->u.core, 0, sizeof(features->u.core));
>  	features->u.core.magic = FEATURE_LIST_MAGIC;
>  	features->u.core.list_revision = FEATURE_LIST_REV;
> -	features->u.core.flags = 0;
>  
>  	features = feature_tag_next(features);
>  }
> @@ -38,8 +38,7 @@ static void setup_feature_product_name(void)
>  	features->hdr.tag = FTAG_PRODUCT_NAME;
>  	features->hdr.size = feature_tag_size(feature_tag_product_name);
>  
> -	memset(features->u.product_name.name, 0,
> -		sizeof(features->u.product_name.name));
> +	memset(&features->u.product_name, 0, sizeof(features->u.product_name));
>  	sprintf(features->u.product_name.name, "A80S");
>  	features->u.product_name.id = 0x13A8;
>  
> @@ -50,10 +49,8 @@ static void setup_feature_product_serial_number(void)
>  	features->hdr.tag = FTAG_PRODUCT_SERIAL_NUMBER;
>  	features->hdr.size = feature_tag_size(feature_tag_product_serial);
>  
> -	features->u.product_serial.serial[0] = 0;
> -	features->u.product_serial.serial[1] = 0;
> -	features->u.product_serial.serial[2] = 0;
> -	features->u.product_serial.serial[3] = 0;
> +	memset(&features->u.product_serial, 0,
> +		sizeof(features->u.product_serial));
>  
>  	features = feature_tag_next(features);
>  }
> @@ -62,14 +59,7 @@ static void setup_feature_product_mac_address(void)
>  	features->hdr.tag = FTAG_PRODUCT_MAC_ADDRESS;
>  	features->hdr.size = feature_tag_size(feature_tag_product_mac_address);
>  
> -	features->u.mac_address.addr[0] = 0;
> -	features->u.mac_address.addr[1] = 0;
> -	features->u.mac_address.addr[2] = 0;
> -	features->u.mac_address.addr[3] = 0;
> -	features->u.mac_address.addr[4] = 0;
> -	features->u.mac_address.addr[5] = 0;
> -	features->u.mac_address.reserved1 = 0;
> -	features->u.mac_address.reserved2 = 0;
> +	memset(&features->u.mac_address, 0, sizeof(features->u.mac_address));
>  
>  	features = feature_tag_next(features);
>  }
> @@ -78,6 +68,8 @@ static void setup_feature_board_pcb_revision(void)
>  	features->hdr.tag = FTAG_BOARD_PCB_REVISION;
>  	features->hdr.size = feature_tag_size(feature_tag_board_revision);
>  
> +	memset(&features->u.board_revision, 0,
> +		sizeof(features->u.board_revision));
>  	features->u.board_revision.revision = 5;
>  
>  	features = feature_tag_next(features);
> @@ -87,23 +79,10 @@ static void setup_feature_sdram(void)
>  	features->hdr.tag = FTAG_SDRAM;
>  	features->hdr.size = feature_tag_size(feature_tag_sdram);
>  
> -	memset(features->u.sdram.vendor, 0, sizeof(features->u.sdram.vendor));
> -	memset(features->u.sdram.product, 0,
> -		sizeof(features->u.sdram.product));
> +	memset(&features->u.sdram, 0, sizeof(features->u.sdram));
>  	sprintf(features->u.sdram.vendor , "elpida");
> -	sprintf(features->u.sdram.product, "EDB8064B1PB"/*"EDB4064B2PB"*/);
> -	features->u.sdram.type     = 0;
> -	features->u.sdram.revision = 0;
> -	features->u.sdram.flags    = 0;
> -	features->u.sdram.clock    = 400;
> -	features->u.sdram.param_0  = 0;
> -	features->u.sdram.param_1  = 0;
> -	features->u.sdram.param_2  = 0;
> -	features->u.sdram.param_3  = 0;
> -	features->u.sdram.param_4  = 0;
> -	features->u.sdram.param_5  = 0;
> -	features->u.sdram.param_6  = 0;
> -	features->u.sdram.param_7  = 0;
> +	sprintf(features->u.sdram.product, "EDB8064B1PB");
> +	features->u.sdram.clock = 400;
>  
>  	features = feature_tag_next(features);
>  }
> @@ -112,6 +91,7 @@ static void setup_feature_pmic(void)
>  	features->hdr.tag = FTAG_PMIC;
>  	features->hdr.size = feature_tag_size(feature_tag_pmic);
>  
> +	memset(&features->u.pmic, 0, sizeof(features->u.pmic));
>  	features->u.pmic.flags = FTAG_PMIC_TPS62361;
>  
>  	features = feature_tag_next(features);
> @@ -121,6 +101,7 @@ static void setup_feature_serial_port(void)
>  	features->hdr.tag = FTAG_SERIAL_PORT;
>  	features->hdr.size = feature_tag_size(feature_tag_serial_port);
>  
> +	memset(&features->u.serial_port, 0, sizeof(features->u.serial_port));
>  	features->u.serial_port.uart_id = 1;
>  	features->u.serial_port.speed = 115200;
>  
> @@ -131,9 +112,10 @@ static void setup_feature_has_gpio_volume_keys(void)
>  	features->hdr.tag = FTAG_HAS_GPIO_VOLUME_KEYS;
>  	features->hdr.size = feature_tag_size(feature_tag_gpio_volume_keys);
>  
> +	memset(&features->u.gpio_volume_keys, 0,
> +		sizeof(features->u.gpio_volume_keys));
>  	features->u.gpio_volume_keys.gpio_vol_up   = 0x2B;
>  	features->u.gpio_volume_keys.gpio_vol_down = 0x2C;
> -	features->u.gpio_volume_keys.flags = 0;
>  
>  	features = feature_tag_next(features);
>  }
> @@ -142,18 +124,9 @@ static void setup_feature_screen(void)
>  	features->hdr.tag = FTAG_SCREEN;
>  	features->hdr.size = feature_tag_size(feature_tag_screen);
>  
> -	memset(features->u.screen.vendor, 0,
> -		sizeof(features->u.screen.vendor));
> +	memset(&features->u.screen, 0, sizeof(features->u.screen));
>  	sprintf(features->u.screen.vendor, "CMI");
> -	features->u.screen.type = 0;
> -	features->u.screen.revision = 0;
> -	features->u.screen.vcom = 0;
>  	features->u.screen.backlight = 0xC8;
> -	features->u.screen.reserved[0] = 0;
> -	features->u.screen.reserved[1] = 0;
> -	features->u.screen.reserved[2] = 0;
> -	features->u.screen.reserved[3] = 0;
> -	features->u.screen.reserved[4] = 0;
>  
>  	features = feature_tag_next(features);
>  }
> @@ -162,6 +135,7 @@ static void setup_feature_turbo(void)
>  	features->hdr.tag = FTAG_TURBO;
>  	features->hdr.size = feature_tag_size(feature_tag_turbo);
>  
> +	memset(&features->u.turbo, 0, sizeof(features->u.turbo));
>  	features->u.turbo.flag = 1;
>  
>  	features = feature_tag_next(features);
> -- 
> 1.8.1.5
> 
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
