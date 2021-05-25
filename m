Delivery-date: Tue, 25 May 2021 14:51:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llWWj-0002C6-Ot
	for lore@lore.pengutronix.de; Tue, 25 May 2021 14:51:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llWWi-0004Pj-IJ
	for lore@pengutronix.de; Tue, 25 May 2021 14:51:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Sf56PXNldA5JiE7WLXgovZsYoOuNF2QxlsAd378L2vw=; b=LLJIUBAHxoJwfRWblJhF+dS2Cz
	0SJZvNRkYSzVVotAVMR1gVtWVdqk+rwhp8nJ+itZmFMUajV0XzFKen2URaZ6m+beAdjwEgXKpH3R4
	M3wXhznhlSQP7nN71S5rK3o75XXZpfEqUEvV7Muwzok72Xdc6xXTQgJaZpkS3/qFP9uiNXTcLtLhs
	2394ACeyOfgch+LpsYwTp+w1uYVw9FgG07995M7jZwAQsAz2ptDzSycILt1A+PImfDBsIQ6uZ8N6s
	ogFP/E1IfADqoZsw2DWkOwi9gTjmzfHuF33oy2Q8LQGQJktxYB41ayM6gsVJV2JCsqHQhfQXxwtiq
	Bgzl1gWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llWUX-0057fC-2o; Tue, 25 May 2021 12:49:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llWUQ-0057dB-MF
 for barebox@lists.infradead.org; Tue, 25 May 2021 12:48:56 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1llWUP-0003sZ-9p; Tue, 25 May 2021 14:48:53 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Marek Czerski <m.czerski@ap-tech.pl>
Cc: barebox@lists.infradead.org
References: <20210525071952.18045-1-antonynpavlov@gmail.com>
 <20210525071952.18045-6-antonynpavlov@gmail.com>
 <20210525103647.b4c08389183128e7abea97a0@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <2cea0c51-5979-a0b6-0f93-2b19eec1af4e@pengutronix.de>
Date: Tue, 25 May 2021 14:48:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210525103647.b4c08389183128e7abea97a0@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_054854_776323_15EF5E29 
X-CRM114-Status: GOOD (  32.13  )
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
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 05/10] litex serial: add setbrg callback
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Antony,

On 25.05.21 09:36, Antony Pavlov wrote:
> On Tue, 25 May 2021 10:19:47 +0300
> Antony Pavlov <antonynpavlov@gmail.com> wrote:
> 
> Hi all!
> 
> 
>> From: Marek Czerski <m.czerski@ap-tech.pl>
>>
>> setbrg callback (set baudrate) is needed by the loadx/loady commands.
>> Because litex serial has fixed baudrate the callback only checks if
>> the requested baudrate is the same as the CONFIG_BAUDRATE.
>> ---
>>  drivers/serial/serial_litex.c | 9 ++++++++-
>>  1 file changed, 8 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/serial/serial_litex.c b/drivers/serial/serial_litex.c
>> index 8562a45ecc..9d35a6e44a 100644
>> --- a/drivers/serial/serial_litex.c
>> +++ b/drivers/serial/serial_litex.c
>> @@ -58,6 +58,13 @@ static int litex_serial_tstc(struct console_device *cdev)
>>  	return !litex_serial_readb(cdev, UART_RXEMPTY);
>>  }
>>  
>> +static int litex_setial_setbaudrate(struct console_device *cdev, int baudrate)
>> +{
>> +	if (baudrate != CONFIG_BAUDRATE)
>> +		return -EINVAL;
>> +	return 0;
>> +}
>> +
> 
> I have sent this patch separately because it need special attention.
> 
> LiteX serial port hardware has fixed baudrate and setbaudrate has no sence.
> On the other hand absent setnbaudrate() litex serial makes impossible 
> to use Y-modem data trasfer.
> 
> I don't like CONFIG_BAUDRATE here. Can we use 
> 
> 	if (baudrate != cdev->baudrate)
> 		return -EINVAL;
> 	return 0;
> 
> instead?
> 
> Please comment!

There are other consoles (efi, linux, virtio) that don't support baud rate
setting either, so I think it makes sense to solve this outside of the
individual console drivers.

One way to go about it is move


if (cdev->baudrate == baudrate)

        return 0;

in common/console.c up. Then setting baud rate to the preconfigured value
would succeed everywhere.

> To: Ahmad
> It looks like CONFIG_BAUDRATE is a one more global defconfig parameter
> that complicates "one defconfig for all RISC-V boards" approach.

It's not a deal breaker, users can still use the environment for fine-grained
configuration of the baud rate on a per board basis if they indeed want to
ship the same barebox configuration for LiteX and something else.

The idea of one-defconfig-for-all is that we don't introduce unneeded mutually-
exclusive configurations. This is not the case here.

(I know I still owe you some patches, I will try to get those sent out soon-ish)

Cheers,
Ahmad

> 
> P.S. There is typo in litex_seTial_setbaudrate name. I have noted just now.
> It should be fixed of cause.
> 
> 
>>  static int litex_serial_probe(struct device_d *dev)
>>  {
>>  	struct resource *iores;
>> @@ -73,7 +80,7 @@ static int litex_serial_probe(struct device_d *dev)
>>  	cdev->tstc = &litex_serial_tstc;
>>  	cdev->putc = &litex_serial_putc;
>>  	cdev->getc = &litex_serial_getc;
>> -	cdev->setbrg = NULL;
>> +	cdev->setbrg = &litex_setial_setbaudrate;
>>  
>>  	console_register(cdev);
>>  
>> -- 
>> 2.31.1
>>
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

