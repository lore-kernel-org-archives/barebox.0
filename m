Delivery-date: Thu, 27 Oct 2022 09:53:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onxhL-003qBo-52
	for lore@lore.pengutronix.de; Thu, 27 Oct 2022 09:53:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onxhJ-0002cz-UB
	for lore@pengutronix.de; Thu, 27 Oct 2022 09:53:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6MFVEtZea5lgVAbhg5GMjkiZ6/LqOynvqYlBOXX09QQ=; b=XqBadEYddMKfpaCvQv8qR8/rkU
	1utomd+0vy/ydaLpmpv7lMFRIT7kVs8I2m8M9gAkZeKj3Ei6UegDlpZKlxgKsSWdyMa2z+GcW43yC
	JQcS7Rn6aLMb9F4oD52Av6d2KXldUSDJ99PYXd8+JVobyOaPp+f+C7ramucFAQPh6Ykz1WVEIXO/r
	DPVnd2KhbIr1F5vMEJGE3nm/NWivn4Vnjpeg9yog3HXL4rJRBIWM+FTwlQF4ayorXMaFGmwi9Fi/w
	7CMpNM8V/VVzC7h7txI+I7HW71Q5tQ7rdCBlK4+HXWbDbBWrZYHcY6O+fnuRWirTdUDkUv+ImuSeV
	r3RbT7pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onxg0-00CF5g-W1; Thu, 27 Oct 2022 07:51:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onxfw-00CF4m-H8
	for barebox@lists.infradead.org; Thu, 27 Oct 2022 07:51:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1onxfu-0002WP-Jj; Thu, 27 Oct 2022 09:51:38 +0200
Message-ID: <85fd321f-b525-76a2-1184-39a0ac2f9caa@pengutronix.de>
Date: Thu, 27 Oct 2022 09:51:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20221026064205.2360041-1-a.fatoum@pengutronix.de>
 <20221026064205.2360041-5-a.fatoum@pengutronix.de>
 <20221027072916.GB9130@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221027072916.GB9130@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_005140_595916_6457BB07 
X-CRM114-Status: GOOD (  22.16  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 5/6] commands: drvinfo: support filtering by driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi!

On 27.10.22 09:29, Sascha Hauer wrote:
> On Wed, Oct 26, 2022 at 08:42:04AM +0200, Ahmad Fatoum wrote:
>> drvinfo can be very long especially for the in-tree defconfigs,
>> add optional filtering support:
>> +	if (IS_ENABLED(CONFIG_AUTO_COMPLETE) && argc > 1)
>> +		filter = strjoin(" ", &argv[1], argc - 1);
> 
> Why does this depend on CONFIG_AUTO_COMPLETE?

drvinfo is something I think should always be enabled and I didn't want
to bloat it unconditionally.

> 
>> +
>>  	printf("Driver\tDevice(s)\n");
>>  	printf("--------------------\n");
>>  	for_each_driver(drv) {
>> +		if (filter && !str_has_prefix(drv->name, filter))
>> +			continue;
> 
> I don't see how this is expected to work. When you pass multiple drivers
> as argument 'filter' will be a concatenation of multiple driver names
> which then matches nothing.

Autocomplete doesn't work for elements with spaces, so when you write

  drvinfo TI<Tab>

You get

    drvinfo TI DP83

with no further ability to complete. The prefix matching can work with that
and will produce:

Driver  Device(s)
--------------------
TI DP83867
TI DP83TD510E

Use 'devinfo DEVICE' for more information

> How about using fnmatch? We could then pass things like "*usb*"

I am content with the tab completion.

Cheers,
Ahmad

> 
> Sascha
> 
> 
>> +
>>  		printf("%s\n",drv->name);
>>  		for_each_device(dev) {
>>  			if (dev->driver == drv)
>> @@ -24,6 +32,7 @@ static int do_drvinfo(int argc, char *argv[])
>>  	if (IS_ENABLED(CONFIG_CMD_DEVINFO))
>>  		printf("\nUse 'devinfo DEVICE' for more information\n");
>>  
>> +	free(filter);
>>  	return 0;
>>  }
>>  
>> @@ -31,5 +40,9 @@ static int do_drvinfo(int argc, char *argv[])
>>  BAREBOX_CMD_START(drvinfo)
>>  	.cmd		= do_drvinfo,
>>  	BAREBOX_CMD_DESC("list compiled-in device drivers")
>> +#ifdef CONFIG_AUTO_COMPLETE
>> +	BAREBOX_CMD_OPTS("[DRIVER]")
>> +#endif
>>  	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
>> +	BAREBOX_CMD_COMPLETE(driver_complete)
>>  BAREBOX_CMD_END
>> diff --git a/common/complete.c b/common/complete.c
>> index ab3c98549314..916d13d776ce 100644
>> --- a/common/complete.c
>> +++ b/common/complete.c
>> @@ -174,6 +174,27 @@ static int device_param_complete(struct device_d *dev, struct string_list *sl,
>>  	return 0;
>>  }
>>  
>> +int driver_complete(struct string_list *sl, char *instr)
>> +{
>> +	struct driver_d *drv;
>> +	int len;
>> +
>> +	if (!instr)
>> +		instr = "";
>> +
>> +	len = strlen(instr);
>> +
>> +	for_each_driver(drv) {
>> +		if (strncmp(instr, drv->name, len))
>> +			continue;
>> +
>> +		string_list_add_asprintf(sl, "%s ", drv->name);
>> +	}
>> +
>> +	return COMPLETE_CONTINUE;
>> +}
>> +EXPORT_SYMBOL(driver_complete);
>> +
>>  int empty_complete(struct string_list *sl, char *instr)
>>  {
>>  	return COMPLETE_END;
>> diff --git a/include/complete.h b/include/complete.h
>> index b0e675b5599f..2068760ac235 100644
>> --- a/include/complete.h
>> +++ b/include/complete.h
>> @@ -14,6 +14,7 @@ void complete_reset(void);
>>  
>>  int command_complete(struct string_list *sl, char *instr);
>>  int device_complete(struct string_list *sl, char *instr);
>> +int driver_complete(struct string_list *sl, char *instr);
>>  int empty_complete(struct string_list *sl, char *instr);
>>  int eth_complete(struct string_list *sl, char *instr);
>>  int command_var_complete(struct string_list *sl, char *instr);
>> -- 
>> 2.30.2
>>
>>
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


