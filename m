Delivery-date: Wed, 15 Apr 2026 08:39:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCtu1-00CKJt-15
	for lore@lore.pengutronix.de;
	Wed, 15 Apr 2026 08:39:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCtu0-0007h1-Qh
	for lore@pengutronix.de; Wed, 15 Apr 2026 08:39:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hb1NqdUa9BatwqHV1yEApUwZLMGpjwv3wRg7BNtpjjU=; b=4TslePQPOqaxsZZYAw+SK4eaig
	Vo8a1E3FGfk5ZlfzxOl+h/TUfc67C7B5ac2JNETvd7ymV2jcXs+AWM28e3/IILKDIscQdO2foSzD9
	f7K3gTjy5ww/5TnxDSUArg4QtDZvrze2x6nLeXYhW84ANWFqVwmC7xfjrkV8lR+3PqD4QcPZ6i1lv
	1JDSHeXrUsALVr77kfB8m8h/BF7RBV+rAGV+94jYhpGE6ioQViQ1/mbc4PLy43rQTB36f5pJ8plNo
	/b5QHKpy4msHTJschvUg/lh5luLb6sJ1RTNH22W0bKHlWF3X6uTxm6ndrNGfdBKoh55mXriulWRYZ
	VrG5Yxsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCttc-00000000eiW-0hH5;
	Wed, 15 Apr 2026 06:38:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCttZ-00000000ehf-3wxM
	for barebox@lists.infradead.org;
	Wed, 15 Apr 2026 06:38:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCttW-0007Y3-GW; Wed, 15 Apr 2026 08:38:38 +0200
Message-ID: <543af165-c225-4d36-95ab-d1a87fb19a7c@pengutronix.de>
Date: Wed, 15 Apr 2026 08:38:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Chali Anis <chalianis1@gmail.com>
References: <20260414150010.761563-1-a.fatoum@pengutronix.de>
 <177623436724.3296399.717586581063357979.b4-ty@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <177623436724.3296399.717586581063357979.b4-ty@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_233842_003327_BC2A14EF 
X-CRM114-Status: GOOD (  14.49  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] of: gracefully handle empty dummy DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 4/15/26 08:26, Sascha Hauer wrote:
> 
> On Tue, 14 Apr 2026 16:57:33 +0200, Ahmad Fatoum wrote:
>> We started registering an empty dummy DT on platforms with barebox as
>> EFI payload to allow a multi-platform build where some enabled SoCs
>> expect a DT to be available.
>>
>> This fixes some problems, but causes others, because we have places in
>> the code that assume there is always a compatible property when there is
>> a device tree.
>>
>> [...]
> 
> Applied, thanks!

Thanks. I forgot to mention this is also for master as the issue is already in a release.

> 
> [1/1] of: gracefully handle empty dummy DT
>       https://git.pengutronix.de/cgit/barebox/commit/?id=90ec6d81c1d1 (link may not be stable)
> 
> Best regards,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


