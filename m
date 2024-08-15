Delivery-date: Thu, 15 Aug 2024 08:57:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seUQe-009nAV-2X
	for lore@lore.pengutronix.de;
	Thu, 15 Aug 2024 08:57:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seUQe-00036q-4q
	for lore@pengutronix.de; Thu, 15 Aug 2024 08:57:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4w9A1e49OAky2UduftNU4DjMseY8ZAEzQuyU+bo3Hcw=; b=VgzNCL4WdFNl1IoUgNXvws+xkV
	if1htnHdHAFT9Ypi3t0DgaTZD53xVUDkCnKxi4BZ8/fezuKRlXwXKBJ0qhKwR2Kp8zibHH2hR2aVb
	bVDhUH0bGNxDybh+5FJhjVPWE57LavKBYKqaUNiyVVNckCPgW2J1UMNK93Qwv2nW/ITmaO6/yLc08
	aEscObT6ECKbWn6QQd/nsf95jBOrZ927bCEEBfjSfsp7SL0JiUXv0mMNZqwleP/keGy1/iUGb1BYY
	P+DvVPO4vXtuy6xtaNAT65FUaI/I1pL+PRnc8blgYaPpOwg+z1y5WjJ3+S+0I80Zx2g0nH6vsLKrN
	pEdvhJAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seUQE-00000009D5x-3W5o;
	Thu, 15 Aug 2024 06:57:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seUQB-00000009D4g-2q0C
	for barebox@lists.infradead.org;
	Thu, 15 Aug 2024 06:57:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seUQA-0002y7-Ct; Thu, 15 Aug 2024 08:57:18 +0200
Message-ID: <f8931b23-768b-429e-a634-b28494fb95fa@pengutronix.de>
Date: Thu, 15 Aug 2024 08:57:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tomas Marek <tomas.marek@elrest.cz>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20240814092424.39878-1-a.fatoum@pengutronix.de>
 <20240814092424.39878-5-a.fatoum@pengutronix.de> <Zr2XxoD4Gce7bTB4@debian>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Zr2XxoD4Gce7bTB4@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_235719_752198_21A5C752 
X-CRM114-Status: GOOD (  21.60  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 5/6] i2c: efi: avoid 64-bit division
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Tomas,

On 15.08.24 07:53, Tomas Marek wrote:
> Hello Ahmad,
> 
> Thanks for maintenance of the Barebox EFI.
> 
> On Wed, Aug 14, 2024 at 11:24:23AM +0200, Ahmad Fatoum wrote:
>> I2C message length is 16 bit, so doing a 64-bit division is overkill.
>> Let's remove the cast and just rely on the usual integer promotion
>> to 32-bit.
>>
>> Cc: Tomas Marek <tomas.marek@elrest.cz>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/i2c/busses/i2c-efi.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/i2c/busses/i2c-efi.c b/drivers/i2c/busses/i2c-efi.c
>> index 5f6cc0eed28e..a666a28fab51 100644
>> --- a/drivers/i2c/busses/i2c-efi.c
>> +++ b/drivers/i2c/busses/i2c-efi.c
>> @@ -114,7 +114,7 @@ static unsigned int efi_i2c_msg_op_cnt(const struct efi_i2c_priv *i2c_priv,
>>  
>>  	max_len = efi_i2c_max_len(i2c_priv, msg);
>>  
>> -	return ((u64)msg->len + max_len - 1) / max_len;
>> +	return (msg->len + max_len - 1) / max_len;
> 
> The issue here is that max_len, which represents the MaximumReceiveBytes
> or MaximumTransmitBytes in EFI I2C capabilities, is 32-bit. In some EFI
> implementations (including the one I use), the EFI I2C MaximumReceiveBytes
> and MaximumTransmitBytes are set to the maximum value (0xFFFFFFFF). This
> causes msg->len + max_len - 1 to overflow, leading to an incorrect number
> of returned operations. To address this, the msg->len is extended to 64 bits.

Thanks for the info. See the patch I just Cc'd you on.

@Sascha, can you drop this one patch again?

Thanks,
Ahmad

> 
> Best regards
> 
> Tomas
> 
>>  }
>>  
>>  static unsigned int efi_i2c_req_op_cnt(
>> -- 
>> 2.39.2
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


