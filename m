Delivery-date: Wed, 11 Jan 2023 10:34:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFXVJ-008hgr-Q0
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 10:34:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFXVH-0005xi-Va
	for lore@pengutronix.de; Wed, 11 Jan 2023 10:34:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XDf0AuLuPXoJEKO+wlRCc23jc0sylC53aEd+Bf6y60c=; b=vtuwXJUxql9tfCb4WBC3uBZ6v9
	bfQbMQNZqfpR3Xm1inpiAMUpmZWk1LjawqogD29BUXQuhbXo5HWPR6hIlkTVCMwFvCmTyHju2SYrN
	RQotECBsyl+elskCHpDDUvWW2GcN6PeDtyZMnJnryy0QilUBg02BmSHXDYItmgCDsXjUJFjit6tHA
	qcmum8ly6tJNSXrDSek6QyV3O9wOSUgzsudgui+miQjVfVaYKuLkygeFz7XksFiiO4Q6AbD6VutuC
	U3ju4jDzwjoqPHbz7ZesYhyWxeYaPxH68VZyM/GZi54WXos0SyFy/9Lent+gXWK3L+mvQr0bJ/7Dx
	0lg4GpMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFXTu-00AYWB-OR; Wed, 11 Jan 2023 09:33:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFXTo-00AYV7-Nd
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 09:33:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pFXTn-0005n7-5G; Wed, 11 Jan 2023 10:33:07 +0100
Message-ID: <79b1495c-6399-ddc0-71ea-d1827d490f0b@pengutronix.de>
Date: Wed, 11 Jan 2023 10:33:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230111080119.933475-1-a.fatoum@pengutronix.de>
 <20230111080119.933475-7-a.fatoum@pengutronix.de>
 <20230111085613.GJ24755@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230111085613.GJ24755@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_013308_799126_7BF23CDF 
X-CRM114-Status: GOOD (  26.24  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 06/11] net: dsa: ksz9477: create regmap cdev for switch
 registers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 11.01.23 09:56, Sascha Hauer wrote:
> On Wed, Jan 11, 2023 at 09:01:14AM +0100, Ahmad Fatoum wrote:
>> Now that we use regmap for the KSZ9477 driver, we can make the register
>> map available for introspection as a device file. As the KSZ driver has
>> a separate regmap for each of the three access sizes, we add a new
>> regmap_multi_register_cdev abstraction that multiplexes device file
>> access to the regmap with the best matching alignment.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/base/regmap/Makefile       |  1 +
>>  drivers/base/regmap/regmap-multi.c | 81 ++++++++++++++++++++++++++++++
>>  drivers/net/ksz9477.c              |  6 ++-
>>  include/regmap.h                   |  2 +
>>  4 files changed, 89 insertions(+), 1 deletion(-)
>>  create mode 100644 drivers/base/regmap/regmap-multi.c
>>
>> diff --git a/drivers/base/regmap/Makefile b/drivers/base/regmap/Makefile
>> index d99db4277149..fe5beaaaa382 100644
>> --- a/drivers/base/regmap/Makefile
>> +++ b/drivers/base/regmap/Makefile
>> @@ -1,5 +1,6 @@
>>  # SPDX-License-Identifier: GPL-2.0-only
>>  obj-y	+= regmap.o
>> +obj-y	+= regmap-multi.o
>>  obj-y	+= regmap-mmio.o
>>  obj-$(CONFIG_REGMAP_FORMATTED)	+= regmap-fmt.o
>>  obj-$(CONFIG_I2C)	+= regmap-i2c.o
>> diff --git a/drivers/base/regmap/regmap-multi.c b/drivers/base/regmap/regmap-multi.c
>> new file mode 100644
>> index 000000000000..79dd1ba9bd95
>> --- /dev/null
>> +++ b/drivers/base/regmap/regmap-multi.c
>> @@ -0,0 +1,81 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * Copyright 2022 Ahmad Fatoum <a.fatoum@pengutronix.de>
>> + */
>> +
>> +#include <common.h>
>> +#include <regmap.h>
>> +#include <linux/export.h>
>> +
>> +#include "internal.h"
>> +
>> +enum { MULTI_MAP_8, MULTI_MAP_16, MULTI_MAP_32, MULTI_MAP_COUNT };
>> +struct regmap_multi {
>> +	struct cdev cdev;
>> +	struct regmap *map[MULTI_MAP_COUNT];
>> +};
>> +
>> +static struct regmap *regmap_multi_cdev_get_map(struct cdev *cdev, size_t count)
>> +{
>> +	struct regmap_multi *multi = container_of(cdev, struct regmap_multi, cdev);
>> +	struct regmap *map = NULL;
>> +
>> +	if (count % 4 == 0)
>> +		map = multi->map[MULTI_MAP_32];
>> +	if (!map && count % 2 == 0)
>> +		map = multi->map[MULTI_MAP_16];
>> +	return map ?: multi->map[MULTI_MAP_8];
>> +}
> 
> You pick the regmap only based on 'count'. Shouldn't you take the offset
> into account as well?

I don't think so. This is a bit similar to mem_copy(), which underlies
the mw command. There we only use count as well and if offset is unaligned,
so be it.

> 
>> +
>> +static ssize_t regmap_multi_cdev_read(struct cdev *cdev, void *buf, size_t count,
>> +				      loff_t offset, unsigned long flags)
>> +{
>> +	struct regmap *map = regmap_multi_cdev_get_map(cdev, count);
>> +
>> +	return regmap_bulk_read(map, offset, buf, count) ?: count;
>> +}
>> +
>> +static ssize_t regmap_multi_cdev_write(struct cdev *cdev, const void *buf, size_t count,
>> +				       loff_t offset, unsigned long flags)
>> +{
>> +	struct regmap *map = regmap_multi_cdev_get_map(cdev, count);
>> +
>> +	return regmap_bulk_write(map, offset, buf, count) ?: count;
>> +}
>> +
>> +static struct cdev_operations regmap_multi_fops = {
>> +	.read	= regmap_multi_cdev_read,
>> +	.write	= regmap_multi_cdev_write,
>> +};
>> +
>> +int regmap_multi_register_cdev(struct regmap *maps[3])
> 
> MULTI_MAP_COUNT instead of 3?

I didn't want to define the symbol in the header, so kept this for
symmetry.

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



