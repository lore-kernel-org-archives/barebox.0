Delivery-date: Fri, 05 Mar 2021 11:51:54 +0100
Received: from [2001:67c:670:201:290:27ff:fe1d:cc33] (helo=metis.ext.pengutronix.de)
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lI83m-0002Xo-MV
	for lore@lore.pengutronix.de; Fri, 05 Mar 2021 11:51:54 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lI83b-0008QD-Ll
	for lore@pengutronix.de; Fri, 05 Mar 2021 11:51:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XOC59Gg7Tx0imCTXB7NGId+xb3dZ/KhbTJLAR2WjB8Q=; b=IuLU07MHhZEVWjXBALYwaVXrq
	ObOFO1W2nGJHqm9/j99nA0i9fiYaeYERX92LOcuhQpQxDE/LKFY3kDmIKfIUcfk/K6tIF1rU4+T2s
	eOssbIdCPUuYbaLe7JZyIPYvya+cOJefNrWrzzmQdJTnPYsz/9wQAUPjzDmgXBS/WW1PBuT0rZZsk
	xwDbuHrE3PPklU873yRMOyfnUbYpahEywBXqGGZtFG4O5oTzylh3z7wYilrnA4A7lrSI2Ui6MVFGm
	QYB10ELrgugP2QdtrSet9r2KDeR+bup/dCMThri8s0an39AE4qYDXol4Xrv9bLa8gcCDdFsbfKO8a
	ERk9Fh7rw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lI81U-00Ed2H-S7; Fri, 05 Mar 2021 10:49:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lI80T-00EcyB-Dm
 for barebox@lists.infradead.org; Fri, 05 Mar 2021 10:48:36 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lI80R-00082B-5u; Fri, 05 Mar 2021 11:48:27 +0100
To: "Barbier, Renaud" <renaud.barbier@abaco.com>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <MN2PR16MB3135C4186907BA49E69CD38B91979@MN2PR16MB3135.namprd16.prod.outlook.com>
 <092dbc44-2081-ef3b-0fd7-25d1b9da72d3@pengutronix.de>
 <MN2PR16MB3135FD27767D80F4FB9FB44A91979@MN2PR16MB3135.namprd16.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c3eae1a0-2296-64f4-95ea-cb808f1f0aa2@pengutronix.de>
Date: Fri, 5 Mar 2021 11:48:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <MN2PR16MB3135FD27767D80F4FB9FB44A91979@MN2PR16MB3135.namprd16.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_104834_135961_0E0B96FF 
X-CRM114-Status: GOOD (  22.94  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Uart set up in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Renaud,

On 04.03.21 17:41, Barbier, Renaud wrote:
>>> Would it possible from the PBL to read the "baudrate" variable from the
>> environment?
>>
>> Normally, you would want to avoid doing anything, but the
>> bare minimum from PBL. Does the baudrate device parameter
>> work for you?
>>
> [Barbier, Renaud] 
> Just to give you a bit more context. In our platform ARM (all non-pbl) or PPC, we add a call to do a PBIT memory test before starting barebox. The uart is initialized just before that at a fixed baud rate of  9600 bauds. Now we have a requirement to support more than one baud rate configurable by the user. And our next ARM based board is going to have a PBL.
> 
> Are you saying that from the PBL, I can do something like baud=getenv("baudrate") to get the environment variable value. This would require to have /dev/env0 instantiated, would not it?

I am saying: don't do it from PBL at all if possible.

> Does not that require to have the environment init code (fs support and all) be compiled as part of the PBL (lwl-y +=....).
> My environment variables are in QSPI, so I would think I could parse the environment variable without the whole barebox support instead.
> If not possible then I think we can find some other way to retrieve the baud rate.

So you load pbl/bare init barebox into SRAM, run PBIT memory test on DRAM,
then extract/copy barebox proper to DRAM or how does it work?

Cheers,
Ahmad


> 
> Cheers.
> 
> 
>> Cheers,
>> Ahmad
>>
>>>
>>> Cheers,
>>> Renaud
>>>
>>>
>>> _______________________________________________
>>> barebox mailing list
>>> barebox@lists.infradead.org
>>>
>> https://nam11.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists.infra
>> dead.org%2Fmailman%2Flistinfo%2Fbarebox&amp;data=04%7C01%7Crenaud.b
>> arbier%40abaco.com%7C5feb6191d4d647f8afdb08d8df0d5b4c%7Ce6f2745189
>> 9d4d0db8fa88baafa551a7%7C0%7C0%7C637504595763337955%7CUnknown%
>> 7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiL
>> CJXVCI6Mn0%3D%7C1000&amp;sdata=U5XVs%2Bf0L4t6LX49D7IJZNexAa77Pkjy
>> kZv74%2FJ8klk%3D&amp;reserved=0
>>>
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       |
>> https://nam11.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pen
>> gutronix.de%2F&amp;data=04%7C01%7Crenaud.barbier%40abaco.com%7C5fe
>> b6191d4d647f8afdb08d8df0d5b4c%7Ce6f27451899d4d0db8fa88baafa551a7%7
>> C0%7C0%7C637504595763337955%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC
>> 4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&a
>> mp;sdata=H1Ifw3D43oCbwUMkyKECroRAm22bBXka2wbBMGFhM%2BE%3D&a
>> mp;reserved=0  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
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

