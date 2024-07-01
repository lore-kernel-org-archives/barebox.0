Delivery-date: Mon, 01 Jul 2024 12:11:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOE0d-000Swl-1g
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 12:11:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOE0c-0006uv-Sx
	for lore@pengutronix.de; Mon, 01 Jul 2024 12:11:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s3r2u47zV66rOrWvCR4m2wOHmRGWQLwmdmIFQaommAU=; b=kEMAHSd2nn8PlLzzTYSn6noxBQ
	WoJqKhwlGeREa9nHRBjNQghLsrFf+NoSHLVLVIhf7VNd8Vm4k9eBCDas/PwiiiYK42ZzZKlIuKdGl
	iY140yEtJceZVt8jlS30m/bRxUaxkJSDI6IMfyxtRL2uMfx258q/DRg+KMZiJ98n56+VILNV6ZskL
	NMh0EmoBXtALgKxeA5uL+fnisCkexBflHgMfK87bP9T8PmLUw2sXUZS+Waz0iEHUjJEmWSCt/sll6
	Ywu7kz614T2U0vIbY8Q47JM06JfEiJOZ2W6J15QbzVj/TF8/IjlD2Tb7F09FM345K7dTvjY7MOiNK
	vmsQ+pJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOE0B-00000002aLP-415l;
	Mon, 01 Jul 2024 10:11:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOE09-00000002aKF-02xF
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 10:11:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOE07-0006p1-Lk; Mon, 01 Jul 2024 12:11:11 +0200
Message-ID: <5bf15ba5-fe96-41e5-8207-de75370c5338@pengutronix.de>
Date: Mon, 1 Jul 2024 12:11:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20240701071455.138644-1-a.fatoum@pengutronix.de>
 <ZoKAHmX1_V3quUnA@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <ZoKAHmX1_V3quUnA@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_031113_089900_6031DF7C 
X-CRM114-Status: GOOD (  20.88  )
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
Subject: Re: [PATCH] bbu: command: update via TFTP if no image given
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 01.07.24 12:08, Sascha Hauer wrote:
> On Mon, Jul 01, 2024 at 09:14:55AM +0200, Ahmad Fatoum wrote:
>> Booting barebox over TFTP is a common operation that even has a default
>> boot target: `boot bnet`.
>>
>> Once, a chainloaded barebox was tested to work, it may need to be
>> persisted, which needs a cumbersome:
>>
>>   barebox_update /mnt/tftp/${global.user}-barebox-${global.hostname}
>>
>> Make this more straight-forward by interpreting barebox_update called
>> without any non-option argument to mean just that.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  commands/barebox-update.c | 11 ++++++++---
>>  1 file changed, 8 insertions(+), 3 deletions(-)
>>
>> diff --git a/commands/barebox-update.c b/commands/barebox-update.c
>> index 4b23433e84f2..59db315e5650 100644
>> --- a/commands/barebox-update.c
>> +++ b/commands/barebox-update.c
>> @@ -6,6 +6,7 @@
>>  #include <common.h>
>>  #include <command.h>
>>  #include <libfile.h>
>> +#include <globalvar.h>
>>  #include <getopt.h>
>>  #include <malloc.h>
>>  #include <errno.h>
>> @@ -20,6 +21,7 @@ static void print_handlers_list(void)
>>  
>>  static int do_barebox_update(int argc, char *argv[])
>>  {
>> +	char pathbuf[PATH_MAX];
> 
> Do we really want to allocate 1KiB on the stack?

The default STACK_SIZE is 32K, so it should be ok normally, but I can switch
this to a dynamic allocation for v2 if you prefer.

Cheers,
Ahmad

> 
> sascha
> 
>>  	int opt, ret, repair = 0;
>>  	struct bbu_data data = {};
>>  	struct bbu_handler *handler;
>> @@ -82,14 +84,17 @@ static int do_barebox_update(int argc, char *argv[])
>>  
>>  	if (argc - optind > 0) {
>>  		data.imagefile = argv[optind];
>> +	} else if (!repair) {
>> +		snprintf(pathbuf, sizeof(pathbuf), "/mnt/tftp/%s-barebox-%s",
>> +			 globalvar_get("user"), globalvar_get("hostname"));
>> +		data.imagefile = pathbuf;
>> +	}
>>  
>> +	if (data.imagefile) {
>>  		image = read_file(data.imagefile, &data.len);
>>  		if (!image)
>>  			return -errno;
>>  		data.image = image;
>> -	} else {
>> -		if (!repair)
>> -			return COMMAND_ERROR_USAGE;
>>  	}
>>  
>>  	ret = barebox_update(&data, handler);
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



