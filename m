Delivery-date: Sun, 14 Mar 2021 13:43:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLQ65-0007sz-QZ
	for lore@lore.pengutronix.de; Sun, 14 Mar 2021 13:43:53 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLQ65-0000Wc-18
	for lore@pengutronix.de; Sun, 14 Mar 2021 13:43:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Nljg86ryKWeaWFHyWmbmvBRBuQrmo94d4XTURg0/SuM=; b=oydKLHxVUlsb0CeozxUVPab58
	nubJAjpN4C0G4YD+pitLn/mxjOwzg4OU3fvR36nm5zSNtg7OylN2r3CyvD/sWwO0+ALKWfYW/S84e
	BxdGybs7KZ7Atefrsd/ed2e953JGGl2S91EmzwE4gpYqtwajxY4TLi7WD1Ikl7gfh8O8wygRDWgfH
	Ut5HUMLJSC/02jccl028hKnBet3d6R3e5QuUAAoTohRIWzcdmYcdheLh6jWUM1cCGyTM/Cs2B3xgz
	I6tCGISTDKhaU25pC2l5vfMmQi65nXVi4qzSq+F3VMCecpQWRWrcQcKilvxmR8R7Se+JGPtxIGmUK
	+JrMUSqxA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLQ5J-00EDvI-0Q; Sun, 14 Mar 2021 12:43:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLQ3G-00EDtr-Fr
 for barebox@lists.infradead.org; Sun, 14 Mar 2021 12:43:01 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lLQ3F-0000If-G2; Sun, 14 Mar 2021 13:40:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Peter Mamonov <pmamonov@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@kalray.eu>,
 Stafford Horne <shorne@gmail.com>
References: <20210301110106.3764-1-a.fatoum@pengutronix.de>
 <20210301110106.3764-11-a.fatoum@pengutronix.de> <20210302221920.GC1407@chr>
 <20210304083811.GO5549@pengutronix.de> <20210307120056.GD1407@chr>
 <60f45ac4-7cd1-3358-7edc-476633047537@pengutronix.de>
Message-ID: <e423f3fa-ca8e-d875-a90c-50d4a73309a5@pengutronix.de>
Date: Sun, 14 Mar 2021 13:40:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <60f45ac4-7cd1-3358-7edc-476633047537@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210314_124258_913696_40BBAF82 
X-CRM114-Status: GOOD (  15.26  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 10/11] mips: Implement setjmp/longjmp/initjmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

On 10.03.21 09:17, Ahmad Fatoum wrote:
> Hello Peter,
> 
>>> I agree with you, but barebox doesn't support MIPS64 currently and I
>>> wasn't confident enough to add such things when I can't test them.
>>
>> Well, what can possibly go wrong? =) Actually you've used this approach for RV: 
>> http://lists.infradead.org/pipermail/barebox/2021-March/035173.html.
>>
>>> Maybe we can add a
>>>
>>> #if SZREG != 4
>>> #error setjmp/longjmp currently only supports 32bit targets
>>> #endif
>>
>> Definitely it's better than random fails after context switch in runtime.
> 
> I changed the select to happen only from the 32-bit symbols for RISC-V and MIPS.

Ah, I didn't understand at first that the assembly is safe for both 32-bit and 64-bit.
I tested it and it works on both. Will fix this with the RISC-V 64-bit series. 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

