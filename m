Delivery-date: Mon, 20 Sep 2021 11:15:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSFOf-0007dh-0J
	for lore@lore.pengutronix.de; Mon, 20 Sep 2021 11:15:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSFOe-0008VF-1u
	for lore@pengutronix.de; Mon, 20 Sep 2021 11:15:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CgBNB4XR2A65OfYvnBfH+Mi7Ysf77CpPyak53nwLiSk=; b=LEKwodlU575hBMWhW/X7s1EPOm
	1vB0y87M/mn67SYLuRuEmB/O4JH+R+rzqYFfQto84BBnUkrJlA7L7a6slDU/ebY++0sxOnFDdzQe7
	LOjHANYkvhRIdbEJqjTXC/GSoV1CZlPsrA22ALvOvWj4pz/Kt4fNh2DYBpQy0fzxPKAZ19RfIgdYv
	CuaC+7RKGmpjPeM3irRd7l7N0TOSdkvUZbEvLL1p+LuPHJJubSlH/223XiEhDQYdco00AU6YPST7/
	FiE2CpdGDvjT4QE9mGHjCfxJVPpitq2TNem1oP7M+9Sgn4GzLFnpMEGrsSoDrPe5C1j5CTy2G9J6w
	GjBCrOGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSFNI-0013xC-Tm; Mon, 20 Sep 2021 09:14:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSFNE-0013wq-G6
 for barebox@lists.infradead.org; Mon, 20 Sep 2021 09:14:06 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mSFNC-0008Jb-SJ; Mon, 20 Sep 2021 11:14:02 +0200
To: Peter Rosin <peda@axentia.se>,
 Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: Barebox List <barebox@lists.infradead.org>
References: <781e128b-14f3-3577-e433-f6a13fff8159@axentia.se>
 <d4eb8281-121e-91a3-7300-83336ba0f285@axentia.se>
 <e14fb2eb0ea344ac272b823c51ee3a4049a51c33.camel@pengutronix.de>
 <02b09328-e300-f36e-4cc4-daa7afb47ad5@axentia.se>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <aa1fb3a8-6d97-1c3f-ec7e-82489c8ceb0a@pengutronix.de>
Date: Mon, 20 Sep 2021 11:14:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <02b09328-e300-f36e-4cc4-daa7afb47ad5@axentia.se>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_021404_590092_2BF4202C 
X-CRM114-Status: GOOD (  24.59  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] Revert "ARM: mmu: use client domain permissions to
 support ARMv7 eXecute Never"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Peter,

On 19.09.21 09:50, Peter Rosin wrote:
> On 2021-09-19 09:06, Rouven Czerwinski wrote:
>> Hi Peter,
>>
>> while this may break for your board, it fundamentally introduces the
>> possibility to speculate out of the RAM area on speculation happy
> 
> I'm aware of that. For me, speculation is not an issue since *any*
> rogue code running on the embedded device in question is a major fail.

We have seen Cortex-A7 CPUs speculatively executing I/O memory. That's
why we mar everything eXecute-Never except for known memory banks and
expect board code to mark any further regions that are safe to execute
manually. 

> Also, from the cover letter:
> 
> "I'm going to follow up with patches. I very much realize that
> these patches are most likely not acceptable as-is, but I do
> include them since they are probably the best description of
> where the problems are."
> 
>> processors. Are you calling into SAMA5D3 ROM code somewhere? If so an
> 
> *I* am not calling anything. Maybe the board code for sama5d3xek is,
> but I have no idea as it's not "my" code. How can I figure out if it
> does?

If you don't revert this patch. Do you get any output at all?
If not, enable DEBUG_LL and see how far you get before hanging.

Cheers,
Ahad

> 
> Cheers,
> Peter
> 
>> exception can be added similar to the handling for the HAB code
>> (arch/arm/cpu/mmu_early.c):
>>
>> 	if (IS_ENABLED(CONFIG_HABV4) && IS_ENABLED(CONFIG_ARCH_IMX6))
>> 		map_region(0x0, SZ_1M, PMD_SECT_DEF_CACHED);
>>
>> which allows calls into the NXP boot ROM to retrieve the HAB status.
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

