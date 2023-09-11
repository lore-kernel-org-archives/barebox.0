Delivery-date: Mon, 11 Sep 2023 18:11:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfjVJ-00BgF6-EM
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 18:11:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfjVH-00065Y-Eo
	for lore@pengutronix.de; Mon, 11 Sep 2023 18:11:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/yLM8zaaakWWGVfCRoUOrCqaauk+36GbsuGxu2PRcsg=; b=vAP/ihjJnjEpEhIur6KaXWNUrH
	fNwcNSithh8fIBBzjSBVnckYULVkFq7Z/dRDbVzrsOzxO8dAAOVj2K/dhjNmPl/woXxlwHAHNA1KT
	y07zGcvRWnuIDxehbhs1pbydHICec+DEd4ItRHfs68wFHWVVvD2CU3HJXnzk97vYHkCJsdZsC/ORR
	L7jt95yJtolmwDedkyIBVUtDYkA+th/GZQZjVlx/FmdkCvGa/UiTbHGMgoO6z9xg/+AYyO+Krig9z
	9D1pgs5BDm7h7ZUSeMWvHLD5e7gWJPJB6LeDboRa4PW0JcAg8FM84gUzTn94awcXcW0XjlevPo6M8
	P4Jc9Hhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfjU2-000yZD-2Z;
	Mon, 11 Sep 2023 16:09:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfjTz-000yYc-0b
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 16:09:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qfjTu-0005uJ-OZ; Mon, 11 Sep 2023 18:09:46 +0200
Message-ID: <8fe43887-c444-870c-5d2d-f4b412e85d16@pengutronix.de>
Date: Mon, 11 Sep 2023 18:09:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 barebox@lists.infradead.org
References: <20230830104747.43193-1-eagle.alexander923@gmail.com>
 <20230830104747.43193-3-eagle.alexander923@gmail.com>
 <aa20d72f-8cb6-7b51-9ae6-2f8d15d6c690@pengutronix.de>
In-Reply-To: <aa20d72f-8cb6-7b51-9ae6-2f8d15d6c690@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_090951_242553_B5F394A8 
X-CRM114-Status: GOOD (  19.37  )
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
Subject: Re: [PATCH 3/3] ARM: boards: Add MyirTech MYD-YA15XC-T development
 board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 30.08.23 16:41, Ahmad Fatoum wrote:
> On 30.08.23 12:47, Alexander Shiyan wrote:
>> +
>> +	len = (eeprom.sn[0] - '0');
>> +	if ((len < 8) || (len > 64)) {
>> +		pr_err("Unable to get product serial\n");
>> +		return -EINVAL;
>> +	}
>> +
>> +	strncpy(str, &eeprom.sn[1], len);
>> +	str[len] = '\0';
>> +	pr_info("Product serial: %s\n", str);
> 
> Would barebox_set_serial_number() work for you?
> 
>> +	machine_id_set_hashable(str, len);
> 
> Any particular reason why not to just use the SoC serial?

We had a discussion two years ago[1], where it turned out that the unique
ID on STM32MP1 SoCs wasn't randomized, so it's probably better board vendors
indeed set their own if that would have more entropy. The ugly thing about
that is that the last call to machine_id_set_hasable wins, so I wanted to
change it to be set in device tree instead, e.g.:

  /chosen { barebox,machine-id-path = &bsec; }.

Alas I never sent a v2. Anyways, existing users will have to be grandfathered
in, so it's fine for me if you choose to call machine_id_set_hashable from
your board code.

[1]: https://lore.barebox.org/barebox/dad3cc59-5a25-9889-88a5-58467f576d8e@pengutronix.de/

>> +ENTRY_FUNCTION(start_stm32mp15x_myir, r0, r1, r2)
>> +{
>> +	void *fdt;
>> +
>> +	stm32mp_cpu_lowlevel_init();
>> +
>> +	if (IS_ENABLED(CONFIG_DEBUG_LL))
>> +		setup_uart();
>> +
>> +	fdt = __dtb_z_stm32mp15x_myirtech_myd_start + get_runtime_offset();
>> +
>> +	stm32mp1_barebox_entry(fdt);
> 
> Same question: Do you use an old TF-A or why do you need a specific entry
> point instead of barebox-stm32mp-generic-bl33.img?

Rethinking this, such an image is the only way to chainload barebox over
the network. So you may want to keep it until barebox can boot FIP images..

Cheers,
Ahmad



-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



