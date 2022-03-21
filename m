Delivery-date: Mon, 21 Mar 2022 10:47:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWEdc-001FcC-9m
	for lore@lore.pengutronix.de; Mon, 21 Mar 2022 10:47:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWEde-0007GH-Hc
	for lore@pengutronix.de; Mon, 21 Mar 2022 10:47:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lS01YZ73naYtnmzAqNjstAidAgHv8vYpAvtDe7V9lzM=; b=jNcwBfkDKYqwBZ
	LFONEXmqAPJmQzJrbPQnWxALwVXrox70mPivlC2Wgi6Jt2xHt80CqNn6BXY+K8g8MTPUocywD2IWb
	B6QektlDaWI/PZlafDcoZ1QQNT0+0VV11Gd9xAQPLEwU3AFoHBQkOIdS/0K2eLiTae56n8R/Lv73H
	YpAzemZhDhrZMZbyytqsfdqJzN73O5Cpg7B+R420DXqfMT8acv6Rup+1kulbnuKyQdCTSG4qx0AsF
	So26sfOWBw+KP5H9kpJvxH/t9nKph5kitCwrcykXq17iASHD4FVxGnu7hTgDeGkRAjkn75CS3t8ZU
	RLVUoV+3u+4JgMDQkWcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWEcL-007Djp-FE; Mon, 21 Mar 2022 09:46:25 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWEcF-007Diz-LX
 for barebox@lists.infradead.org; Mon, 21 Mar 2022 09:46:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jbeyv6xLUTo+j+w7BUSlTywlCouQb+lVppoi1NRjUs8=; b=MRenqfQKBTT8kN0ZxawyIL500i
 JCK64TNEARMGS2tm7LltsF2OsSH5L/0s0mEXf94+HGOlQOSVEEQVwh2kr36IuvAlJ7vNxy0sQg3Gn
 0xlWGWeYb7fwDI+oO79uJlHUIQYtG3Kdo/ocSQIgBbY7MX3kmiMGd4MvSc6FXnVjKrmX5i9ajS+4i
 lqyFHoQHirPLuDBk0SlDG6r9mr3FFtbj+S5U5JVg5T/D+pez1xZTMiRn/LewtjKGAqVxZ5S0ceaFq
 Oj4JP2Q3/pvWFXAbM7sRNLGfeLc76gPDfyA36NmboKca5/0vzP9jZKZWubkFxO4kQHx9aodzm3eVd
 ohYSGeEg==;
Received: from [89.212.21.243] (port=51218 helo=[192.168.69.86])
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>)
 id 1nWEc0-006HPL-7H; Mon, 21 Mar 2022 10:46:11 +0100
Message-ID: <26ed18a0-1bec-001b-d766-e9d283ce2e90@norik.com>
Date: Mon, 21 Mar 2022 10:46:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-GB
To: Sascha Hauer <sha@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220315133942.537756-1-andrej.picej@norik.com>
 <20220315133942.537756-2-andrej.picej@norik.com>
 <ad203551-3b95-4ce8-d060-a10de337af5a@pengutronix.de>
 <20220316104440.GR405@pengutronix.de>
From: Andrej Picej <andrej.picej@norik.com>
In-Reply-To: <20220316104440.GR405@pengutronix.de>
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_024620_088302_518FB804 
X-CRM114-Status: GOOD (  21.77  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] mfd: da9063: ensure all gpio devices are probed before
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 16. 03. 22 11:44, Sascha Hauer wrote:
> On Tue, Mar 15, 2022 at 03:24:23PM +0100, Ahmad Fatoum wrote:
>> On 15.03.22 14:39, Andrej Picej wrote:
>>> GPIO lines in da9063 are assigned dynamically, while majority of SOC
>>> GPIO drivers assign their GPIOs in static manner (GPIO line numbers can
>>> be calculated).
>>>
>>> This introduces regression if deep probe support is used. If da9063
>>> GPIOs are registered before the SOCs GPIOs, there is a good chance that
>>> the SOCs statically computed GPIO line numbers will already be used by
>>> PMIC.
>>>
>>> Ensure all SOCs GPIO drivers and GPIO lines get registered before the
>>> da9063 registers its own gpiochip.
>>>
>>> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
>>
>> I don't think this is the proper place. Also I think you may have
>> introduced a recursion here if the PMIC happens to have an alias
>> itself?
>>
>> What I think we could do instead is to move this into gpiochip_add()
>> and opencode the alias iterator:
>>
>>
>> foreach (gpio_alias) {
>> 	if (gpio_alias_dev == chip->dev)
>> 		__gpiochip_add();
>> 	else
>> 		of_device_ensure_probed();
>> }
> 
> This of_device_ensure_probed() will bring you into the very same loop
> again. Better call this loop from outside gpiochip_add(). We could
> add a gpio_ensure_probed() which executes this loop. That would be
> called from some initcall, or maybe from board code when gpios are
> needed before this initcall.
> 
> Sascha
> 

That was my initial idea, but then I wanted to make it a bit more 
general, so it could be used also for other, "non gpio" devices.
Would that make sense?

I would expend the function (from PATCH 1/1) into something like this:
> int of_device_ensured_probed_by_alias_stem(struct device_node *np, const char *stem)
> {
> 	struct alias_prop *app;
> 	int id = -ENODEV;
> 	int ret;
> 
> 	if (!deep_probe_is_supported())
> 		return 0;
> 
> 	list_for_each_entry(app, &aliases_lookup, link) {
> 		if (of_node_cmp(app->stem, stem) != 0)
> 			continue;
> 
> 		/* If device node is given skip the probing of that device so we
> 		 * avoid recursion.
> 		 */
> 		if (np != NULL && np == app->np)
> 			continue;
> 
> 		ret = of_device_ensure_probed(app->np);
> 		if (ret)
> 			return ret;
> 	}
> 
> 	return 0;
> }
> EXPORT_SYMBOL_GPL(of_device_ensured_probed_by_alias_stem);

Where the user can specify which device should be skipped, so the method 
doesn't introduce recursion if device happens to have an alias.

We could then call this function from board file like this (example for 
PHYTEC):
> --- a/arch/arm/boards/phytec-som-imx6/board.c
> +++ b/arch/arm/boards/phytec-som-imx6/board.c
> @@ -111,6 +111,13 @@ static int phycore_da9062_setup_buck_mode(void)
>         if (!pmic_np)
>                 return -ENODEV;
>  
> +       of_device_ensured_probed_by_alias_stem(pmic_np, "gpio");
> +
>         ret = of_device_ensure_probed(pmic_np);
>         if (ret)
>                 return ret;
What do you think?



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

