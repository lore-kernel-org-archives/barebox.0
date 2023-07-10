Delivery-date: Mon, 10 Jul 2023 14:53:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIqOQ-005lAu-CE
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 14:53:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIqON-0006NB-Jm
	for lore@pengutronix.de; Mon, 10 Jul 2023 14:53:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cFL4j54Da+kLRKzboJoJnnkCkcPyEelP0vJw5orwq0k=; b=STlCHXrMm6Ap3r1KtGu+T7vi6u
	I7pRQkTascQzKiv3AlAyxr+mSm1XWzDHV7A0rzp1ENr8JPX05p0Bl9UtpEhzkRMH68DA2MFWwevyI
	JsoanWUJzbXhWreb++ER5AwZuqQvpp8JxDuLVSPjHUoDSpj+AfIIvcHyIordHxTNBhG6hFiLJTeEb
	W/p5Ee+eDzNxPCYR0T0IvOgGMkEQKQNwUCRK8xMt+pGNHqqK9/WC32rPZlS9xB3N7JOnZ+9ouJyc4
	2JdCrldQx1ltcZkwd1DFa2+reo0OsCkprv3xQaXTuFCIRx5EK4EJ8zIERSkIByjNfxGjQ/5+TM2BQ
	CVxaqtSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIqND-00Bejb-0T;
	Mon, 10 Jul 2023 12:52:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIqN9-00BeiR-0L
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 12:52:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qIqN7-0006Gc-60; Mon, 10 Jul 2023 14:52:09 +0200
Message-ID: <ec5edc94-c576-907f-85d2-13c49411b123@pengutronix.de>
Date: Mon, 10 Jul 2023 14:52:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230710063653.660040-1-m.felsch@pengutronix.de>
 <20230710063653.660040-3-m.felsch@pengutronix.de>
 <1054cc32-fedd-1c5e-7e74-80cce77c6e72@pengutronix.de>
 <20230710104931.aykuig7y2ctykky5@pengutronix.de>
 <8839814f-de7c-a70b-8573-55dd2c38c766@pengutronix.de>
 <20230710110110.6r2y2v4kxvjgsaeu@pengutronix.de>
 <e96d425b-3f38-1cd7-fc3f-be4b12d09a75@pengutronix.de>
 <20230710124318.rfhfoxojpdijhj2g@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230710124318.rfhfoxojpdijhj2g@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_055211_161014_70809711 
X-CRM114-Status: GOOD (  22.89  )
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
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/7] net: phy: sync phy_{write,read,modify}_mmd_indirect
 with linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 10.07.23 14:43, Marco Felsch wrote:
> On 23-07-10, Ahmad Fatoum wrote:
>> On 10.07.23 13:01, Marco Felsch wrote:
>>> On 23-07-10, Ahmad Fatoum wrote:
>>>> Hello Marco,
>>>>
>>>> On 10.07.23 12:49, Marco Felsch wrote:
>>>>> On 23-07-10, Ahmad Fatoum wrote:
>>>>>> On 10.07.23 08:36, Marco Felsch wrote:
>>>>>>> Sync the barebox phy_{write,read,modify}_mmd_indirect API with the Linux
>>>>>>> phy_{write,read,modify}_mmd API to make it easier and less error prone
>>>>>>> to port phy drivers. This also fixes the r8169 driver since this driver
>>>>>>> did not adapt the parameters while porting from Linux.
>>>>>>>
>>>>>>> The sync also aligns the function parameter `prtad` as well as the
>>>>>>> function documentation.
>>>>>>
>>>>>> This breaks out of tree board code in a subtle and annoying manner.
>>>>>
>>>>> Do we really need to care about out all-of-tree drivers/boards? If so,
>>>>> we need to ensure to not break any public function.
>>>>
>>>> Out-of-tree drivers not too much probably, but out-of-tree boards
>>>> are unfortunately the norm. Breaking the build can be justified,
>>>> but silent breaking by swapping arguments is not nice.
>>>
>>> And how do you ensure that a public API is only used by drivers? Don't
>>> get me wrong I got your point but if you update an out-of-tree board to
>>> a newer barebox version it may happen that something break. Therefore
>>> manufacturers should upstream there code to reduce the maintenance
>>> effort to a minimum :) I know we don't live in an ideal world :/
>>
>> Some breakage is ultimately unavoidable, but we can try to not needlessly
>> introduce silent breakage. Here we have a nice way out: We import the
>> Linux function with the Linux name and use that for upstream code. The old
>> function is marked deprecated and removed later on. Do you see an issue
>> with that?
> 
> The only problem I see is, that the Linux API does support C45 and C22
> and we don't. As said, we can implement it and make the C45 support a
> stub. From user perspective I would assume that the new API is working
> for both classes (like Linux). Therefore I kept the _indirect suffix
> since this makes it clear from API pov.

Error message on C45 sounds good to me. Swapping parameters without
function rename doesn't.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



