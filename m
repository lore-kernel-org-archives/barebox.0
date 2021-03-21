Delivery-date: Sun, 21 Mar 2021 16:21:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNztj-00027s-Fd
	for lore@lore.pengutronix.de; Sun, 21 Mar 2021 16:21:47 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNztf-00030G-FZ
	for lore@pengutronix.de; Sun, 21 Mar 2021 16:21:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ff2mxTzUwwJNEQ0xGB6xt5G9+Le1t37QsjbBwAQdsyI=; b=O2P/rDtL1/ULyD9aVALxR2BPO
	0WkQTqudJOWy9NvDKH7EmWB+uaVFutzeX34u/yiaKHaOVgAjk7HjARUaz+g0rAWfz8zIL4sJiy4BN
	1B2aFpIv7QpEpLfZkJnBBWlYSFru30JZafQ1HPWpNUpidoeH1vDwZR/9yBzWcBc7ReKHJ6r/ypvnU
	6J056yNGR2Gb3OfB7Dq4Jpyt3eYp1/XVsmDRxbqgTGRo4Tq0BdVwLn6FF/k4GRqAo+wrW09v9oZik
	WOhbl5wxyLU7/QgUqGDkpaBB1ZEn+UTEl4VmQfBSiP1WhEt1UvNAl6ky6D545Awruzv5ka3oa0c0V
	46qTHpVZQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNzsF-00A4xi-Bi; Sun, 21 Mar 2021 15:20:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNzn6-00A48g-Go
 for barebox@lists.infradead.org; Sun, 21 Mar 2021 15:15:36 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lNzmt-00018M-K9; Sun, 21 Mar 2021 16:14:43 +0100
To: Antony Pavlov <antonynpavlov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
References: <20210316080505.19361-1-a.fatoum@pengutronix.de>
 <20210316080505.19361-15-a.fatoum@pengutronix.de>
 <20210316171221.d9f38875021a468efdf41dc5@gmail.com>
 <33c77bd7-e4c3-e258-b47b-84bdce1c00ee@pengutronix.de>
 <20210319183705.5164077ba6b130220b8f7cb0@gmail.com>
 <1346e4a9-604a-5e94-3add-226b7ec4619c@pengutronix.de>
 <20210320085559.05794b95fc0fb6f7a4c2aeb2@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <42df32b9-4615-d5b7-1eb9-882e6362cf6b@pengutronix.de>
Date: Sun, 21 Mar 2021 16:14:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210320085559.05794b95fc0fb6f7a4c2aeb2@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_151533_560803_A04C975B 
X-CRM114-Status: GOOD (  16.37  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 14/20] RISC-V: erizo: migrate to PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 20.03.21 06:55, Antony Pavlov wrote:
> On Fri, 19 Mar 2021 19:28:10 +0100
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
> Hi!
> 
>> Hello Antony,
>>
>> On 19.03.21 16:37, Antony Pavlov wrote:
>>> The first bad commit is 90cde3b9ff46 ("startup: Execute init scripts in alphabetical order").
>>> I have reproduced it with these compilers:
>>>
>>>   * riscv32-unknown-elf-gcc (GCC) 7.2.0
>>>   * riscv64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0
>>>   * riscv64-linux-gnu-gcc-9 (Debian 9.3.0-18) 9.3.0
>>
>> Thanks for investigating. !CONFIG_GLOB && !CONFIG_SHELL_NONE configurations
>> were universally broken. I just sent out a series to fix this.
> 
> I propose to investigate another glob-related issues:
> 
> 1. there is CONFIG_FAKE_GLOB in the C code but no FAKE_GLOB definition in Kconfig.
> 
> 2. we have at least two fake glob() functions:
> 
>    * lib/glob.c contains one glob() definition under '#ifdef CONFIG_FAKE_GLOB'
>    * common/hush.c contains static fake_glob()

Ye, those could be deleted now, I guess.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

