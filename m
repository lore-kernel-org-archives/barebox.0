Delivery-date: Tue, 12 Sep 2023 11:35:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfzoM-00CUhI-UM
	for lore@lore.pengutronix.de; Tue, 12 Sep 2023 11:35:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfzoK-0007eS-U4
	for lore@pengutronix.de; Tue, 12 Sep 2023 11:35:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vbOjCKBFOtz2ScI8yy1b/isZweU2PLNr8hghI1KONHY=; b=zwlmKXnBIUk1JVv+SKZ9gAfOO1
	bt28HzDdZKqjon9a8gegFi7KkkF7NXl+IrvKT2cCG8BXmLhDjQyboekeBbGDQZ0ZmZ947zbTL6j6G
	bAQdHXaq4ONbGfw9DY8T+jkXBQfjT+Dbvvo3H+WeOwHcs2hZnHYtVi/qVlGIDA80KeNcbktloCA8k
	LDYGiuupwMVyLdndkSDqF5SdmSjDW7wquxyo92oXNXQHg+2zjsKg9fAW8K3uqdZ13rb+CDdMsSmof
	kd1OCD+Kh/frOxjhQG05viO6mhLv1MX1sl2UrSNzrOvBFPkMsjEX/H6uZWtzP/86MQFxdT+HhkyZc
	B6+2PRVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfznF-002l8Q-0Z;
	Tue, 12 Sep 2023 09:34:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfznC-002l6a-06
	for barebox@lists.infradead.org;
	Tue, 12 Sep 2023 09:34:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qfznA-0007S8-Mz; Tue, 12 Sep 2023 11:34:44 +0200
Message-ID: <bc0ecc8e-81c0-afbe-0641-24688fc0fbe3@pengutronix.de>
Date: Tue, 12 Sep 2023 11:34:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Denis Osterland-Heim <denis.osterland@gmail.com>,
 barebox@lists.infradead.org
Cc: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
References: <20230801104417.8941-1-denis.osterland@gmail.com>
 <6bbc80679a4a24710e779989c6bcc4ab8278122f.camel@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <6bbc80679a4a24710e779989c6bcc4ab8278122f.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_023446_067465_4182B8B3 
X-CRM114-Status: GOOD (  26.32  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] raspi: support to read vc values via dt-2nd boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 02.08.23 12:49, Denis Osterland-Heim wrote:
> From: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
> 
> In case of boot via dt-2nd pbl does not copy dtb, because it is not
> executed. With this patch the values were read and registered as
> fix-ups. It also adds a inif function that only fix-ups the ethernet
> MAC address.
> 
> Signed-off-by: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/boards/raspberry-pi/rpi-common.c | 32 ++++++++++++++---------
>  1 file changed, 20 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c
> b/arch/arm/boards/raspberry-pi/rpi-common.c
> index 56e7eebd61..2f525e7d70 100644
> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
> @@ -110,6 +110,12 @@ static void rpi_add_led(void)
>                 led_set_trigger(LED_TRIGGER_HEARTBEAT, &l->led);
>  }
>  
> +static int rpi_eth_init(struct rpi_priv *priv)
> +{
> +       rpi_set_usbethaddr();
> +       return 0;
> +}
> +
>  static int rpi_b_init(struct rpi_priv *priv)
>  {
>         rpi_leds[0].gpio = 16;
> @@ -276,16 +282,12 @@ static u32 rpi_boot_mode, rpi_boot_part;
>   * Some parameters are defined here:
>   *
> https://www.raspberrypi.com/documentation/computers/configuration.html#part4
>   */
> -static void rpi_vc_fdt_parse(void *fdt)
> +static void rpi_vc_fdt_parse(struct device_node *root)
>  {
>         int ret;
> -       struct device_node *root, *chosen, *bootloader, *memory;
> +       struct device_node *chosen, *bootloader, *memory;
>         char *str;
>  
> -       root = of_unflatten_dtb(fdt, INT_MAX);
> -       if (IS_ERR(root))
> -               return;
> -
>         str = of_read_vc_string(root, "serial-number");
>         if (str) {
>                 barebox_set_serial_number(str);
> @@ -363,7 +365,7 @@ static void rpi_vc_fdt_parse(void *fdt)
>         return;
>  }
>  
> -static void rpi_vc_fdt(void)
> +static struct device_node *rpi_vc_fdt(void)
>  {
>         void *saved_vc_fdt;
>         struct fdt_header *oftree;
> @@ -379,17 +381,17 @@ static void rpi_vc_fdt(void)
>                 if (oftree->totalsize)
>                         pr_err("there was an error copying fdt in pbl:
> %d\n",
>                                         be32_to_cpu(oftree-
>> totalsize));
> -               return;
> +               return ERR_PTR(-EINVAL);
>         }
>  
>         if (magic != FDT_MAGIC)
> -               return;
> +               return ERR_PTR(-EINVAL);
>  
>         size = be32_to_cpu(oftree->totalsize);
>         if (write_file("/vc.dtb", saved_vc_fdt, size))
>                 pr_err("failed to save videocore fdt to a file\n");
> -
> -       rpi_vc_fdt_parse(saved_vc_fdt);
> +       
> +       return of_unflatten_dtb(saved_vc_fdt, INT_MAX);
>  }
>  
>  static void rpi_set_kernel_name(void) {
> @@ -452,6 +454,7 @@ static int rpi_devices_probe(struct device *dev)
>         const struct rpi_machine_data *dcfg;
>         struct regulator *reg;
>         struct rpi_priv *priv;
> +       struct device_node *root;
>         const char *name, *ptr;
>         char *hostname;
>         int ret;
> @@ -480,7 +483,8 @@ static int rpi_devices_probe(struct device *dev)
>         bcm2835_register_fb();
>         armlinux_set_architecture(MACH_TYPE_BCM2708);
>         rpi_env_init();
> -       rpi_vc_fdt();
> +       root = rpi_vc_fdt();
> +       rpi_vc_fdt_parse(IS_ERR(root) ? priv->dev->device_node : root);
>         rpi_set_kernel_name();
>  
>         if (dcfg && dcfg->init)
> @@ -599,6 +603,7 @@ static const struct rpi_machine_data rpi_3_ids[] =
> {
>                 .init = rpi_b_plus_init,
>         }, {
>                 .hw_id = BCM2837_BOARD_REV_CM3,
> +               .init = rpi_eth_init,
>         }, {
>                 .hw_id = BCM2837B0_BOARD_REV_CM3_PLUS,
>         }, {
> @@ -611,10 +616,13 @@ static const struct rpi_machine_data rpi_3_ids[]
> = {
>  static const struct rpi_machine_data rpi_4_ids[] = {
>         {
>                 .hw_id = BCM2711_BOARD_REV_4_B,
> +               .init = rpi_eth_init,
>         }, {
>                 .hw_id = BCM2711_BOARD_REV_400,
> +               .init = rpi_eth_init,
>         }, {
>                 .hw_id = BCM2711_BOARD_REV_CM4,
> +               .init = rpi_eth_init,
>         }, {
>                 .hw_id = U8_MAX
>         },

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



