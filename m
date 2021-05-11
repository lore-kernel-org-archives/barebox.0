Delivery-date: Tue, 11 May 2021 15:08:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgS7d-0005Wg-2d
	for lore@lore.pengutronix.de; Tue, 11 May 2021 15:08:25 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgS7c-0001rT-3d
	for lore@pengutronix.de; Tue, 11 May 2021 15:08:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RHUqjfTBeFQ0FGtbm25MQVGCx41jZ9Jd9Hsio2Ll23k=; b=clHoM84tWGTEBG2/TLR97hUzv
	/cfdsFBh0cX/JZGKSCJLvmNhyE53G42WNTNs11ETUCFzj/j6dfNXdAVz4ArJpdLTCmMk+O1sFnDDW
	4MbtvGz0P+ebapWMA4EwlHiP9V1A9VR/C3FUXx7JSiAWuxXpo7CLusdO50vjdH0WMEHIJeOY5rZJc
	91sje4mFOSkZW86WzZ+4RvmKf6RIRzAaoB6cA2/t3aOmFnBddvhQRSCDeELrf7VV1Ckp0GuSwT8B5
	Ws8znFiilKE4QAuqESY0Gs4/h45Yv9G63UX+LqWuqUQAqx6R2xJOQneSyVg6Wr9v/slTTIuQbNYFR
	0QQWTjvdA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgS6g-00HZnj-5P; Tue, 11 May 2021 13:07:26 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgQXC-00H7qT-Bq
 for barebox@desiato.infradead.org; Tue, 11 May 2021 11:26:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=J0eNc9s0y24MShxByTrlqQvh3RiILLuh6yWFGN+d/h8=; b=ujXL/9Ps+DahBumSV0e3TrJfSa
 Si3Rh8wp0Vz22JXTtkSnN+roL3TRYModd+paox/ZmFGTB89P0PpavfMHLjnMN/x2hGNOqg0gfgQ6w
 wD/ZPV8C9gkU1uYpNZ/Ay/3rPmKs8QgG0GNb4Ij3ymTvmNHWCkEsYjFS+O2khTOsd4KOLbuZvm6qc
 8HaNVOUZetk0FtFZDVs98ueCUm36teHqmYi4TsNCSCyC5KdkN2roH2CsX3+l506dtEJhCbKwxEXeg
 cH46gviqToVt8W9WBGvsh71h1Dq6+2r4/9mhTWBTIdmtTbdEMTCbOqPuw6j5up0nzM8eZg6ietfov
 B8yrrnpA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgQX9-009WDW-Dg
 for barebox@lists.infradead.org; Tue, 11 May 2021 11:26:40 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lgQX5-0002XU-Ch; Tue, 11 May 2021 13:26:35 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
References: <20210511064144.4930-1-a.fatoum@pengutronix.de>
 <20210511064144.4930-2-a.fatoum@pengutronix.de>
 <20210511141158.17cebe7b03b888a1a8bea331@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <f682baae-575b-55d1-9c7f-29919614c766@pengutronix.de>
Date: Tue, 11 May 2021 13:26:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210511141158.17cebe7b03b888a1a8bea331@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_042639_485920_77C25967 
X-CRM114-Status: GOOD (  18.94  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] RISC-V: extend multi-image to support both S- and
 M-Mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Antony,

On 11.05.21 13:11, Antony Pavlov wrote:
> On Tue, 11 May 2021 08:41:44 +0200
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
>> We can't currently mix S-Mode and M-Mode images in the same build
>> and there's no straight-forward way to determine which mode we are in.
>>
>> Move the decision on which mode barebox is targeted at out of Kconfig
>> and into the PBL. PBL code can call either barebox_riscv_supervisor_entry
>> or barebox_riscv_machine_entry to signal to barebox proper which mode
>> it's running in.
> 
> It looks like this comment is slightly outdated.
> There is neither barebox_riscv_supervisor_entry nor barebox_riscv_machine_entry
> inside the patch.

barebox_riscv_machine_entry is defined and used once for Erizo.
barebox_riscv_supervisor_entry is defined and used twice, once for HiFive
and another for the generic image (used for virt).

>> Currently the only user of this information is the
>> RISC-V timer clocksource driver.
> 
> Please add necessary mode check to the sbi_init() from arch/riscv/lib/sbi.c too.

Yes, I should. Will send fixup later.

Cheers,
Ahmad

> 
>> Any new code that does IS_ENABLED(CONFIG_RISCV_SBI) or
>> IS_ENABLED(CONFIG_RISCV_M_MODE) should also be adapted to use riscv_mode().
>>
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

