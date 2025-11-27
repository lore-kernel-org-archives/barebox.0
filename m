Delivery-date: Thu, 27 Nov 2025 10:28:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOYIL-005NfK-1g
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 10:28:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOYIK-0004tV-U4
	for lore@pengutronix.de; Thu, 27 Nov 2025 10:28:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DvsYrSFJMlfoOABkJt+PfiK3YgmJ5S8Vs2FP5899mnc=; b=JFdU4IERT1SVNIHge2AOLku5Lv
	SjlOGZujkhGvGp2W5t5+MjduUMhnYlHELtGwwuHrEv6bbEpNyQMeIhXk0boE8aOyprR9sxt360UX7
	wmytupiygId2biDFmavTF8cC3KJ1O+l5B4OLgN2vJn9gNmtFISsYtNRVO0jJrryXRViD31wkgNiP7
	IAmG1KnYK9M5HxPEQvSFhqazRKnDsWOgOICzFVJV9BnO3ftQty2Kwg4dY1HZ3+nkky5uNpdPYJh2V
	98YJSKI6kOQHxBjQMO3aZqa7JTv1rux0AK1QmonpnZnWHVlLAXl16MMdWa0z184AaeVCd0FVbk/DZ
	OteAdvog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOYHz-0000000GIid-02Xo;
	Thu, 27 Nov 2025 09:27:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOYHw-0000000GIho-0bIx
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 09:27:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOYHu-0004m9-Fl; Thu, 27 Nov 2025 10:27:42 +0100
Message-ID: <047f8e85-68d1-4bab-8a1f-2d81e28ad2ba@pengutronix.de>
Date: Thu, 27 Nov 2025 10:27:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Lucas Stach <l.stach@pengutronix.de>, chalianis1@gmail.com,
 s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20251127045417.3490877-1-chalianis1@gmail.com>
 <4f49a9b2737dae6f067e00ff1aa74d95a7f89e48.camel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <4f49a9b2737dae6f067e00ff1aa74d95a7f89e48.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_012744_185064_7A210F1B 
X-CRM114-Status: GOOD (  23.25  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ehci-zynq: variscite: tee: fix many typos struct device.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 11/27/25 10:23 AM, Lucas Stach wrote:
> Am Mittwoch, dem 26.11.2025 um 23:54 -0500 schrieb
> chalianis1@gmail.com:
>> From: Chali Anis <chalianis1@gmail.com>
>>
>> fix struct device_d to struct device.
> 
> It's not really a typo, as struct device was called struct device_d for
> a long time in barebox. You are fixing the last remnants of that. I'm
> not sure if it's a good idea to lump all those different sites into a
> single patch. At least the subject doesn't really make sense, as zynq,
> a board and tee are not one subsystem.

I use treewide: as prefix such minor patches that just do trivial stuff
like renames. While at it, you could also rename driver_d to driver as well.

> Also, now that you remove the last usages of the deprecated device_d
> you can also remove the
> #define device_d device in driver.h

I would leave that in for out of tree board code to avoid the churn..

Cheers,
Ahmad

> 
> Regards,
> Lucas
> 
>>
>> Signed-off-by: Chali Anis <chalianis1@gmail.com>
>> ---
>>  arch/arm/boards/variscite-som-mx7/board.c | 2 +-
>>  drivers/usb/host/ehci-zynq.c              | 2 +-
>>  include/linux/tee_drv.h                   | 2 +-
>>  3 files changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm/boards/variscite-som-mx7/board.c b/arch/arm/boards/variscite-som-mx7/board.c
>> index 005228d107af..8bce4ec8616d 100644
>> --- a/arch/arm/boards/variscite-som-mx7/board.c
>> +++ b/arch/arm/boards/variscite-som-mx7/board.c
>> @@ -5,7 +5,7 @@
>>  #include <deep-probe.h>
>>  #include <mach/imx/bbu.h>
>>  
>> -static int var_som_mx7_probe(struct device_d *dev)
>> +static int var_som_mx7_probe(struct device *dev)
>>  {
>>  	imx7_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", BBU_HANDLER_FLAG_DEFAULT);
>>  	return 0;
>> diff --git a/drivers/usb/host/ehci-zynq.c b/drivers/usb/host/ehci-zynq.c
>> index 13b551d09156..b4b0e0f89100 100644
>> --- a/drivers/usb/host/ehci-zynq.c
>> +++ b/drivers/usb/host/ehci-zynq.c
>> @@ -6,7 +6,7 @@
>>  #include <common.h>
>>  #include <linux/usb/ulpi.h>
>>  
>> -static int zynq_ehci_probe(struct device_d *dev)
>> +static int zynq_ehci_probe(struct device *dev)
>>  {
>>  	struct resource *res;
>>  	void __iomem *base;
>> diff --git a/include/linux/tee_drv.h b/include/linux/tee_drv.h
>> index e2c1042debce..6a8e19459f47 100644
>> --- a/include/linux/tee_drv.h
>> +++ b/include/linux/tee_drv.h
>> @@ -201,7 +201,7 @@ struct tee_shm {
>>  	struct list_head link;
>>  
>>  	int fd;
>> -	struct device_d dev;
>> +	struct device dev;
>>  	struct cdev cdev;
>>  	struct resource res;
>>  };
>>
> 
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



