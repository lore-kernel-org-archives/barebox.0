Delivery-date: Mon, 31 May 2021 10:29:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lndIV-0003WY-2q
	for lore@lore.pengutronix.de; Mon, 31 May 2021 10:29:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lndIT-0000Qa-WA
	for lore@pengutronix.de; Mon, 31 May 2021 10:29:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5Xhog6dycBD+rYb5UVwORuKoaH1D1AsuvxfhBRYAung=; b=NQW4ujgSMAw9Entrr+ADEGxyGG
	v3wl+A1IwHWkNgek9ZdwtIAZ7GqkKJ18UzTNyvx7L/Pm4wRMxuIAQuBLWjN70IFX93+jDfjUGgdXH
	9YthF5bYPeCer4gKS2OR7vx9OX+jx5+GPb4u0FMr5CAIdRCZzNTeB//0A5gU5KgiF7SLtk7i9BLmK
	xpuUV43PaE+yxDvNS98UCY9UwsNmaeuGLmfPJSg951LKUqiA7Omm5BueCue1MOowoP5EIcaWrUS39
	a2H6lPqkFCY9HMPokND5kN3hM/QdlC+dcoNjmZV2o1tot+6saOnVFqLI0rCX19zy645JW3AlxlqFA
	fRMXdaaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lndHL-00BRar-0T; Mon, 31 May 2021 08:28:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lndH0-00BRUh-PB
 for barebox@lists.infradead.org; Mon, 31 May 2021 08:27:48 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lndGz-0000Fu-Bt; Mon, 31 May 2021 10:27:45 +0200
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20210527124453.22710-1-a.fatoum@pengutronix.de>
 <20210531071353.GD5211@pengutronix.de>
 <45eca231-6dbf-f3f9-1753-05f993ee3f54@pengutronix.de>
 <20210531082448.GM5211@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <a8a4a6a8-7617-faa1-7aab-a510f7e1e5b3@pengutronix.de>
Date: Mon, 31 May 2021 10:27:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210531082448.GM5211@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_012746_867239_D8712F48 
X-CRM114-Status: GOOD (  16.20  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] video: reunite fb devices with their hardware parent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 31.05.21 10:24, Sascha Hauer wrote:
> On Mon, May 31, 2021 at 10:20:59AM +0200, Ahmad Fatoum wrote:
>>
>>
>> On 31.05.21 09:13, Sascha Hauer wrote:
>>>>  
>>>>  	fb_of_reserve_add_fixup(&fbi.info);
>>>>  
>>>> +	fbi.info.dev.parent = dev;
>>>
>>> Should be hw_dev here. Fixed while applying, thanks
>>
>> Ouch. Thanks for the fixup. Shows how much I/We would benefit from merging
>> the testing series soon, so Github Actions can start building these configuration
>> I inadvertently break :))
> 
> Don't worry. I catched this during review, but even without it I build
> all defconfigs before merging a commit to master.

I know, I'd really like this to be automatic for patch submissions as well.

> 
> Sascha
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

