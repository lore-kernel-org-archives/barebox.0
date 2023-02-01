Delivery-date: Wed, 01 Feb 2023 20:46:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNJ3i-00AUxj-Ov
	for lore@lore.pengutronix.de; Wed, 01 Feb 2023 20:46:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNJ3g-0004NG-7d
	for lore@pengutronix.de; Wed, 01 Feb 2023 20:46:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W8OBfb9mER3eJFplTyO4E5mHK+6mwOvs1VawyN6o7x8=; b=hh7lF0IXWegiSuYa6OuxTsljH4
	u0jzKq65yOVW5D+AqRV7PX7FLsX6KuRkfbHNsq/7CCI3N6p3qIHhxeq3w7iDDn2Wb/9lLw6wKlUaM
	ch5CGf6YjErXS/fB0Fu9aJLEGJNcx1gccgdlQ81usYEI16jdda2uPXCZioy+4XzpO4T8FUQH9Lbr7
	frPXUPIgHg25//Ag8eIFt24P7QRx2z9LFADoU87rKPTxvxV17Mf5XoK5MegFU82GBH5F6FR+QZ6Ab
	gIcB7spWl+Qj1VqcxmA4vMQCPaPtFSo1rZgKhHDdE/FXPNuXwGxeaQ00oNeVRYzPg1bmp7rzQvNrn
	3SMWAEyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNJ2H-00DQEP-25; Wed, 01 Feb 2023 19:44:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNJ2C-00DQD9-9C
	for barebox@lists.infradead.org; Wed, 01 Feb 2023 19:44:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pNJ26-00043k-9I; Wed, 01 Feb 2023 20:44:38 +0100
Message-ID: <45011e51-4e6f-b2d7-e7b8-c1b2e935bbba@pengutronix.de>
Date: Wed, 1 Feb 2023 20:44:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
References: <20230126185643.104049-1-contact@jookia.org>
 <CAP1tNvRo98Xoo2z3GmacoYZ-vR6FTnKcJYxrop3HJZi-QnFt6Q@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvRo98Xoo2z3GmacoYZ-vR6FTnKcJYxrop3HJZi-QnFt6Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230201_114444_344580_F9AB9703 
X-CRM114-Status: GOOD (  21.55  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] I2C: i.MX: early: Use internal udelay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Alexander,

On 01.02.23 18:50, Alexander Shiyan wrote:
> Hello!
> 
> Just a nitpick, udelay means milliseconds (udelay_(us)),
> which isn't quite right in this case,
> so I think we should use the "loops" value here (delay_loops() or so)).

udelay is already defined used ARMv8 architected timer, so what John is
doingvis providing an implementation for i.MX6. So even if it uses a loop,
the iterations are chosen to be roughly the amount of microseconds
in the argument and thus the name is ok IMO. See his latest revision
of the patch.

Cheers,
Ahmad

> 
> Thanks!
> 
> чт, 26 янв. 2023 г. в 21:57, John Watts <contact@jookia.org>:
>>
>> udelay isn't provided in the PBL, so use our own definition.
>>
>> This avoids boards having to define udelay in their code.
>>
>> Signed-off-by: John Watts <contact@jookia.org>
>> ---
>>  drivers/i2c/busses/i2c-imx-early.c | 9 ++++++++-
>>  1 file changed, 8 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/i2c/busses/i2c-imx-early.c b/drivers/i2c/busses/i2c-imx-early.c
>> index 6c8bdc7904..fcf279eff8 100644
>> --- a/drivers/i2c/busses/i2c-imx-early.c
>> +++ b/drivers/i2c/busses/i2c-imx-early.c
>> @@ -90,6 +90,13 @@ static int i2c_fsl_acked(struct fsl_i2c *fsl_i2c)
>>         return i2c_fsl_poll_status(fsl_i2c, 0, I2SR_RXAK);
>>  }
>>
>> +static void __udelay(int us)
>> +{
>> +       volatile int i;
>> +
>> +       for (i = 0; i < us * 1000; i++);
>> +}
>> +
>>  static int i2c_fsl_start(struct fsl_i2c *fsl_i2c)
>>  {
>>         unsigned int temp = 0;
>> @@ -104,7 +111,7 @@ static int i2c_fsl_start(struct fsl_i2c *fsl_i2c)
>>                           fsl_i2c, FSL_I2C_I2CR);
>>
>>         /* Wait controller to be stable */
>> -       udelay(100);
>> +       __udelay(100);
>>
>>         /* Start I2C transaction */
>>         temp = fsl_i2c_read_reg(fsl_i2c, FSL_I2C_I2CR);
>> --
>> 2.39.1
>>
>>
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



