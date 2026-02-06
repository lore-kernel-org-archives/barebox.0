Delivery-date: Fri, 06 Feb 2026 14:14:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voLfQ-009Uib-3A
	for lore@lore.pengutronix.de;
	Fri, 06 Feb 2026 14:14:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voLfP-0001D6-Hz
	for lore@pengutronix.de; Fri, 06 Feb 2026 14:14:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7y8+7JZo6xD6Q7cyCm/d+kI5xcVz8PCU+WEezwKk47A=; b=x79Qa6oWWuRbnYkQhs1BVU6TF9
	lJYjFj8lioOgYLLy2c4NPKcg4RAkdvk1Q/PtBcbvwC/yvNGt77528PkHcgSO3IrerYubx4FHJFDAp
	XfT5di04Z2wmJ18NFsjRFFwweCcTUMWZ0jX9yKvpQLC204WoU1SXz1w2A16yhavRkcIveWeZnX7hc
	KWaphht6Ie49bJTju+cedryNe7WBSiDOB/t+uXCEVGBjtBlTXFARfK0x5YKTYLPTPDaJql4DWIQEo
	5lblXzuXF7lVv+ZFyB/rx0Wsf5Dm7mYgKiu7uROMl5cCcZJ2Sz3f0uDQusMwGQvGV6J350cpRKxvU
	hxXGGIkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voLev-0000000BLaA-3PKW;
	Fri, 06 Feb 2026 13:14:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voLet-0000000BLa1-3fiz
	for barebox@bombadil.infradead.org;
	Fri, 06 Feb 2026 13:14:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=7y8+7JZo6xD6Q7cyCm/d+kI5xcVz8PCU+WEezwKk47A=; b=Q37TCvUA5E+ZFcfYnvWA4ygriz
	RkWcyq2htN273LkNdSD3DHqBmxH6Wb5fFEFh33b3+6QyjIz42VKVB0m/URrYdHoOa49FSDklWP+iv
	4EAb0OajR3cXQVt+ELWym834uuGhkwNHnNSGRkG5wJaTBNkgvJZyWjwZ2gzqZGzhVes5uN19lRcwP
	8qDgh82MbVjme/kgARvbWn7humjmFpf3fk3XOvlHfYkxo3if4LGptRB6KesUb97rt2inWokyyik9q
	B+NHzRkpKNi6nCAk8up2nnssCSUnavC1FylsLOQJyKITHeF5LYrDtoFoRMaptvyLTILDXWiDm81JC
	z1gOwUCA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voLeg-00000003pUu-1wyf
	for barebox@lists.infradead.org;
	Fri, 06 Feb 2026 13:14:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1voLef-0000s7-4T; Fri, 06 Feb 2026 14:13:49 +0100
Message-ID: <ade6d330-a7a2-42cf-9813-c4b0bdf76b39@pengutronix.de>
Date: Fri, 6 Feb 2026 14:13:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260205-vmaster-customers-leicageo-system1600-v1-0-a80b234ce1a1@pengutronix.de>
 <20260205-vmaster-customers-leicageo-system1600-v1-4-a80b234ce1a1@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260205-vmaster-customers-leicageo-system1600-v1-4-a80b234ce1a1@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_131359_485697_80897705 
X-CRM114-Status: GOOD (  28.17  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/5] watchdog: Add Hexagon EFI watchdog driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 2/5/26 4:45 PM, Marco Felsch wrote:
> The EFI system co-processor implements a watchdog device which must be
> pinged to inform the MCU that the system is up and running.
> 
> Normaly the ping is done by Linux but sometimes it can become necessary
> to do it within barebox too, e.g. to allow barebox debugging and
> development.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/watchdog/Kconfig       |  9 +++++
>  drivers/watchdog/Makefile      |  1 +
>  drivers/watchdog/hgs_efi_wdt.c | 88 ++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 98 insertions(+)
> 
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index bf18782bdb58b20240d7762ce32f98c78c4cd12d..c962e8f22e5a7cb21ee93b3f82189cc8536781b9 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -195,4 +195,13 @@ config K3_RTI_WDT
>  	  Say Y here if you want to include support for the K3 watchdog
>  	  timer (RTI module) available in the K3 generation of processors.
>  
> +config HGS_EFI_WATCHDOG
> +	bool "Hexagon Geosystems EFI watchdog"
> +	depends on MFD_HGS_EFI || COMPILE_TEST

Thanks for making sure it compiles under COMPILE_TEST. :)


> +#include <mfd/hgs-efi.h>
> +
> +struct hgs_efi_wdt_data {
> +	unsigned int msg_id;
> +};
> +
> +struct hgs_efi_wdt {
> +	struct watchdog wdd;
> +	struct hgs_efi *efi;
> +	const struct hgs_efi_wdt_data *data;
> +	bool is_running;

This is only ever read, but set no where.

> +};
> +
> +static struct hgs_efi_wdt *to_hgs_efi_wdt(struct watchdog *wdd)
> +{
> +	return container_of(wdd, struct hgs_efi_wdt, wdd);
> +}
> +
> +static int hgs_efi_wdt_set_timeout(struct watchdog *wdd, unsigned int timeout)
> +{
> +	struct hgs_efi_wdt *efi_wd = to_hgs_efi_wdt(wdd);
> +	struct device *dev = &wdd->dev;
> +	struct hgs_sep_cmd cmd = {
> +		.type = HGS_SEP_MSG_TYPE_EVENT,
> +		.msg_id = efi_wd->data->msg_id,
> +	};
> +	int ret;
> +
> +	/* The watchdog can't be turned of */
> +	if (efi_wd->is_running && !timeout)
> +		return -ENOSYS;
> +
> +	/* The EFI watchdog doesn't have a timeout, once pinged */
> +	if (efi_wd->is_running)
> +		return 0;

A watchdog can also implement a ping callback, which may be suitable here.

> +static int hgs_efi_wdt_drv_probe(struct device *dev)
> +{
> +	struct hgs_efi_wdt *efi_wd;
> +	struct watchdog *wdd;
> +	int ret;
> +
> +	efi_wd = xzalloc(sizeof(*efi_wd));
> +	efi_wd->efi = dev_get_priv(dev->parent);
> +	efi_wd->data = of_device_get_match_data(dev);
> +
> +	wdd = &efi_wd->wdd;
> +	wdd->hwdev = dev;
> +	wdd->set_timeout = hgs_efi_wdt_set_timeout;

FYI, if you can query the EFI whether it's enabled, you can set
wdd->running to either WDOG_HW_RUNNING or WDOG_HW_NOT_RUNNING

> +
> +	ret = watchdog_register(wdd);
> +	if (ret)
> +		dev_err(dev, "Failed to register watchdog device\n");
> +
> +	return ret;
> +}
> +
> +const struct hgs_efi_wdt_data hgs_efi_wdt_gs05 = {
> +	.msg_id = 0,
> +};
> +
> +static struct of_device_id hgs_efi_wdt_of_match[] = {
> +	{ .compatible = "hgs,efi-gs05-wdt", .data = &hgs_efi_wdt_gs05 },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, hgs_efi_wdt_of_match);
> +
> +static struct driver hgs_efi_wdt_driver = {
> +	.name		= "hgs-efi-wdt",
> +	.probe		= hgs_efi_wdt_drv_probe,
> +	.of_compatible	= hgs_efi_wdt_of_match,
> +};
> +device_platform_driver(hgs_efi_wdt_driver);
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



