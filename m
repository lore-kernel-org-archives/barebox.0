Delivery-date: Wed, 27 Apr 2022 12:02:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njeUj-00Gsv3-SV
	for lore@lore.pengutronix.de; Wed, 27 Apr 2022 12:02:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njeUh-0007eN-B5
	for lore@pengutronix.de; Wed, 27 Apr 2022 12:01:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jm+myl+3kfrZUgqnR3pJzo57TQjtRyanEncKhG17tqs=; b=lYUEkf0s1GYiPt
	KKU1kx+ftA0UxxTmIvlBmpdPa4P+we9ycEt9yvKiz9HzcKVLQu4aemUzv9LvvO5LFVn8TkQAy3ckH
	y+e3+e32x3kQG8ZajmPsFAbxMdUmgprcgl7Qt1V2AVCZQuJ34Z10VsodFRLf6ltfsLUBg3ihqkIvr
	Cz3kO0khVI9ND2tlM0A5RNXlqFiUeJbAyyRL656OB4O7EyZxWIhZWwwAFY30SfRZVZCzkNaAMcVz5
	nRPLiZq6LjxSgBy2HvAV4XaMo/P+JldxYJPpXnuhKK/2RCRwf424lwzdmjxXGMp8CrNPJYXbUEO+K
	BVAzPp2SPnOPO/qQGOMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njeTO-000rgP-Dk; Wed, 27 Apr 2022 10:00:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njeTJ-000rfd-Mj
 for barebox@lists.infradead.org; Wed, 27 Apr 2022 10:00:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1njeTH-0007Pd-Oa; Wed, 27 Apr 2022 12:00:31 +0200
Message-ID: <c683ab1b-c2bc-bffe-1339-38c23038c183@pengutronix.de>
Date: Wed, 27 Apr 2022 12:00:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
References: <20220427093752.1746932-1-o.rempel@pengutronix.de>
 <20220427093752.1746932-4-o.rempel@pengutronix.de>
 <746c795d-852b-d664-ac1e-361dc21bad15@pengutronix.de>
 <20220427095126.GB17577@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220427095126.GB17577@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_030033_789960_6AC8A991 
X-CRM114-Status: GOOD (  15.71  )
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
X-Spam-Status: No, score=-6.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 3/4] of: add generic of_fixup_machine_compatible()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 27.04.22 11:51, Oleksij Rempel wrote:
> On Wed, Apr 27, 2022 at 11:46:20AM +0200, Ahmad Fatoum wrote:
>> Hi,
>>
>> On 27.04.22 11:37, Oleksij Rempel wrote:
>>>  
>>> +	if (IS_ENABLED(CONFIG_MACHINE_FIXUP)) {
>>> +		const char *compat;
>>> +
>>> +		compat = getenv("global.of_machine_compatible");
>>> +		if (compat)
>>> +			of_fixup_machine_compatible(root, compat);
>>
>> That's not what I had in mind. I meant for the variable to affect bootspec
>> use, i.e. fixup barebox device tree. This here just adds an extra compatible
>> to the kernel device tree.
> 
> This is what is needed for my use case/customer. As soon as other use
> case will be needed, we can extend it.

Neither the name $global.of_machine_compatible nor the description
"Extra OF board compatible" suggest that this will fixup kernel DTs instead
of rewriting barebox' own machine compatible, which is what springs to
my mind when seeing this variable. I am fine if you only implement
what you need, but that name is unsuitable for your use case IMO.

> 
> Regards,
> Oleksij


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

