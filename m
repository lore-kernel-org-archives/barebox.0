Delivery-date: Fri, 20 May 2022 06:36:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nruNO-002mtC-TL
	for lore@lore.pengutronix.de; Fri, 20 May 2022 06:36:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nruNN-0000sh-6h
	for lore@pengutronix.de; Fri, 20 May 2022 06:36:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IxKVGTROcv8Tab5Z77R4u7NLF0VE+vMS8aeKP3DX6fM=; b=k/DtC9eFiVzrXH
	ZwaCwPJ6Gg3aTcCISIuUtgftdPqaGD6lEB89jrwpAJSy18IXDMp2JWpZflCb8BNsdZUhlZbKem1FN
	51RQT4TdrnbjxM+y9ZU1toiicqGbXn2FfzKI+caFYIDpVMDZNx6pkM3tegRPEQF5uKizlS9lFnU+R
	7i5yH/kRRt7tyK6TgmuT9PsG2HrCweOPr490chY3VJJRJhf5ceU6LZfwCkHX0wYPLxPEuJo/xe4xZ
	ahpfEuEshaTNJSjLSdO3aNCzXUO/TmjGOOidcCknzSCfxmxnG39YLP4Q9+BR2W8NWqDtwj3WV0GJb
	urC+rm+isr+jw3TJ942A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nruLl-00AShd-Uj; Fri, 20 May 2022 04:34:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nruLg-00ASgs-TZ
 for barebox@lists.infradead.org; Fri, 20 May 2022 04:34:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nruLc-0000aD-87; Fri, 20 May 2022 06:34:44 +0200
Message-ID: <8b432b1c-401b-bc87-7285-95fc9142141d@pengutronix.de>
Date: Fri, 20 May 2022 06:34:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20200513114636.811-1-l.stach@pengutronix.de>
 <20200518070848.GP11869@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20200518070848.GP11869@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_213449_003337_B72AC9C1 
X-CRM114-Status: GOOD (  26.26  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] mci: core: add device parameter for eMMC boot ack
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 18.05.20 09:08, Sascha Hauer wrote:
> On Wed, May 13, 2020 at 01:46:36PM +0200, Lucas Stach wrote:
>> This adds an easy way to enable the boot acknowledge function of
>> a eMMC device, without the need to frob the EXT_CSD setting via
>> the mmc_extcsd command.
>> A boot ack is required whenever the boot partitions are read via
>> the fast initialization boot protocol.
>>
>> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
>> ---
>>  drivers/mci/mci-core.c | 33 +++++++++++++++++++++++++++------
>>  include/mci.h          |  2 ++
>>  2 files changed, 29 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
>> index f3718327f18d..d33bc0c1a41e 100644
>> --- a/drivers/mci/mci-core.c
>> +++ b/drivers/mci/mci-core.c
>> @@ -516,6 +516,7 @@ static int mmc_change_freq(struct mci *mci)
>>  
>>  		mci->ext_csd_part_config = mci->ext_csd[EXT_CSD_PARTITION_CONFIG];
>>  		mci->bootpart = (mci->ext_csd_part_config >> 3) & 0x7;
>> +		mci->boot_ack_enable = (mci->ext_csd_part_config >> 6) & 0x1;
>>  	}
>>  
>>  	return 0;
>> @@ -1592,6 +1593,17 @@ static int mci_set_boot(struct param_d *param, void *priv)
>>  			  EXT_CSD_PARTITION_CONFIG, mci->ext_csd_part_config);
>>  }
>>  
>> +static int mci_set_boot_ack(struct param_d *param, void *priv)
>> +{
>> +	struct mci *mci = priv;
>> +
>> +	mci->ext_csd_part_config &= ~(0x1 << 6);
>> +	mci->ext_csd_part_config |= mci->boot_ack_enable << 6;
>> +
>> +	return mci_switch(mci,
>> +			  EXT_CSD_PARTITION_CONFIG, mci->ext_csd_part_config);
>> +}
> 
> There's only one correct setting for each board or SoC. Instead of
> letting the user choose between right and wrong, can't we add a hook to
> be called from the board/SoC code? A device tree property might be an
> option as well, something like barebox,enable-boot-ack.
> 
> There are also bits to change the bus width after power up which might
> need adjustments which would mean another parameter with the current
> approach.

There hasn't been any progress here for 2 years. Sascha, can we just
take this patch? Even if we add code in future to have this happen as
part of eMMC/SoC init, a device parameter to easily check
the current configuration would still be useful.

Cheers,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

