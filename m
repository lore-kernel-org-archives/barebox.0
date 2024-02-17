Delivery-date: Sat, 17 Feb 2024 11:04:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbHYP-009gK1-0T
	for lore@lore.pengutronix.de;
	Sat, 17 Feb 2024 11:04:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbHYO-0005NB-EP
	for lore@pengutronix.de; Sat, 17 Feb 2024 11:04:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ojquq6lernQpxAPbdWNHaNGkrMAq7kWnCqVIOjEeT5M=; b=VJq2fiK351zTP8mS2kBIN0+AMI
	tL4dGocLa+tevjg4t36Um72GTjhLfySr//K/7PxgyoXghvpM8X/XzBycLbi51sU3q75zArYVhKcD6
	63hCVor2esRltB+KAm1PXCmUQ4HYNtk07oL0NbBgAH877lMBQJQlzsdMLdeqsq262gQJt06EITnj2
	gpqXgNdZgITp+2VuS/smPx/NlymqpUCOdBNYmlRbjJUiO64S4+MLrb9s+4LIqdM0T6eaSZZY0nGP0
	SAg+e7xIn3KXgcwaP1kRNq7CeCcrdBMTL7ouGJo89ixr7drYrfGJ+n782W/HNOYuaTG/e+8gISVKr
	DEjUsQZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbHY4-00000005HgM-385Q;
	Sat, 17 Feb 2024 10:03:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbGPa-00000004zgi-2R7s
	for barebox@lists.infradead.org;
	Sat, 17 Feb 2024 08:51:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rbGPX-0003W0-92; Sat, 17 Feb 2024 09:51:03 +0100
Message-ID: <90de314f-b7a7-4b49-8c72-ec45aa3d38e2@pengutronix.de>
Date: Sat, 17 Feb 2024 09:51:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Dan Shelton <dan.f.shelton@gmail.com>, barebox@lists.infradead.org
References: <CAAvCNcCZhS8mkvdgcJ2L-eiur+OxgWEXRLnadO_HFyHfSi7WFA@mail.gmail.com>
 <a154ae13-86e1-4c2b-9c38-3774fde6a6c8@pengutronix.de>
 <20240205125900.c4b182f57b6efe0152beee24@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240205125900.c4b182f57b6efe0152beee24@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_005106_664920_B5B57189 
X-CRM114-Status: GOOD (  24.64  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: NFSv4 boot support?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Antony,

On 05.02.24 10:59, Antony Pavlov wrote:
> On Wed, 31 Jan 2024 22:37:50 +0100
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
> Hi All!
> 
>> Hello Dan,
>>
>> On 31.01.24 22:03, Dan Shelton wrote:
>>> Hello!
>>>
>>> Does barebox support booting from a NFSv4 filesystem, e.g. boot from
>>> NFSv4 filesystem into a Linux NFSv4 netroot (diskless machine)?
>>
>> The barebox network stack only does UDP/IP. There have been attempts to
>> bring a TCP stack into barebox, but none have so far succeeded to
>> make it mainline. This is a hard requirement before we can consider
>> supporting NFSv4. I hope that lwIP could fill this gap in the future,
>> but no one is actively continuing this work as far as I am aware[1].
> 
> I have started integration on picotcp into barebox in 2015, see
>   https://lore.barebox.org/barebox/1436991230-14251-10-git-send-email-antonynpavlov@gmail.com/T/
> 
> At the moment I have WIP barebox-v2023.11 with integrated picotcp 2.1:
> 
>   https://github.com/frantony/barebox/tree/20231127.picotcp

Cool. Looking at Oleksij's repo, it was based on your work. How well does
picotcp work for you? What open issues remain with the patch stack? Is the
barebox integration actively used in projects?

Is https://github.com/tass-belgium/picotcp the official repository? This hasn't
seen development activity in 5 years. lwIP on the other hand still sees active
development.

Regarding the license, inclusion of BSD-licensed code is ok. You can check out
the LICENSES/ subdirectory for the licenses covering barebox.

Cheers,
Ahmad




>>> We need NFSv4, because it does not need rpcbind, and combines
>>> filesystem, lockd and other stuff all in one TCP port (2049). Site
>>> policy also does not allow NFSv2/NFSv3, but allows NFSv4.
>>
>> Please note that this only concerns barebox and that kernel nfsroot is
>> unaffected. You can load kernel and device tree over TFTP and supply a
>> suitable command line argument to the kernel to use a NFS root.
>>
>> The standard net boot target does just that:
>> https://elixir.bootlin.com/barebox/v2024.01.0/source/defaultenv/defaultenv-2-base/boot/net
>>
>> It specifies TCP, but hardcodes v3 currently. I guess we could drop the v3 and let
>> the kernel decide on its own what version it will use? If that doesn't work, you can
>> override the file locally in your environment, e.g. via CONFIG_DEFAULT_ENVIRONMENT
>> pointing at a directory that contains a boot/net file with the appropriate
>> changes (or just call your boot target something else like boot/nfsv4).
>>
>> Hope this helps.
>>
>> [1]: Some attempts I am aware of:
>>      https://github.com/a3f/barebox/tree/lwip
>>      https://github.com/olerem/barebox/tree/picotcp-2019.06.29
>>      https://github.com/jmaselbas/barebox/commit/4a987bfdc2ad50c13126dd6290d2477c3fc0c87d
>>
>> Cheers,
>> Ahmad
>>
>>>
>>> Dan
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
>>
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



