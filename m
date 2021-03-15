Delivery-date: Mon, 15 Mar 2021 16:47:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLpRg-0001Lc-V7
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 16:47:52 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLpRg-0001oj-2m
	for lore@pengutronix.de; Mon, 15 Mar 2021 16:47:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OxPd+NUKm0ucfhyjoCmi45U8vyUMtukgGBxGAR+JRLw=; b=iMzlcI+LPzMgdTGV5VTCYxzFi
	g+vkU8iw/u3IyDdBQEeE3XW7D6p5IQv3GdFBIsFBXULCi9uKemZ7+zebhh9M7K2AUf5GUxVCsPgrz
	GiOS8evHx2Eg6guX1zi1gd3qDB8EDZqgCcUVuIUukFXC4Px9RU3US6MbIQ/FnzqqW5Q2t9WHN8xVm
	mBnsHrUN3kHPCwT/8AqcmGZnRoYXvqX0ITbtO9YWegQLfbZaUcKg9nSzJLWee7PCbNw+53Pelpa2V
	rsZm3VXCXdgfeG5PRBp9wi4pNK8mxSsOv+s8ZtGmx2igFpW/36FucN4efaLHm8T6qnHcWzLp5TqC3
	v/7vVjOeQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLpQS-00GICd-SE; Mon, 15 Mar 2021 15:46:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLpQI-00GIBj-Bw
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 15:46:30 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lLpQH-0001i0-OJ; Mon, 15 Mar 2021 16:46:25 +0100
To: Antony Pavlov <antonynpavlov@gmail.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>,
 Michael Grzeschik <mgr@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20210314122804.4128-1-a.fatoum@pengutronix.de>
 <20210314122804.4128-15-a.fatoum@pengutronix.de>
 <20210315114353.c3bece8ebb5eae822e9349bd@gmail.com>
 <20210315114515.hcqboeb53otdums7@pengutronix.de>
 <20210315150834.2607507ef97f6a63d68494d4@gmail.com>
 <fbf9adbc-7ef5-61c1-60ac-91aa7ac38517@pengutronix.de>
 <20210315183737.22015972e2e058b32f21447c@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <14b14f6b-a8ae-1b8b-c06a-73d909a4a9f7@pengutronix.de>
Date: Mon, 15 Mar 2021 16:46:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210315183737.22015972e2e058b32f21447c@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_154628_841085_21248367 
X-CRM114-Status: GOOD (  17.92  )
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
Subject: Re: MIPS RELOCATABLE: [PATCH 14/20] RISC-V: erizo: migrate to PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 15.03.21 16:37, Antony Pavlov wrote:
> On Mon, 15 Mar 2021 13:40:10 +0100
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>> Without having dug into the MIPS code, the main point of CONFIG_RELOCATABLE
>> is that PBL can check for it to decide where to copy barebox proper to.
>>
>> This is very relevant if there's no TEXT_BASE that works for all boards
>> that you need to support with your multi-image barebox.
> 
> So CONFIG_RELOCATABLE can be very helpful.
> 
> At the moment MIPS barebox is always relocatable.
> Sometimes it's useful to run barebox from fixed TEXT_BASE (e.g. during gdb debug session),
> so this fixed TEXT_BASE behaviour can be introduced for CONFIG_RELOCATABLE=n case.

With the pbl break stuff, you could in theory already flip a config option
and have a gdb script that computes your load address from the address of
your breakpoint. That would be nice to have as a ready-to-use script.

I recall Oleksij and Michael did something in that regard.

Benefit is that the break is an actual machine code nop when inactive,
so binary size/layout shouldn't change, unlike with flipping CONFIG_RELOCATABLE.
For RISC-V, I see no good reason to allow CONFIG_RELOCATABLE=n right now.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

