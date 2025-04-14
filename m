Delivery-date: Mon, 14 Apr 2025 12:15:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4Gr5-000bDx-0Z
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 12:15:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4Gr4-0007Zq-Hx
	for lore@pengutronix.de; Mon, 14 Apr 2025 12:15:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3mjHFl3Ks519BETOT2KjEMaWCubJHKYq1wMi6ynFsy4=; b=lFCUKrc6WFFUL9gk4UwH6u4hpe
	gHrYvO2/+NZv5tJeJzzs9G8wBLtKUYBqyvICD/x6r9gMsl6/DTvkmyksPnX1MjNth8ZBqtNBZFmsl
	2eg+6Jy2RUarw8hHdoTWhSdP4fjNR3F3HDrDIXB4msoZirNd0XBlHYnsQDBo1Ysf5lIQgtSH7YWgr
	CEe8owbS2tqF8rP3ff6ML5E/HqeylCe3aIfJjFP6e3BQVrFo0SFlUmQ3X+iKBLack50J0ru+ceEq7
	dfHpRKwHhIyNyBCzjbBMY2ZRKAOtDdcozVU+vRl9/Piisq+4g/4ESUF21+A3C9m9xNrTJlw/I5qiy
	AWR6v9FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Gqd-00000001SuQ-24sU;
	Mon, 14 Apr 2025 10:15:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4GmG-00000001RAO-1eC1
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 10:10:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4GmF-0005Y1-4m; Mon, 14 Apr 2025 12:10:55 +0200
Message-ID: <45c42b7a-6b52-4862-a204-595092b39f50@pengutronix.de>
Date: Mon, 14 Apr 2025 12:10:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250414062303.2721390-1-a.fatoum@pengutronix.de>
 <Z_zQZY-ioQUWlIt2@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <Z_zQZY-ioQUWlIt2@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_031056_433205_EC66D873 
X-CRM114-Status: GOOD (  20.78  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] driver: have dev_platform_ioremap_resource return error
 pointer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 4/14/25 11:07, Sascha Hauer wrote:
> On Mon, Apr 14, 2025 at 08:23:03AM +0200, Ahmad Fatoum wrote:
>> From: Ahmad Fatoum <a.fatoum@barebox.org>
>>
>> devm_request_mem_region doesn't return NULL on error on Linux and thus
>> it should neither in barebox. Fix this.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/base/driver.c  | 2 ++
>>  include/linux/device.h | 2 +-
>>  2 files changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
>> index edba037fa2dd..4e361a96c9ee 100644
>> --- a/drivers/base/driver.c
>> +++ b/drivers/base/driver.c
>> @@ -587,6 +587,8 @@ void __iomem *dev_request_mem_region(struct device *dev, int num)
>>  	struct resource *res;
>>  
>>  	res = dev_request_mem_resource(dev, num);
>> +	if (!IS_ERR(res) && WARN_ON(IS_ERR_VALUE(res->start)))
>> +		return IOMEM_ERR_PTR(res->start);
> 
> Which code can set res->start to an error value?

It can end up being an error value, because there is actual a MMIO
region at a high address. In that case, I'd rather we return an
error, so dev_request_mem_resource would need to be used instead.

Thanks,
Ahmad

> 
> Sascha
> 
>>  	if (IS_ERR(res))
>>  		return ERR_CAST(res);
>>  
>> diff --git a/include/linux/device.h b/include/linux/device.h
>> index 66294910abb3..661d8b24730e 100644
>> --- a/include/linux/device.h
>> +++ b/include/linux/device.h
>> @@ -39,7 +39,7 @@ static inline void __iomem *dev_platform_ioremap_resource(struct device *dev,
>>  	 * so we don't need to do anything besides requesting the regions
>>  	 * and can leave the memory attributes unchanged.
>>  	 */
>> -	return dev_request_mem_region_err_null(dev, resource);
>> +	return dev_request_mem_region(dev, resource);
>>  }
>>  
>>  static inline void __iomem *devm_ioremap(struct device *dev,
>> -- 
>> 2.39.5
>>
>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



