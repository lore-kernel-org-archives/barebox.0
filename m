Delivery-date: Mon, 11 Sep 2023 14:37:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfgAt-00BUng-1U
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 14:37:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfgAq-0004fd-Mo
	for lore@pengutronix.de; Mon, 11 Sep 2023 14:37:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u0ZhX228R2FjtPGW1EkfWuUB06HhFv6YmrqVprPSVPQ=; b=jdBzlkYSx/86xKk1BDAaEKsm8i
	xm0aqlq6U0mZ2RsLHVQAaUOL95ap+KyRUz3RolTt7NtUDvYozJAyOIpooiiDi12wrn9Rx9jFyvn7H
	knYt++i8B7m6BATi9EazOTEROojLPkdCBUTMh/ACFZUdOEebMSTiRT+IeMSCRJTjYByERzUFwdWTC
	fq01TzxIYaFft18i4j/VPNpZtB5/rSoCmiDkdl45IrnIwMqjzbRt+dAYyW8CBA7+uMuPTpm3sbnJm
	jI4SzO+74pTNPI9XR1bBV9ys0n0TsGA9TJ6zSZYj/rcVU5hrzngcJ7fp2hndzLE3ul3gxSI2yI6po
	/3GOcCSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfg9q-000Uwd-2g;
	Mon, 11 Sep 2023 12:36:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfg9n-000Uvw-2k
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 12:36:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qfg9m-0004RO-Mk; Mon, 11 Sep 2023 14:36:46 +0200
Message-ID: <7bcd35f4-81ea-323e-5277-396b7efc5c94@pengutronix.de>
Date: Mon, 11 Sep 2023 14:36:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230911122204.2698005-1-a.fatoum@pengutronix.de>
 <20230911123508.c54vltou62amkg7h@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230911123508.c54vltou62amkg7h@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_053647_887958_8A6E99FF 
X-CRM114-Status: GOOD (  22.77  )
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
Subject: Re: [PATCH master] aiodev: imx_thermal: fix breakage after device
 tree sync
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 11.09.23 14:35, Marco Felsch wrote:
> On 23-09-11, Ahmad Fatoum wrote:
>> fsl,tempmon-data is a deprecated property that has been replaced
>> upstream by a NVMEM cell pointing at the calibration value and so
>> made it into barebox breaking the driver.
>>
>> Switch to using the new property to fix the regression.
> 
> The Linux driver code can handle the deprecated binding still, in case
> of old DTBs. Since the DTBS are builtin to barebox updating the DTB
> without the barebox binary make no sense. Anyway, do we need to take the
> deprecated binding into account as well like Linux does?

For this reason, only the new binding is implemented.

> 
> Regards,
>   Marco
> 
>> Fixes: abef60363d8e ("dts: update to v5.8-rc1")
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/aiodev/imx_thermal.c | 25 ++++---------------------
>>  1 file changed, 4 insertions(+), 21 deletions(-)
>>
>> diff --git a/drivers/aiodev/imx_thermal.c b/drivers/aiodev/imx_thermal.c
>> index 3263519cb241..2693ad05e0e5 100644
>> --- a/drivers/aiodev/imx_thermal.c
>> +++ b/drivers/aiodev/imx_thermal.c
>> @@ -22,6 +22,7 @@
>>  #include <linux/math64.h>
>>  #include <linux/log2.h>
>>  #include <linux/clk.h>
>> +#include <linux/nvmem-consumer.h>
>>  #include <mach/imx/imx6-anadig.h>
>>  #include <io.h>
>>  #include <aiodev.h>
>> @@ -29,7 +30,6 @@
>>  
>>  #define FACTOR0			10000000
>>  #define MEASURE_FREQ		327
>> -#define OCOTP_ANA1_OFFSET      (0xE * sizeof(uint32_t))
>>  
>>  struct imx_thermal_data {
>>  	int c1, c2;
>> @@ -109,30 +109,13 @@ static int imx_thermal_read(struct aiochannel *chan, int *val)
>>  static int imx_thermal_probe(struct device *dev)
>>  {
>>  	uint32_t ocotp_ana1;
>> -	struct device_node *node;
>>  	struct imx_thermal_data *imx_thermal;
>> -	struct cdev *ocotp;
>>  	int t1, n1, t2, n2;
>>  	int ret;
>>  
>> -	node = of_parse_phandle(dev->of_node, "fsl,tempmon-data", 0);
>> -	if (!node) {
>> -		dev_err(dev, "No calibration data source\n");
>> -		return -ENODEV;
>> -	}
>> -
>> -	ocotp = cdev_by_device_node(node);
>> -	if (!ocotp) {
>> -		dev_err(dev, "No OCOTP character device\n");
>> -		return -ENODEV;
>> -	}
>> -
>> -	ret = cdev_read(ocotp, &ocotp_ana1, sizeof(ocotp_ana1),
>> -			OCOTP_ANA1_OFFSET, 0);
>> -	if (ret != sizeof(ocotp_ana1)) {
>> -		dev_err(dev, "Failed to read calibration data\n");
>> -		return ret < 0 ? ret : -EIO;
>> -	}
>> +	ret = nvmem_cell_read_variable_le_u32(dev, "calib", &ocotp_ana1);
>> +	if (ret)
>> +		return ret;
>>  
>>  	imx_thermal = xzalloc(sizeof(*imx_thermal));
>>  	imx_thermal->base = syscon_base_lookup_by_phandle(dev->of_node,
>> -- 
>> 2.39.2
>>
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



