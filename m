Delivery-date: Mon, 31 Jan 2022 11:25:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nETs0-001aMv-IP
	for lore@lore.pengutronix.de; Mon, 31 Jan 2022 11:25:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nETry-00088C-M7
	for lore@pengutronix.de; Mon, 31 Jan 2022 11:25:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pYEQfSGeKwllznif0upKp1N0n6w1uuvfKePuipIn1u4=; b=HjACPjf/+INKbqhAVoxue0ihst
	QpwYljEO5D1q/D7v5xpqRGdBSsj00QtGU3+QpJMnvsj1Czs1zTOMV1zXvP+bl3el1asWElDcjlTA1
	595ijeX9R7AerUqJh5KAusVopcfb4fu3gvNS8kv8oa/68K6AGwrVTpFO1fbflM2TEKbefQPDqvKoX
	0XEDjdGX0wt13w6XKUtZATFlE3JWmy3goVCEJMejNuTof+bzHHj2CYSmyhffPgiAGPA0pixEvdPy5
	X20Q/c50Sj1xZZl7GyYEbvlxsqBhHNs18/V4uGe6usgXbBMoY5ip0q3gqNljiPyV1auRhrHAIY62n
	+xy3MvSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nETqf-008qGP-CV; Mon, 31 Jan 2022 10:23:49 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nETqY-008qDd-25
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 10:23:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
 Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HSA6pQM2ccstQDplFdAE18ZG/rx4NlQGWNvdx5bDyD4=; b=TqCatAwmumMzLTcwCKafBsSNtz
 kORw0eLCjvk2TJ7TPWytXJxR/5GDm8DImWZEjJQWrhxGcEadBj8btYyPgwtP+jS2kAxBXsjzcwCXJ
 Un7HB1blYg7Ll2leXdSh/IHucqVrd7xtJTCjnXRf0LD6jCIW2uZM2S+/+7TIFFeQf6teYFkNmycS8
 gOhCyEzHO3dXvWPImEOV9oeKDBH3BmruzA/wgavG3B8QQu6KkkYoyms2TqPITEDpFuu1VYymYYg3h
 EjU2R/gYi3O6YgfWKSxlEh8xnU4LsPo5x7jShs9orNEgob2cIijNhJVsFHIItXGk+YkAVlHcCOjiq
 X6ikp0Nw==;
Received: from [89.212.21.243] (port=45360 helo=[192.168.69.215])
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>) id 1nETqK-0053sT-NO
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 11:23:35 +0100
To: barebox@lists.infradead.org
References: <20220128080033.167251-1-andrej.picej@norik.com>
 <20220131092358.GX23490@pengutronix.de>
From: Andrej Picej <andrej.picej@norik.com>
Message-ID: <813ef0f4-d6d4-1ca4-0729-09db490b811e@norik.com>
Date: Mon, 31 Jan 2022 11:23:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220131092358.GX23490@pengutronix.de>
Content-Language: en-GB
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
X-CRM114-CacheID: sfid-20220131_022342_470189_1750E209 
X-CRM114-Status: GOOD (  32.52  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] scripts/common: fix write_file when opened with mmap
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 31. 01. 22 10:23, Sascha Hauer wrote:
> Hi Andrej,
> 
> On Fri, Jan 28, 2022 at 09:00:33AM +0100, Andrej Picej wrote:
>> Usage of bareboximd with -c option (Create checksum for FILE and write
>> it to the crc32 tag) was broken. Possibly by applying 2154de1cf36c
>> (bareboximd: Use mmap when possibly). The script fails with:
>>
>>      $ ./scripts/bareboximd -c images/<barebox-image.img>
>>      Cannot write to images/<barebox-mage.img>: Bad address
>>      CRC: write crc token to images/<barebox-image.img> failed: -14
>>      Bad address
>>
>> This has to do with the usage of "mmap" and "open" with O_TRUNC flag
>> which truncates the file length to 0. Writing to files fails with:
>> EFAULT (14) buf is outside your accessible address space.
>> Remove the truncate flag and truncate manually after writing the data.
>>
>> This fixes the bareboximd script, which is now again usable with -c
>> option.
> 
> That's a very unfortunate bug :(
> 
>>
>> Signed-off-by: Anze Lesnik <anze.lesnik@norik.com>
>> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
>> ---
>>   scripts/common.c | 7 ++++++-
>>   1 file changed, 6 insertions(+), 1 deletion(-)
>>
>> diff --git a/scripts/common.c b/scripts/common.c
>> index 3f8dcd2d38..331988d593 100644
>> --- a/scripts/common.c
>> +++ b/scripts/common.c
>> @@ -107,7 +107,7 @@ int write_file(const char *filename, const void *buf, size_t size)
>>   	int fd, ret = 0;
>>   	int now;
>>   
>> -	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT,
> 
> I added a comment above this while applying to prevent people from
> "optimizing" this patch away.
> 
>> +	fd = open(filename, O_WRONLY | O_CREAT,
>>   		  S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
>>   	if (fd < 0) {
>>   		fprintf(stderr, "Cannot open %s: %s\n", filename, strerror(errno));
>> @@ -126,6 +126,11 @@ int write_file(const char *filename, const void *buf, size_t size)
>>   		buf += now;
>>   	}
>>   
>> +	if (ftruncate(fd, now) < 0) {
>> +		fprintf(stderr, "Cannot truncate file: %s", strerror(errno));
>> +		ret = -errno;
>> +	}
> 
> truncating to 'now' is only correct when we were able to write all bytes
> at once. Otherwise we must truncate to the input size. I fixed this up
> to the patch below.

That makes sense. Good thing you caught that.

Thanks.

> 
> Sascha
> 
> -----------------------------8<----------------------------
> 
>  From 738601e1258c55953284ee10801b26b9977918c2 Mon Sep 17 00:00:00 2001
> From: Andrej Picej <andrej.picej@norik.com>
> Date: Fri, 28 Jan 2022 09:00:33 +0100
> Subject: [PATCH] scripts/common: fix write_file when opened with mmap
> 
> Usage of bareboximd with -c option (Create checksum for FILE and write
> it to the crc32 tag) was broken. Possibly by applying 2154de1cf36c
> (bareboximd: Use mmap when possibly). The script fails with:
> 
>      $ ./scripts/bareboximd -c images/<barebox-image.img>
>      Cannot write to images/<barebox-mage.img>: Bad address
>      CRC: write crc token to images/<barebox-image.img> failed: -14
>      Bad address
> 
> This has to do with the usage of "mmap" and "open" with O_TRUNC flag
> which truncates the file length to 0. Writing to files fails with:
> EFAULT (14) buf is outside your accessible address space.
> Remove the truncate flag and truncate manually after writing the data.
> 
> This fixes the bareboximd script, which is now again usable with -c
> option.
> 
> Signed-off-by: Anze Lesnik <anze.lesnik@norik.com>
> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> Link: https://lore.barebox.org/20220128080033.167251-1-andrej.picej@norik.com
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>   scripts/common.c | 15 +++++++++++----
>   1 file changed, 11 insertions(+), 4 deletions(-)
> 
> diff --git a/scripts/common.c b/scripts/common.c
> index b780b09941..154d6dffcb 100644
> --- a/scripts/common.c
> +++ b/scripts/common.c
> @@ -105,26 +105,33 @@ int write_file(const char *filename, const void *buf, size_t size)
>   {
>   	int fd, ret = 0;
>   	int now;
> +	size_t left = size;
>   
> -	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT,
> +	/* The same file may be mmapped currently, so can't use O_TRUNC here */
> +	fd = open(filename, O_WRONLY | O_CREAT,
>   		  S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
>   	if (fd < 0) {
>   		fprintf(stderr, "Cannot open %s: %s\n", filename, strerror(errno));
>   		return -errno;
>   	}
>   
> -	while (size) {
> -		now = write(fd, buf, size);
> +	while (left) {
> +		now = write(fd, buf, left);
>   		if (now < 0) {
>   			fprintf(stderr, "Cannot write to %s: %s\n", filename,
>   				strerror(errno));
>   			ret = -errno;
>   			goto out;
>   		}
> -		size -= now;
> +		left -= now;
>   		buf += now;
>   	}
>   
> +	if (ftruncate(fd, size) < 0) {
> +		fprintf(stderr, "Cannot truncate file: %s", strerror(errno));
> +		ret = -errno;
> +	}
> +
>   out:
>   	close(fd);
>   
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

