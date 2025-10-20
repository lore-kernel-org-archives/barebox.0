Delivery-date: Mon, 20 Oct 2025 14:47:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApIS-009td6-1K
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:47:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApIR-0006Nb-PR
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:47:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/rx8oDz7Q6/GlN7AOcDfBGwbV9drV9Yn+4kU/XBOzWk=; b=0hOHO9vQkCmxqjXZJ1TEApB/tH
	GAd+nnwboohM5FtYrPTFqBZZYsgExtSG+c7QO0zq7GPDR6bjlE9WmDZaF9ve7RS1by+LlH5L5cI+/
	LMugE40kedcrXkRtYFIaLFBMxye9A7YX3IU/bdvJwBT+PfbaTMdBIC4TYJSJKLbFEBqXqNoFQgKB0
	0Cdxg07CvxO6/VK+Paq8CLGy+hJztG0T4tukjPiFLGEcC++keBuqfmPND7uYJQHjH+AzEsCFS6KpR
	d0xgIBeJWmWxjkNEzF5AI8m9jaKYWXLu7tc5QCssUKMMTUBtM5Kp7PCDI0vRff2d4CzX5RbmiDvRh
	cEy3diMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApHy-0000000DcWw-2qZq;
	Mon, 20 Oct 2025 12:47:02 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApHx-0000000DcWd-2PQD
	for barebox@bombadil.infradead.org;
	Mon, 20 Oct 2025 12:47:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=/rx8oDz7Q6/GlN7AOcDfBGwbV9drV9Yn+4kU/XBOzWk=; b=YyFuFxiQ9P9zzwPz9V/EbFw8FE
	lvW3FUvtBXDOPqizRcmZsct83jkGmM7XqHqfX6sgKUyHL+RBmxnIUepk5GQEeZf0ltvUsCD+YXuyG
	iyeMDnA0UM9NCYh+LqcFDx8Ndt/8Q6zha82/RJug/q+5qOyzeKuLSPZtFkkARr0hEFsNCzAgVBdjZ
	ut/cay97cAswfWcihHssyW29GUjs0N7jguH8u8EfBmZxM6/QnEKi8zh80BvTeNw/NSEq4bP6GLJrn
	XOFcv+jKPvCI5OlUJ5oGTt+u2td793user6aTJGue0KYs/EouGqdZllAI+X3tBsiAubiqiCc7Z2Tu
	PEFCWy/Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApHs-00000007RR1-3uGd
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:47:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vApHt-0006HR-1x; Mon, 20 Oct 2025 14:46:57 +0200
Message-ID: <0f128caf-738f-42df-98f9-91dcbd2a17d4@pengutronix.de>
Date: Mon, 20 Oct 2025 14:46:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20251015092706.2358673-1-a.fatoum@pengutronix.de>
 <aPYTVLV88jhpRc24@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <aPYTVLV88jhpRc24@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_134658_209741_874899CB 
X-CRM114-Status: GOOD (  17.52  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] commands: devinfo: print Deep Probe status for
 top-level machine device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 10/20/25 12:47 PM, Sascha Hauer wrote:
> On Wed, Oct 15, 2025 at 11:27:01AM +0200, Ahmad Fatoum wrote:
>> There is a log message when deep probe is disabled, but to make it
>> easier to verify that it's enabled, let's introduce it as extra info
>> in the devinfo command.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  commands/devinfo.c |  4 ++++
>>  drivers/of/base.c  | 12 +++++++++---
>>  include/of.h       |  2 ++
>>  3 files changed, 15 insertions(+), 3 deletions(-)
>>
>> diff --git a/commands/devinfo.c b/commands/devinfo.c
>> index cff4dbb92e31..e132f88bf3f3 100644
>> --- a/commands/devinfo.c
>> +++ b/commands/devinfo.c
>> @@ -117,6 +117,10 @@ static int do_devinfo(int argc, char *argv[])
>>  				printf("\n");
>>  				of_print_nodes(dev->of_node, 0, ~0);
>>  			}
>> +
>> +			if (dev == of_platform_root_device)
> 
> Can't this just be
> 
> 			if (dev->of_node && !dev->of_node->parent)
> 
> ?

No, some devices have a device tree node that's not rooted to the
barebox live tree, e.g. TLVs have:

  dev->device_node = of_new_node(of_new_node(NULL, NULL), dev_name(dev));

Cheers,
Ahmad


> 
> Sascha
> 
>> +				printf("Deep probe: %s\n",
>> +				       deep_probe_is_supported() ? "true" : "false");
>>  		}
>>  #endif
>>  	}
>> diff --git a/drivers/of/base.c b/drivers/of/base.c
>> index c20fffb899a9..15265dc22623 100644
>> --- a/drivers/of/base.c
>> +++ b/drivers/of/base.c
>> @@ -2909,12 +2909,14 @@ static int of_probe_memory(void)
>>  }
>>  mem_initcall(of_probe_memory);
>>  
>> +struct device *of_platform_root_device;
>> +
>>  static void of_platform_device_create_root(struct device_node *np)
>>  {
>> -	static struct device *dev;
>> +	struct device *dev;
>>  	int ret;
>>  
>> -	if (dev)
>> +	if (of_platform_root_device)
>>  		return;
>>  
>>  	dev = xzalloc(sizeof(*dev));
>> @@ -2923,8 +2925,12 @@ static void of_platform_device_create_root(struct device_node *np)
>>  	dev_set_name(dev, "machine");
>>  
>>  	ret = platform_device_register(dev);
>> -	if (ret)
>> +	if (WARN_ON(ret)) {
>>  		free_device(dev);
>> +		return;
>> +	}
>> +
>> +	of_platform_root_device = dev;
>>  }
>>  
>>  static const struct of_device_id reserved_mem_matches[] = {
>> diff --git a/include/of.h b/include/of.h
>> index 640d76f4aade..d1efab13c780 100644
>> --- a/include/of.h
>> +++ b/include/of.h
>> @@ -428,6 +428,8 @@ extern int of_set_root_node(struct device_node *node);
>>  extern int barebox_register_of(struct device_node *root);
>>  extern int barebox_register_fdt(const void *dtb);
>>  
>> +extern struct device *of_platform_root_device;
>> +
>>  extern struct device *of_platform_device_create(struct device_node *np,
>>  						struct device *parent);
>>  extern void of_platform_device_dummy_drv(struct device *dev);
>> -- 
>> 2.47.3
>>
>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



