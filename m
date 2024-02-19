Delivery-date: Mon, 19 Feb 2024 20:14:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc96G-00F3f4-00
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 20:14:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc96F-00045u-7e
	for lore@pengutronix.de; Mon, 19 Feb 2024 20:14:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MQLr3OpsKuJmIIHkBLMXmAmutNRru9alqZYxwl1BdP4=; b=kiwKvkcFQgW7QCBZO1pfq0yuKN
	KyH0m8Y4Kf4AbV6hKEmO56F8G+QuFTAf6jI2uLzJRqKMEmLbJqiG01fRGnICEfUi6MqmF3eAyF1kF
	GNzflcl4QcM1eIeH6wPxP6Ns2rvWJsFTOSVzUDspsQJHdEhqPjsm3OfF1oCY6OjolXvYxlH2MhPE2
	9tKoAnKkQsJDK1Bs6UczgSwffSariF1Y/qqgaBl+F8Jer8oc3nauaa+mF6hv2Q/cPvrPO1z9ALdwh
	ymdtgCfp/35T8rq9bexGQU5mfFfTkpmAgsL7VUwKnNN2tatqpBqIsl8OTFMm05fMLumYAbSChOHec
	dj+EvT/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc95b-0000000Bqq1-3EgW;
	Mon, 19 Feb 2024 19:14:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc95Y-0000000Bqnn-2OTx
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 19:14:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1rc95V-0003d5-J1; Mon, 19 Feb 2024 20:14:01 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1rc95U-001hwB-Ty; Mon, 19 Feb 2024 20:14:00 +0100
Received: from rhi by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1rc95U-00Fxms-2h;
	Mon, 19 Feb 2024 20:14:00 +0100
Date: Mon, 19 Feb 2024 20:14:00 +0100
From: Roland Hieber <rhi@pengutronix.de>
To: Denis Osterland-Heim <denis.osterland@gmail.com>
Cc: barebox@lists.infradead.org,
	Denis OSTERLAND-HEIM <denis.osterland@diehl.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Alexander Dahl <ada@thorsis.com>
Message-ID: <20240219191400.do7ib5rxy7tupv4i@pengutronix.de>
References: <20230925110716.5370-1-denis.osterland@gmail.com>
 <6496b2cabc1ec6cec520ea27145d3cecdc19927c.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6496b2cabc1ec6cec520ea27145d3cecdc19927c.camel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_111404_632416_B51BF4E8 
X-CRM114-Status: GOOD (  27.79  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 2/2] raspi: fixup additional vc created nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On Mon, Sep 25, 2023 at 01:10:05PM +0200, Denis Osterland-Heim wrote:
> From: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
> 
> The video core creates some additional nodes.
> This code takes over this values.
> The /hat node is only there if an raspi hat with EEPROM is detected.
> 
> Signed-off-by: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
> Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/boards/raspberry-pi/rpi-common.c | 39 +++++++++++++++++------
>  1 file changed, 30 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c
> b/arch/arm/boards/raspberry-pi/rpi-common.c
> index ceafd55a56..713fad78c9 100644
> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
> @@ -264,19 +264,37 @@ static enum reset_src_type
> rpi_decode_pm_rsts(struct device_node *chosen,
>  
>  static int rpi_vc_fdt_fixup(struct device_node *root, void *data)
>  {
> -       const struct device_node *vc_chosen = data;
> -       struct device_node *chosen;
> +       const struct device_node *vc_node = data;
> +       struct device_node *node;
> +       struct property *pp;
>  
> -       chosen = of_create_node(root, "/chosen");
> -       if (!chosen)
> +       node = of_create_node(root, vc_node->full_name);
> +       if (!node)
>                 return -ENOMEM;
>  
> -       of_copy_property(vc_chosen, "overlay_prefix", chosen);
> -       of_copy_property(vc_chosen, "os_prefix", chosen);
> +       for_each_property_of_node(vc_node, pp)
> +               of_copy_property(vc_node, pp->name, node);
>  
>         return 0;
>  }
>  
> +static struct device_node *register_vc_fixup(struct device_node *root,
> +                                            const char *path)
> +{
> +       struct device_node *ret, *tmp;
> +
> +       ret = of_find_node_by_path_from(root, path);
> +       if (ret) {
> +               tmp = of_dup(ret);
> +               tmp->full_name = xstrdup(ret->full_name);
> +               of_register_fixup(rpi_vc_fdt_fixup, tmp);
> +       } else {
> +               pr_info("no '%s' node found in vc fdtn", path);
> +       }
> +
> +       return ret;
> +}
> +
>  static u32 rpi_boot_mode, rpi_boot_part;
>  /* Extract useful information from the VideoCore FDT we got.
>   * Some parameters are defined here:
> @@ -300,14 +318,17 @@ static void rpi_vc_fdt_parse(struct device_node
> *root)
>                 free(str);
>         }
>  
> -       chosen = of_find_node_by_path_from(root, "/chosen");
> +       register_vc_fixup(root, "/system");
> +       register_vc_fixup(root, "/axi");
> +       register_vc_fixup(root, "/reserved-memory");
> +       register_vc_fixup(root, "/hat");
> +       register_vc_fixup(root, "/chosen/bootloader");
> +       chosen = register_vc_fixup(root, "/chosen");

This throws a lot of new warnings and errors on our RPi 3B:

    barebox 2024.01.0 #1 2024-02-01T00:00:00+00:00
    Buildsystem version: DistroKit-2019.12.0-552-g775624b9f5d6

    Board: Raspberry Pi 3 Model B
    deep-probe: supported due to raspberrypi,3-model-b
    netconsole: registered as netconsole-1
    bcm2835-sdhost 3f202000.mmc@7e202000.of: registered as mci0
    bcm2835_mci 3f300000.mmc@7e300000.of: registered as mci1
    mci0: detected SD card version 2.0
    mci0: registered disk0
    state: New state registered 'state'
    state: Using bucket 0@0x00000000
    malloc space: 0x1d87f620 -> 0x3b0fec3f (size 472.5 MiB)
    WARNING: no property 'serial-number' found in vc fdt's '' node
    no '/system' node found in vc fdt
    no '/axi' node found in vc fdt
    no '/hat' node found in vc fdt
    no '/chosen/bootloader' node found in vc fdt
    WARNING: no property 'bootargs' found in vc fdt's '/chosen' node
    WARNING: no property 'overlay_prefix' found in vc fdt's '/chosen' node
    WARNING: no property 'os_prefix' found in vc fdt's '/chosen' node
    WARNING: 'pm_rsts' value not found in vc fdt
    ERROR: Won't delete root device node
    environment load /boot/barebox.env: No such file or directory
    Maybe you have to create the partition.

Do you have any idea what is going on here? 

I also don't see /vc.dtb, which should have been created. I have
'vc.kernel: kernel7.img' in the 'global' output, but nothing else
starting with vc.*.

 - Roland

>         if (!chosen) {
>                 pr_err("no '/chosen' node found in vc fdtn");
>                 goto out;
>         }
>  
> -       of_register_fixup(rpi_vc_fdt_fixup, of_dup(chosen));
> -
>         bootloader = of_find_node_by_name(chosen, "bootloader");
>  
>         str = of_read_vc_string(chosen, "bootargs");
> -- 
> 2.39.2
> 
> 

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |


