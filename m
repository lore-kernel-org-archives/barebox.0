Delivery-date: Tue, 14 Jan 2025 10:28:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXdDb-000xfm-0W
	for lore@lore.pengutronix.de;
	Tue, 14 Jan 2025 10:28:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXdDa-0001kR-FE
	for lore@pengutronix.de; Tue, 14 Jan 2025 10:28:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wa8TWjEzkv7YZp+OTUnrSzNPbOiwo/ckWmwnzBnSF1M=; b=x3hnsC2alaoDUCTrtXZjffBrCb
	BI7B9kfRGv97ALDwbsTTi42q1qIe5VQlOFhCXq/jxgwgphjG0ea7MwJVc7l7ad/Pi1hGg18MPOTGo
	PUmJkjd+X/TBHwqNziWOZ2/K9mjyCWs2K1kjygz5FMdSZ5D6wFQ7i3Wu4u0qWQR+mOtbLgeJ0DC+v
	tT1lahPpnIXR5L4h0EEVaGCUx8KGM/5/0F5+X2Foq7HVxF/fpS87lsT604035VlyP1fU3EvBe6e7u
	qvuihv59uTupsFiqSNnSufOVyhFBshlyGm2PBi2QJVLUbQcRK9jDimAL00+qNW8njcOzm4+VMkrJM
	miiXG7aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXdCu-00000007wpg-1qKu;
	Tue, 14 Jan 2025 09:27:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXdCs-00000007wpH-1SvF
	for barebox@lists.infradead.org;
	Tue, 14 Jan 2025 09:27:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tXdCp-0001cK-6e; Tue, 14 Jan 2025 10:27:27 +0100
Message-ID: <f77ad601-1ee9-41d6-9ed2-ad2f183e4b67@pengutronix.de>
Date: Tue, 14 Jan 2025 10:27:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
References: <20250113070216.16303-1-eagle.alexander923@gmail.com>
 <757d2274-534a-4cf4-b6fc-0e990c5dd601@pengutronix.de>
 <CAP1tNvQMYokRvvj_SwUq1_qETmTqS2-cY7chbat6wqqFeyydrg@mail.gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvQMYokRvvj_SwUq1_qETmTqS2-cY7chbat6wqqFeyydrg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_012730_388732_E6E30CA8 
X-CRM114-Status: GOOD (  24.65  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] i2c: at91: Fix driver for SAMA5D2 SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 13.01.25 14:37, Alexander Shiyan wrote:
> Hello.
> 
> As far as I understand, AT91_TWI_TXCOMP is set at the same time as
> one of the AT91_TWI_RXRDY or AT91_TWI_TXRDY signals, so we need
> to check these bits first to perform the read or write operation of
> the next byte.
> If it was the last byte (when the STOP bit is transmitted) we exit.

If the case AT91_TWI_TXCOMP on its own can't happen, then this is fine.

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks,
Ahmad

> 
> Thanks!
> 
> пн, 13 янв. 2025 г. в 16:17, Ahmad Fatoum <a.fatoum@pengutronix.de>:
>>
>> On 13.01.25 08:02, Alexander Shiyan wrote:
>>> Most bits of the AT91 SR status register are cleared after reading,
>>> so we may lose the status at the end of the wait loop.
>>> Let's use the value already readed to check for "completed" status.
>>>
>>> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
>>> ---
>>>  drivers/i2c/busses/i2c-at91.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
>>> index dbc5aa4ddf..8929dbaede 100644
>>> --- a/drivers/i2c/busses/i2c-at91.c
>>> +++ b/drivers/i2c/busses/i2c-at91.c
>>> @@ -276,7 +276,7 @@ static int at91_twi_wait_completion(struct at91_twi_dev *dev)
>>>
>>>               dev->transfer_status |= status;
>>>
>>> -     } while (!(at91_twi_read(dev, AT91_TWI_SR) & AT91_TWI_TXCOMP));
>>> +     } while (!(status & AT91_TWI_TXCOMP));
>>
>> This makes the function harder to reason about, because the status read
>> is done at the start, but only acted upon at the very end.
>>
>> Would it make sense to change this to a while loop or move it into the
>> loop directly after the other status read and early exit if it's true?
>>
>>>
>>>       at91_disable_twi_interrupts(dev);
>>>
>>
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


