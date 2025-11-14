Delivery-date: Fri, 14 Nov 2025 14:51:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJuDC-000vS3-3C
	for lore@lore.pengutronix.de;
	Fri, 14 Nov 2025 14:51:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJuDC-0007FL-AT
	for lore@pengutronix.de; Fri, 14 Nov 2025 14:51:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NY3jC27Ai7zNXnGfyBsp1yrvd/VUhGhyUFi8bA3CWro=; b=GbrFARhCViR7DcwnX+slSz/rQY
	3oyUxCKoY/zKC6NkoewLxV8yETfnS4AlCEeFUKayCS/aKiCfawySEHVQokdo5BbFs1bG8glZKUmW2
	ijaOg2GeCPh5FDTBJMwgVvalpzyan02zn9dwo2GEcNI51gpgC9kZF4saSLDz3tq5zju7obr/6ClEf
	IowTlLjVghjAuCnzfhX6IuCJ5zRhrnDGJn1Phu4hz2ZScr24Bgc4hke34XDYxWzu2AJQeEO73oPCl
	nnxdDQIufxwrgx+V6pFqFzhnjB8jfDuh0s4AIMC/DkvxhuS3g0BLtC/83VPo/z1v1hDjxtKsPRQoj
	gZu/FJ8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJuCm-0000000CIQ4-1Tid;
	Fri, 14 Nov 2025 13:51:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJuCk-0000000CIPV-1cVh
	for barebox@lists.infradead.org;
	Fri, 14 Nov 2025 13:51:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vJuCi-00078U-TC; Fri, 14 Nov 2025 14:51:08 +0100
Message-ID: <865dceb4-1dae-49f1-b8cc-36dfd24746dd@pengutronix.de>
Date: Fri, 14 Nov 2025 14:51:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>, chalianis1@gmail.com
Cc: barebox@lists.infradead.org
References: <20251114050034.186683-1-chalianis1@gmail.com>
 <20251114101100.4dpxj3vztsdmezqg@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251114101100.4dpxj3vztsdmezqg@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_055110_432906_56C3CFC4 
X-CRM114-Status: GOOD (  30.69  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,WEIRD_QUOTING
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] blspec: derive root prefix from blspec config path
 instead of mountpoint
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 11/14/25 11:11 AM, Marco Felsch wrote:
> Hi,
> 
> thanks for your patch.
> 
> On 25-11-14, chalianis1@gmail.com wrote:
>> From: Chali Anis <chalianis1@gmail.com>
>>
>> Add get_prefix_path() to compute the filesystem prefix of a BLSpec
>> entry by locating the deepest /loader/entries/ component in the
> 
> What exactly do you mean by "deepest"? The specification says that the
> entries should be under /loader/entries of $BOOT or $EFI partition [1].
> 
> There is also a note:
> """""""""
> In all cases the /loader/entries/ directory should be located directly
> in the root of the ESP or XBOOTLDR filesystem. Specifically, the
> /loader/entries/ directory should not be located under the /EFI/
> subdirectory on the ESP.
> """""""""
> 
> So searching in subdirs seems not to be spec compatible. May I ask why
> your loader entries are within some subdir in the first place?

I was also confused when Anis first mentioned this on IRC, but the
missing piece of information was that get_mounted_path() (and now
get_blspec_prefix_path()) is only used when booting a specific
bootloader spec config by name, e.g.,

bootm /mnt/.../loader/entries/my.conf

as opposed to:

bootm /mnt/.../


In that case, it makes sense to not go up to the first mount, but just
take the loader/entries the file is inside.

I believe this can also be useful for testing: include a loader/
directory in the barebox environment and then run tests over it directly
without having to copy /env/loader to /loader first, because that's the
file system root.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
> [1] https://uapi-group.org/specifications/specs/boot_loader_specification/#type-1-boot-loader-specification-entries
> 
>> configuration path. This ensures correct rootpath extraction for
>> nested loader directories, mixed path layouts, duplicate segments,
>> and paths without valid loader entries. If no prefix is found,
>> fall back to get_mounted_path().
>>
>> Signed-off-by: Chali Anis <chalianis1@gmail.com>
>> ---
>>  common/blspec.c | 25 ++++++++++++++++++++++++-
>>  1 file changed, 24 insertions(+), 1 deletion(-)
>>
>> diff --git a/common/blspec.c b/common/blspec.c
>> index 80ebe256ceaf..ad94d4d6be64 100644
>> --- a/common/blspec.c
>> +++ b/common/blspec.c
>> @@ -391,6 +391,29 @@ static bool entry_is_match_machine_id(struct blspec_entry *entry)
>>  	return ret;
>>  }
>>  
>> +/*
>> + * Return the path prefix before the deepest "/loader/entries/" component
>> + * in @configname. Falls back to the mounted path if none is found.
>> + */
>> +static char *get_blspec_prefix_path(char *configname)
>> +{
>> +	char *p;
>> +	char *scfg = configname;
>> +	char *save = NULL;
>> +
>> +	while ((p = strstr(scfg, "/loader/entries/")) != NULL) {
>> +		if (p - configname > 0)
>> +			save = p;
>> +
>> +		scfg = p + 1;
>> +	}
>> +
>> +	if (save && save - configname > 0)
>> +		return xstrndup(configname, save - configname);
>> +
>> +	return get_mounted_path(configname);
>> +}
>> +
>>  static int __blspec_scan_file(struct bootentries *bootentries, const char *root,
>>  			      const char *configname)
>>  {
>> @@ -404,7 +427,7 @@ static int __blspec_scan_file(struct bootentries *bootentries, const char *root,
>>  	if (IS_ERR(entry))
>>  		return PTR_ERR(entry);
>>  
>> -	root = root ?: get_mounted_path(configname);
>> +	root = root ?: get_blspec_prefix_path(configname);
>>  	entry->rootpath = xstrdup_const(root);
>>  	entry->configpath = xstrdup_const(configname);
>>  	entry->cdev = get_cdev_by_mountpath(root);
>> -- 
>> 2.49.0
>>
>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



