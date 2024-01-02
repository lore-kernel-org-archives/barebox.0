Delivery-date: Tue, 02 Jan 2024 10:14:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKarJ-000P6B-2d
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 10:14:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKarI-0008NK-Op
	for lore@pengutronix.de; Tue, 02 Jan 2024 10:14:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/7iS/k7xkuKUveprrclS21e2Y2/zbbbYoaDkYwSpAas=; b=pdIpTcJJsbzb83B7FiqJTGlt+b
	XbKYxlUZinLrFRTPFMeZKvBWs0r4lzh1DrnEWq5zpm4ti1ySa8djpHzM37z0PUETiHr7efNSqJ6SU
	DtEJMNZyVU4yHebfhLG+ERFZFCCqEq7+1/J2aD0ZKmaJll0cITduEorA9x84aJ5tQDLtPTnuFC/A4
	BZ0y6Q9Yuxi/uq49il9AGCuAM2nistb1P2T+4CKtkTicd3RGIXkSJp8JDRffJEqmEd4MKsn/zTxag
	hToQbg9clmnTCdqoaNZvbaGzzdy77UThJN7btE1luHrL88iUBXEAF/aXtKnN5agy2VodWD6QFfFsH
	mib16x3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKaqM-007QId-2M;
	Tue, 02 Jan 2024 09:13:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKaqJ-007QHq-2q
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 09:13:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKaqI-000869-Kt; Tue, 02 Jan 2024 10:13:46 +0100
Message-ID: <3da0b213-f64a-414d-b13d-331ccc6a225c@pengutronix.de>
Date: Tue, 2 Jan 2024 10:13:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: Bastian Krause <bst@pengutronix.de>, barebox@lists.infradead.org
References: <20231219161135.1388398-1-bst@pengutronix.de>
 <aec171fa-98b8-4dcd-9594-36175a66c072@pengutronix.de>
 <20240102091156.GV1318922@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240102091156.GV1318922@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_011347_916573_4B8C6D05 
X-CRM114-Status: GOOD (  21.03  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] i2c: add pmic_reg_read() for PBL use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 02.01.24 10:11, Sascha Hauer wrote:
> On Tue, Dec 19, 2023 at 05:21:35PM +0100, Ahmad Fatoum wrote:
>> Hello Bastian,
>>
>> On 19.12.23 17:11, Bastian Krause wrote:
>>> Add a common PMIC read function to PBL which allows easy porting of
>>> U-Boot's pmic_reg_read() in lowlevel board code.
>>>
>>> Signed-off-by: Bastian Krause <bst@pengutronix.de>
>>> ---
>>>  include/pbl/pmic.h | 21 +++++++++++++++++++++
>>>  1 file changed, 21 insertions(+)
>>>
>>> diff --git a/include/pbl/pmic.h b/include/pbl/pmic.h
>>> index 0f882c5649d..bd0583370ec 100644
>>> --- a/include/pbl/pmic.h
>>> +++ b/include/pbl/pmic.h
>>> @@ -9,6 +9,27 @@ struct pmic_config {
>>>  	u8 val;
>>>  };
>>>  
>>> +static void pmic_reg_read(struct pbl_i2c *i2c, int addr, u8 reg, void *buf)
>>
>> This should be static inline to avoid warnings for boards that don't use it.
>>
>>> +{
>>> +	int ret;
>>> +	struct i2c_msg msg[] = {
>>> +		{
>>> +			.addr = addr,
>>> +			.buf = &reg,
>>> +			.len = 1,
>>> +		}, {
>>> +			.addr = addr,
>>> +			.flags = I2C_M_RD,
>>> +			.buf = buf,
>>
>> U-Boot has buf of type u32 *. In your barebox implementation, only the
>> first byte is written, so this leaves 3 bytes potentially uninitialized.
>>
>> You likely want to change void *buf to u32 *val and then
>>
>>   u8 buf[1];
>>   /* i2c_xfer... */
>>   *val = buf[0];
> 
> When *buf is assumed to be a single byte only anyway then we can change
> its type to u8 *

For ease of porting from U-Boot board code, we should just keep the same prototype.

Cheers,
Ahmad

> 
> Sascha
> 
>>
>>> +			.len = 1,
>>> +		},
>>> +	};
>>> +
>>> +	ret = pbl_i2c_xfer(i2c, msg, ARRAY_SIZE(msg));
>>> +	if (ret != ARRAY_SIZE(msg))
>>> +		pr_err("Failed to read from pmic@%x: %d\n", addr, ret);
>>> +}
>>
>> Cheers,
>> Ahmad
>>
>>> +
>>>  static void pmic_reg_write(struct pbl_i2c *i2c, int addr, u8 reg, u8 val)
>>>  {
>>>  	int ret;
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



