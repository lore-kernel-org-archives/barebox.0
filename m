Delivery-date: Fri, 17 Feb 2023 15:11:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT1Sv-00AAw8-SN
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 15:11:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT1Su-0003hz-6I
	for lore@pengutronix.de; Fri, 17 Feb 2023 15:11:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BgU4w5Bgi7TEWETCOmm/A9+bbJj/DsKU0V6v5AwjfQY=; b=RQ0Rwq7mbyYdMbdVmy0d4DHXXy
	lhf0tctLoRdT/W7IIiNDguARPW7kh039O7aDVCk7/v3//QgBd3P8pAbpxNW/mjdDm0N3+DxLGXsPB
	YXrlqJThdhFyhPMbygGriuIB9vXqpi9dzzobOx4rd7EahxiHEekl4nrmeFge3P9zC0akycRsO6KNQ
	CmW6IxLlAQkiSWkeQAeOrXulEJr1Haowe0WvFdb738WeXLRs+vAZ47MpyaTomq59j+mRCVuhBu4/Y
	xMZoP3DQHCW2thb/mV+Gl2GoLw+Ayz81HaFcCFLQK99ovHsKYM4ENukC8dBYVhEVMS1+Rs8PqiLez
	YLFOZJPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT1Ri-00ESRi-Np; Fri, 17 Feb 2023 14:10:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT1Rd-00ESQh-A8
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 14:10:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pT1RZ-0002x5-Tk; Fri, 17 Feb 2023 15:10:33 +0100
Message-ID: <3c946f97-b63d-8e2a-848b-a5413919c5a3@pengutronix.de>
Date: Fri, 17 Feb 2023 15:10:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Maxim Kochetkov <fido_max@inbox.ru>, barebox@lists.infradead.org
Cc: pmamonov@gmail.com, a.kuyan@yadro.com, p.mamonov@yadro.com,
 Maxim Kochetkov <m.kochetkov@yadro.com>
References: <20230217073157.21573-1-fido_max@inbox.ru>
 <4073a83d-e7b8-0965-b44b-ad1005b800c7@pengutronix.de>
 <07d4762e-ba94-0f43-febd-a35d1c130aaa@inbox.ru>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <07d4762e-ba94-0f43-febd-a35d1c130aaa@inbox.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_061037_372806_300E3D9E 
X-CRM114-Status: GOOD (  17.13  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/1] serial: ns16550: move iomem/ioport init after clock
 init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Maxim,

On 17.02.23 15:03, Maxim Kochetkov wrote:
> 
> 
> On 17.02.2023 12:02, Ahmad Fatoum wrote:
>> Hello Maxim,
>>
>> On 17.02.23 08:31, Maxim Kochetkov wrote:
>>> -    ret = ns16550_init_iomem(dev, priv);
>>> -    if (ret)
>>> -        ret = ns16550_init_ioport(dev, priv);
>>> -
>>>       if (ret)
>>>           return ret;
>>
>> ret is now uninitialized here.
>>
>>>   @@ -511,6 +507,10 @@ static int ns16550_probe(struct device *dev)
>>>           goto err;
>>>       }
>>>   +    ret = ns16550_init_iomem(dev, priv);
>>> +    if (ret)
>>> +        ret = ns16550_init_ioport(dev, priv);
>>
>> second ret is never checked.
> 
> Sorry about that. I will fix it in v2.
>>
>> If you move the second if (ret), patch looks ok to me.
>> jfyi, If you enable deep probe for your board/platform, clk_get()
>> would automatically probe the clock driver if unavailable, so you
>> shouldn't ever see -EPROBE_DEFER.
> 
> I tried deep probe and it works fine without any -EPROBE_DEFER. Thanks a lot for the tip!

Nice! It's not enabled globally as some existing boards may need rework
(e.g. you need to place of_device_ensure_probed into board code), but new
boards should perferably always use it and just save the time needed to do
EPROBE_DEFER altogether.

Cheers,
Ahmad

> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



