Delivery-date: Fri, 27 Jun 2025 10:44:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uV4hS-00BYtt-22
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 10:44:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uV4hS-0001yM-1h
	for lore@pengutronix.de; Fri, 27 Jun 2025 10:44:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X2dHp/9CFdyKsnyWUuqrod7kCCIQIG4Ibly0mwqqWeE=; b=TtkF4fBVzZa8kI
	PkVKDX1DdwFvUhH5jBrsEc7fz6RlnHAi4b3GGcC6zGEqlmHav4njGTL0O/Mr4byZYUmHKY9g0TZyz
	bRS0K9+1HveDD1EWUpc79betYKJVszO2W2eZxcqhce6ArEM9DP8puplyQ1AVWkNFQCuZPHrUgxFXG
	kStFWs5woTHI8artC/ImDFzPRRvFGQdLUFkrBpLtMKjKlIyNPtCWhfndACNBKdIzYYEHkAskVSkb4
	1W5IMZMQlpOmRow0Vzhim++WCYk3j6aUMFLhnmvFRy4QsvumfQpcrS6Sg4mUy5vje+gSUMT9sdWLX
	1nxEhI3LYx72OPEWBUzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV4gn-0000000DzCK-0eI4;
	Fri, 27 Jun 2025 08:44:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV4es-0000000Dz52-2p98
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 08:42:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uV4eq-000827-SX; Fri, 27 Jun 2025 10:42:04 +0200
Message-ID: <61a90e8e-114e-4a98-9854-91b8ff4983ee@pengutronix.de>
Date: Fri, 27 Jun 2025 10:42:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
References: <20250626140329.418033-1-s.hauer@pengutronix.de>
 <70b41f3b-4329-48f7-827f-1924e002ab04@pengutronix.de>
 <20250626223619.4zczubh63dcadfhf@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250626223619.4zczubh63dcadfhf@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_014206_714864_3C5894BF 
X-CRM114-Status: GOOD (  20.54  )
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
Cc: Barebox List <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ARM: i.MX: tqma6ulx: fix barebox chainloading with
 OP-TEE enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Marco,

On 6/27/25 00:36, Marco Felsch wrote:
> On 25-06-26, Ahmad Fatoum wrote:
>> I think this is problematic:
>>
>>   - robustness-wise: We have no guarantee that there isn't some lesser
>>     used BootROM code path that happens to leave a suitable DRAM
>>     look-alike address that would trick us here.
>>
>>   - security wise, even if we check for FDT header if r2 points into
>>     DRAM, a compromised OS could spray RAM with FDT magic,
>>     trigger a warm reset that has the BootROM produce a DRAM lookalike
>>     pointer in r2 and then OP-TEE loading is skipped and the kernel
>>     starts in the highest privilege level.
> 
> These are good points and should be addressed, but I think the patch is
> still good because obvious broken code gets repaired.

The old code was broken in an unnoticed way. I am way of the new code
being broken in a noticeable one, even if it's more correct.

>> To address this, we need some way to set a sticky bit that's cleared
>> only on reset. One way, would be to set up an IVT and try to access the
>> L2 cache controller while data_abort_mask() is active, like
>> imx6_cannot_write_l2x0 is doing.
> 
> Nice trick!
> 
> One could also argue that skip the OP-TEE loading (to chainload barebox)
> is a dev-feature which should be disabled once the INSECURE=n.

Good idea. If we check DRAM pointers for FDT magic and skip OP-TEE
loading only on INSECURE, this is fine by me.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>> Cheers,
>> Ahmad
>>
>>> +
>>>  		get_builtin_firmware(mba6ul_optee_bin, &tee, &tee_size);
>>>  
>>>  		memset((void *)OPTEE_OVERLAY_LOCATION, 0, 0x1000);
>>> @@ -112,5 +111,5 @@ ENTRY_FUNCTION(start_imx6ul_mba6ulx, r0, r1, r2)
>>>  	setup_c();
>>>  	barrier();
>>>  
>>> -	start_mba6ulx(r0);
>>> +	start_mba6ulx(r2);
>>>  }
>>
>> -- 
>> Pengutronix e.K.                  |                             |
>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>>
>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



