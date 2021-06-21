Delivery-date: Mon, 21 Jun 2021 07:05:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvC7x-00047q-F0
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 07:05:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvC7w-0003CI-JL
	for lore@pengutronix.de; Mon, 21 Jun 2021 07:05:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Wk4IRu1bOFPxJyjaozeMoQXHKfVV7fi/bOBiByAoZy4=; b=KDB6iBWfTJBD7LEa+LJ6DUrwv8
	S/wjxxKQ2vYXETPGptWGVteDHeVh0a3FNGh4mlIAV37ZdBUpuozwJL31045yePndTKNHB19mkNscc
	Y0TAUCMpd7sElG6mFRjBdePCB+ckTZYCd7dO944EebUsJOYlcX54c8HIW35WXmDQCfnSGjBR4lqAD
	bapT+ia64qIRw0WgFRGr2hozuGWWqGFhu/ojUsgSwbQMEXFqDDYEksJiRPLh4A7qmZFzSLiBcsVe8
	4mBT/KXJE9IuaGgHBgBLd8FlOXS3D8PVgmPgp4CBnm9oteMoM6R/px9pexC6lJvADqbvznPaRdAfL
	hXtRvsBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvC6i-0026Kp-GR; Mon, 21 Jun 2021 05:04:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvC6d-0026K5-5B
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 05:04:20 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lvC6b-0002r6-Uc; Mon, 21 Jun 2021 07:04:17 +0200
To: Sascha Hauer <sha@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
References: <20210619032654.455801-1-ahmad@a3f.at>
 <20210619032654.455801-2-ahmad@a3f.at> <20210621045953.GJ9782@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <5f5d6f48-e3cc-26fd-b90b-9e3222ba0423@pengutronix.de>
Date: Mon, 21 Jun 2021 07:04:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210621045953.GJ9782@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210620_220419_249701_E412D846 
X-CRM114-Status: GOOD (  19.67  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] console: respect baudrate specified in device-tree
 stdout-path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 21.06.21 06:59, Sascha Hauer wrote:
> Hi Ahmad,
> 
> On Sat, Jun 19, 2021 at 05:26:54AM +0200, Ahmad Fatoum wrote:
>> -static void console_set_stdoutpath(struct console_device *cdev)
>> +static void console_set_stdoutpath(struct console_device *cdev, unsigned baudrate)
>>  {
>>  	int id;
>>  	char *str;
>> @@ -232,8 +232,7 @@ static void console_set_stdoutpath(struct console_device *cdev)
>>  	if (id < 0)
>>  		return;
>>  
>> -	str = basprintf("console=%s%d,%dn8", cdev->linux_console_name, id,
>> -			  cdev->baudrate);
>> +	str = basprintf("console=%s%d,%dn8", cdev->linux_console_name, id, baudrate);
>>  
>>  	globalvar_add_simple("linux.bootargs.console", str);
>>  
>> @@ -297,6 +296,7 @@ int console_register(struct console_device *newcdev)
>>  	struct device_node *serdev_node = console_is_serdev_node(newcdev);
>>  	struct device_d *dev = &newcdev->class_dev;
>>  	int activate = 0, ret;
>> +	unsigned baudrate = CONFIG_BAUDRATE;
> 
> You initialize baudrate to CONFIG_BAUDRATE here in order to use that as
> a default, ...
> 
>>  
>>  	if (!serdev_node && initialized == CONSOLE_UNINITIALIZED)
>>  		console_init_early();
>> @@ -327,11 +327,16 @@ int console_register(struct console_device *newcdev)
>>  	if (serdev_node)
>>  		return of_platform_populate(serdev_node, NULL, dev);
>>  
>> +	if (newcdev->dev && of_device_is_stdout_path(newcdev->dev, &baudrate)) {
> 
> ...but of_device_is_stdout_path() unconditionally overwrites &baudrate...
> 
>> -int of_device_is_stdout_path(struct device_d *dev)
>> +int of_device_is_stdout_path(struct device_d *dev, unsigned int *baudrate)
>>  {
>> -	if (!dev->device_node)
>> -		return 0;
>> +	unsigned int tmp;
>> +
>> +	if (!dev || !dev->device_node || dev->device_node != of_get_stdoutpath(&tmp))
>> +		return false;
>>  
>> -	return dev->device_node == of_get_stdoutpath();
>> +	*baudrate = tmp;
> 
> ...here. This would break boards which don't have the baudrate given in
> the devicetree.

Ouch. Will fix.

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

