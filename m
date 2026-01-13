Delivery-date: Tue, 13 Jan 2026 14:09:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfe99-000sxx-1l
	for lore@lore.pengutronix.de;
	Tue, 13 Jan 2026 14:09:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfe98-0005A8-Ii
	for lore@pengutronix.de; Tue, 13 Jan 2026 14:09:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ebe73Q0obKNFQIFsDqq5FysvJ8hIZ4ssDw0MCdqT3+8=; b=M6nBMP3xsdAIDhk5BOeeiNPSVa
	Q9I6GvYqRjNyQlp4e5LuBSpMQsUqkowGnR7SkUATm6ypQV7X8QIHiQoQRBSwtRNpurmhScF1lihBe
	ZJlo7eUDLTRMYVOy+9bPN43NANd3Z5NYLqTNRhbfvI03S7pu6nIq+bvB9d+1k2LSXzCzbnDw63Qu9
	kULX3/50QK4kixN36SVEhFkyO+kx54LNtAwEjAkLES0U2W3OiiHkOLbJt+acc9RDRSuwr7+t0XEEH
	uOWDEcwe1T4qZxi4Ju+BhYDgmQ25xWCY8A1HKFxGYjChtjwt/ao/yDr11j/QK6qW1fNvKz3e5NBE1
	03scAOLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfe8l-000000078Bp-2Npd;
	Tue, 13 Jan 2026 13:08:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfe8i-000000078BT-1xfO
	for barebox@lists.infradead.org;
	Tue, 13 Jan 2026 13:08:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vfe8f-0004zS-Ga; Tue, 13 Jan 2026 14:08:49 +0100
Message-ID: <b3fecef7-4ac5-4f2a-9bdb-e86d01ec0da6@barebox.org>
Date: Tue, 13 Jan 2026 14:08:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20260112085617.2952747-1-a.fatoum@barebox.org>
 <20260112085617.2952747-2-a.fatoum@barebox.org>
 <aWZDD7Ro-4Dj1pHO@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@barebox.org>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <aWZDD7Ro-4Dj1pHO@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_050852_521682_905022E3 
X-CRM114-Status: GOOD (  13.66  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] commands: md: fix OOB read when mmapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 1/13/26 2:05 PM, Sascha Hauer wrote:
> On Mon, Jan 12, 2026 at 09:56:05AM +0100, Ahmad Fatoum wrote:
>> md -s /dev/mmappable.device will read out-of-bounds if the byte count to
>> read exceeds the device size.
>>
>> Limit the size read from the memmap to fix this.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
>> ---
>>  commands/md.c    | 4 ++++
>>  common/ratp/md.c | 4 ++++
>>  2 files changed, 8 insertions(+)
>>
>> diff --git a/commands/md.c b/commands/md.c
>> index f3758f571fb2..401538d4d8be 100644
>> --- a/commands/md.c
>> +++ b/commands/md.c
>> @@ -25,6 +25,7 @@ static int do_mem_md(int argc, char *argv[])
>>  	loff_t	start = 0, size = 0x100;
>>  	int	r, now;
>>  	int	ret = 0;
>> +	struct stat st;
>>  	int fd;
>>  	char *filename = "/dev/mem";
>>  	int mode = O_RWSIZE_4;
>> @@ -54,6 +55,9 @@ static int do_mem_md(int argc, char *argv[])
>>  		return 1;
>>  	}
>>  
>> +	if (!fstat(fd, &st) && st.st_size != FILE_SIZE_STREAM)
>> +		size = min(size, st.st_size);
> 
> This should take start into account.

I will resend a v2 of this one patch. Feel free to pick the others if
you are ok with them.

> 
> Sascha
> 



