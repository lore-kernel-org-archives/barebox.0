Delivery-date: Fri, 06 Jun 2025 08:25:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNQWR-004Ht4-0L
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 08:25:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNQWQ-0001q5-FI
	for lore@pengutronix.de; Fri, 06 Jun 2025 08:25:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9wXtAPn483SKhxux79PfZPzzkzWy0ZKdxw2u3rroksU=; b=U+3A0lhotSQh1jyBv3onDPfjF6
	IXksx4S34rOhx5Wi9pA0G8+5OKFKLsTnxl3obK5knUYA+gqUSa+h+faOkbL6qjbD9mqhA+VxPt3bW
	ko00/E6goVSJJD1gMKzOqMNDjnxIJS0+lUK+nfVQZwaymCJGAVtk9AhQ+ugJEuKGyJevu/g+0yjGf
	jW8YJAiZ3F5HnlgNtONL+spXaaXrSpKouE61T00Y3ouAn27eJ4s7cs7qp9d93ssRSDEliL4JSbJv/
	mzCccVDHlRWwVjO4Z0ZYkdfD4kAoBk4HzHFS3pgS/FetM5hh9hoTVAaA+vQHMcehauhBpip65+3bo
	4K85PIrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNQVv-0000000HBUl-2Klh;
	Fri, 06 Jun 2025 06:25:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNQVs-0000000HBUQ-3zZT
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 06:25:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uNQVr-0001VP-GE; Fri, 06 Jun 2025 08:25:11 +0200
Message-ID: <7ad7f7b2-4d0d-41d5-9da5-f49d53bc9d6a@pengutronix.de>
Date: Fri, 6 Jun 2025 08:25:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org
References: <https://lore.barebox.org/barebox/20250605210726.1916656-2-a.fatoum@barebox.org/T/#u>
 <20250605212134.1931135-1-a.fatoum@barebox.org>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250605212134.1931135-1-a.fatoum@barebox.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_232512_999384_86B0FB9C 
X-CRM114-Status: GOOD (  18.48  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! driver: bus: embed bus driver node into bus
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 05.06.25 23:21, Ahmad Fatoum wrote:
> With this, CI is happy on all tested targets.

Please dismiss, I sent a v2 with this squashed.

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  drivers/bus/acpi.c       | 12 ++++++------
>  drivers/efi/efi-device.c | 14 +++++++-------
>  2 files changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/bus/acpi.c b/drivers/bus/acpi.c
> index 92325c16e234..f586b605d0d4 100644
> --- a/drivers/bus/acpi.c
> +++ b/drivers/bus/acpi.c
> @@ -138,7 +138,7 @@ static struct device *acpi_add_device(struct bus_type *bus,
>  	dev = xzalloc(sizeof(*dev));
>  
>  	dev->bus = bus;
> -	dev->parent = bus->dev;
> +	dev->parent = &bus->dev;
>  	dev->id = DEVICE_ID_DYNAMIC;
>  	devinfo_add(dev, acpi_devinfo);
>  
> @@ -149,7 +149,7 @@ static struct device *acpi_add_device(struct bus_type *bus,
>  
>  static int acpi_register_devices(struct bus_type *bus)
>  {
> -	struct efi_config_table *table = bus->dev->priv;
> +	struct efi_config_table *table = bus->dev.priv;
>  	struct acpi_rsdp *rsdp;
>  	struct acpi_rsdt *root;
>  	size_t entry_count;
> @@ -165,7 +165,7 @@ static int acpi_register_devices(struct bus_type *bus)
>  	 * 5.2.5.2 Finding the RSDP on UEFI Enabled Systems
>  	 */
>  	if (memcmp("RSD PTR ", rsdp->signature, sizeof(rsdp->signature))) {
> -		dev_dbg(bus->dev, "unexpected signature at start of config table: '%.8s'\n",
> +		dev_dbg(&bus->dev, "unexpected signature at start of config table: '%.8s'\n",
>  			rsdp->signature);
>  		return -ENODEV;
>  	}
> @@ -183,12 +183,12 @@ static int acpi_register_devices(struct bus_type *bus)
>  	}
>  
>  	if (acpi_sigcmp(sig, root->sdt.signature)) {
> -		dev_err(bus->dev, "Expected %s, but found '%.4s'.\n",
> +		dev_err(&bus->dev, "Expected %s, but found '%.4s'.\n",
>  			sig, root->sdt.signature);
>  		return -EIO;
>  	}
>  
> -	dev_info(bus->dev, "Found %s (OEM: %.8s) with %zu entries\n",
> +	dev_info(&bus->dev, "Found %s (OEM: %.8s) with %zu entries\n",
>  		sig, root->sdt.oem_id, entry_count);
>  
>  	for (i = 0; i < entry_count; i++) {
> @@ -232,7 +232,7 @@ static int efi_acpi_probe(void)
>  	if (!table)
>  		return 0;
>  
> -	acpi_bus.dev->priv = table;
> +	acpi_bus.dev.priv = table;
>  	return acpi_register_devices(&acpi_bus);
>  }
>  postcore_efi_initcall(efi_acpi_probe);
> diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
> index 23fcef7957fe..0e6f75659f62 100644
> --- a/drivers/efi/efi-device.c
> +++ b/drivers/efi/efi-device.c
> @@ -421,17 +421,17 @@ static int efi_init_devices(void)
>  
>  	bus_register(&efi_bus);
>  
> -	dev_add_param_fixed(efi_bus.dev, "fw_vendor", fw_vendor);
> +	dev_add_param_fixed(&efi_bus.dev, "fw_vendor", fw_vendor);
>  	free(fw_vendor);
>  
> -	dev_add_param_uint32_fixed(efi_bus.dev, "major", sys_major, "%u");
> -	dev_add_param_uint32_fixed(efi_bus.dev, "minor", sys_minor, "%u");
> -	dev_add_param_uint32_fixed(efi_bus.dev, "fw_revision", efi_sys_table->fw_revision, "%u");
> -	dev_add_param_bool_fixed(efi_bus.dev, "secure_boot", secure_boot);
> -	dev_add_param_bool_fixed(efi_bus.dev, "secure_mode",
> +	dev_add_param_uint32_fixed(&efi_bus.dev, "major", sys_major, "%u");
> +	dev_add_param_uint32_fixed(&efi_bus.dev, "minor", sys_minor, "%u");
> +	dev_add_param_uint32_fixed(&efi_bus.dev, "fw_revision", efi_sys_table->fw_revision, "%u");
> +	dev_add_param_bool_fixed(&efi_bus.dev, "secure_boot", secure_boot);
> +	dev_add_param_bool_fixed(&efi_bus.dev, "secure_mode",
>  				 secure_boot & setup_mode);
>  
> -	devinfo_add(efi_bus.dev, efi_businfo);
> +	devinfo_add(&efi_bus.dev, efi_businfo);
>  
>  	efi_register_devices();
>  


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


