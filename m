Delivery-date: Fri, 11 Jun 2021 12:44:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lreeD-0004hK-DD
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 12:44:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lreeC-0002K1-9z
	for lore@pengutronix.de; Fri, 11 Jun 2021 12:44:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Biml2+Mb82WeAvQ8rkpK8qjdmTzVppzHL0/KsTudQNM=; b=2uPYtpLJbVK5NfnhYvS51f8QPP
	XznJYONEU1PVArOZk973Xh5w+36IAf8wwD2SJsbxrpm0r3zpTMZdA47FNZxdxLKerrOzcUV2FiGA6
	R0mCiW1RPdDt5bL8sXYJM2Rw3Lcrpf4+SZipvMAwvQYjshxQxP49HI5d7ZH5/xP9d4/8Kc41msQ8V
	YJO0iUlGGah47BEJnEgdX6J7P+82n8Brr7x0iNzCjYotszxd+bvuV4XqzarWSPwx5bpXmKhfUi8Mc
	dlhnxFECqa3Q+S7dBEitsWoxGMJ7g9MZCzQeKeb98l5qRLL1xjUJjKSAV/Z+nbk3F4bovPrex9UTB
	t1/bgH3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lred0-004msL-Cv; Fri, 11 Jun 2021 10:43:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrecu-004mrP-Q4
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 10:43:02 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lrect-0002H6-Hf; Fri, 11 Jun 2021 12:42:59 +0200
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
References: <20210611063914.155796-1-antonynpavlov@gmail.com>
 <20210611063914.155796-2-antonynpavlov@gmail.com>
 <20210611102356.GE22904@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <a0eda784-966d-b919-4342-f29ba1133d1b@pengutronix.de>
Date: Fri, 11 Jun 2021 12:42:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210611102356.GE22904@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_034300_877701_DE23F668 
X-CRM114-Status: GOOD (  20.38  )
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
Subject: Re: [PATCH 1/2] mtd: core: fix use of uninitialized struct member
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 11.06.21 12:23, Sascha Hauer wrote:
> Hi Antony,
> 
> On Fri, Jun 11, 2021 at 09:39:13AM +0300, Antony Pavlov wrote:
>> E.g. mtd_read() calls mtd_read_oob(), mtd_read_oob()
>> can check uninitialized ops->oobbuf. As a result
>> mtd_read_oob() can return -EOPNOTSUPP.
>>
>> Found on a MIPS board during /dev/m25p0 read, e.g.
>>
>>   barebox:/ md -s /dev/m25p0
>>   read: error 95
>>
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---
>>  drivers/mtd/core.c | 18 ++++++++++--------
>>  1 file changed, 10 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
>> index 37fccda6be..98820dfb4f 100644
>> --- a/drivers/mtd/core.c
>> +++ b/drivers/mtd/core.c
>> @@ -379,12 +379,13 @@ int mtd_block_markgood(struct mtd_info *mtd, loff_t ofs)
>>  int mtd_read(struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen,
>>               u_char *buf)
>>  {
>> -	struct mtd_oob_ops ops = {
>> -		.len = len,
>> -		.datbuf = buf,
>> -	};
>> +	struct mtd_oob_ops ops;
>>  	int ret;
>>  
>> +	memset(&ops, 0, sizeof(ops));
>> +	ops.len = len;
>> +	ops.datbuf = buf;
> 
> If this fixes something for you then you have severe problems with your
> compiler. Omitted fields are implicitly initialized to zero, often you
> can even find the corresponding call to memset in the objdump.

Perhaps elsewhere something is interpreting the padding, which may
not be zeroed when using an initializer list. This warrants further investigation
for sure.

Cheers,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

