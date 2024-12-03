Delivery-date: Tue, 03 Dec 2024 21:29:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIZWC-003dNx-2h
	for lore@lore.pengutronix.de;
	Tue, 03 Dec 2024 21:29:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIZWC-00046z-Op
	for lore@pengutronix.de; Tue, 03 Dec 2024 21:29:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q0K+6FTmZWP0oMzlTit/hWbt2Wgu929xHWVDo6jvwoE=; b=UI1Cwt/IgjxgMSu2qiAg7m+vW0
	af6AunJVOGwfC5/yDhdmwL2RHxki7P8YNX/4eDzC7w5ZMS/OZZyHRPkLerYM1VeGkLUr8dOWShIjV
	rAPehVQmUipYqOZv3tq+YCtycaQ2GTbyspbozWUreCNYU+udI0kAgGVrolATbgC2E0oWWAXhHPdM0
	5nhnTX572/357jGaeOABut5iLX+dxecU6Gd0bFu+DsTWKhQ70WFU1nq8Dcf99MZSyXnaZivotlyTp
	43S2cSq9Od5xPDN+/x5akaBv/ARlepPBHRRSlhrGiAytWKaJNPb3bNROs3fN+kbzws2pXXPOjaKPl
	hx3gz0Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIZVk-0000000AdIy-08gQ;
	Tue, 03 Dec 2024 20:28:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIZVh-0000000AdHt-2Q9o
	for barebox@lists.infradead.org;
	Tue, 03 Dec 2024 20:28:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tIZVg-0003xg-Dl; Tue, 03 Dec 2024 21:28:40 +0100
Message-ID: <49df1ec9-aca8-49b0-95fe-d577c5b615db@pengutronix.de>
Date: Tue, 3 Dec 2024 21:28:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: barebox@lists.infradead.org
References: <Z0gywL2hLcIDoLQ8@hephaistos>
 <fc008e94-9a80-4c01-8c4c-3c926721c2b1@pengutronix.de>
 <Z0g74s98_Pz98tC5@hephaistos>
 <83e0f4b3-c558-48dc-b867-f88376d73bc2@pengutronix.de>
 <Z0hbuZBvK2aLd5s1@hephaistos>
 <b91eaf6c-9559-466a-bd20-297647401c63@pengutronix.de>
 <Z03A9rr21q320J0t@hephaistos>
 <19923329-f254-435d-9557-5e1b6835b8ec@pengutronix.de>
 <Z09TKeFZaT6InuPX@hephaistos>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z09TKeFZaT6InuPX@hephaistos>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_122841_617105_DD257F53 
X-CRM114-Status: GOOD (  27.47  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 03.12.24 19:51, Konstantin Kletschke wrote:
> On Tue, Dec 03, 2024 at 07:28:24PM +0100, Ahmad Fatoum wrote:
> 
>> You can enable it for barebox.bin too, but enabling it for MLO only
>> should work too.
> 
> Okay.
> 
>>> 2~�W-�,-H]
>>>           ���k׋�ҫ�.LWC�C�C��arebox 2024.10.0-00152-g53c99b9f550b-dirty #15 Mon Dec 2 15:07:37 CET 2024
>>
>> Hmm, CONFIG_BAUDRATE is set correctly?
> 
> CONFIG_BAUDRATE=115200, never changed that.
> 
>> If it doesn't work at a later place, it won't work when you move it
>> earlier. I have a BBB here, so I can give enabling DEBUG_LL a try
> 
> Ou, then I have misunderstood one of your intial mails where I thought
> moving it earlier should change something, if RAM setup fails getting an
> output eventually despite of that.

- Try it first on a correctly working system an see that you get a >
  at the usual place.

- Try it on a broken system and see if you get a >

- If you don't, try on correct working system if you see > if you
  move it earlier

- Then try on broken system

>> too if you get stuck.
> 
> I manage to get DEBUG_LL on and run it, but the only difference is the
> scrambled output in my terminal on powerup boot or when resetting with 
> "my cold restart" modification. 
> But wait, I do not know if it as glitch, when CONFIG_LL_DEBUG is on and
> I power on, I see a "2" immediately put out in terminal prepended first.
> When the system gets stuck it does it in a way I do not see anything with
> or without enabled in stuck case.

See the patch I just Cc'd you on.
 
> I extremely appreciate your help getting CONFIG_LL_DEBUG run.> I can support with a dozen of BBBs within a day to your office, its
> nearly on my way from my home to my work :-D

I was particularly interested in DEBUG_LL, because that was a regression
as I know that it used to work.

I wish you best luck with debugging the actual issue you have now. :-)

Let me know how it goes,
Ahmad

> 
> Regards
> Konsti
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


