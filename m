Delivery-date: Mon, 15 Mar 2021 13:43:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLmZS-0000rK-Mf
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 13:43:42 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLmZR-0001QT-Mc
	for lore@pengutronix.de; Mon, 15 Mar 2021 13:43:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8IB3FptDGXbZUf+cuqv1gi0DjqtzHTQY2iFd4Jyyou0=; b=i+00dDc0TUuVhQBGhUVhzIDWo
	a3PXwbxhJ2Ca1M/u/UrmDtSEk+35+BqkFNYOvURsaCr+iOBztB9dsKIWQYVZ3OYVpRJQh70VgYPTM
	Kqd8UsuXRXWjWao77avN8PCRL4rI3TlYdl4DRn3bHfCnlzw3M2IaGKKHEO9qJtnLQjILYU8VHjZtG
	D+3J2IRqseRROpBB1ISKwqoFkqfNI0ZMutOkKuMakA35bV8XNPmKIcCi0gTA8x4om8zMcHW63STPb
	ZswgoKipvd8NYPS5bwibfjlPeWPT8gTgTmZ3F16otVSAqn6sgFTZoSAJfFGcQYWg2Bapm7eJ5LXGG
	4Iw1eLMrQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLmYE-00FsOU-Qw; Mon, 15 Mar 2021 12:42:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLmW4-00FsJg-3L
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 12:42:16 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lLmW3-00015L-Gs; Mon, 15 Mar 2021 13:40:11 +0100
To: Antony Pavlov <antonynpavlov@gmail.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20210314122804.4128-1-a.fatoum@pengutronix.de>
 <20210314122804.4128-15-a.fatoum@pengutronix.de>
 <20210315114353.c3bece8ebb5eae822e9349bd@gmail.com>
 <20210315114515.hcqboeb53otdums7@pengutronix.de>
 <20210315150834.2607507ef97f6a63d68494d4@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <fbf9adbc-7ef5-61c1-60ac-91aa7ac38517@pengutronix.de>
Date: Mon, 15 Mar 2021 13:40:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210315150834.2607507ef97f6a63d68494d4@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_124214_156488_C5D4B190 
X-CRM114-Status: GOOD (  17.64  )
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

Hello,

On 15.03.21 13:08, Antony Pavlov wrote:
> On Mon, 15 Mar 2021 12:45:15 +0100
> Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> 
>> On Mon, Mar 15, 2021 at 11:43:53AM +0300, Antony Pavlov wrote:
>>> On Sun, 14 Mar 2021 13:27:58 +0100
>>> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>>
>>> Hi!
>>>
>>>> diff --git a/common/Kconfig b/common/Kconfig
>>>> index 36207274f07f..37204fb40a44 100644
>>>> --- a/common/Kconfig
>>>> +++ b/common/Kconfig
>>>> @@ -44,7 +44,7 @@ config BLOCK_WRITE
>>>>  
>>>>  config USE_COMPRESSED_DTB
>>>>  	bool
>>>> -	depends on ARM
>>>> +	depends on ARM || RISCV
>>>>  	select UNCOMPRESS
>>>>  	select LZO_DECOMPRESS
>>>>  
>>>> @@ -358,7 +358,7 @@ config KALLSYMS
>>>>  	  This is useful to print a nice backtrace when an exception occurs.
>>>>  
>>>>  config RELOCATABLE
>>>> -	depends on PPC || ARM
>>>> +	depends on PPC || ARM || RISCV
>>>>  	bool "generate relocatable barebox binary"
>>>>  	help
>>>>  	  A non relocatable barebox binary will run at it's compiled in
>>>
>>> Hmmm. AFAIR MIPS barebox is relocatable. Why CONFIG_RELOCATABLE does not depend on MIPS?
>>>
>> good point, I'll need to test it
> 
> At the first glance the only point to enable CONFIG_RELOCATABLE is to enable FS_PSTORE.

Without having dug into the MIPS code, the main point of CONFIG_RELOCATABLE
is that PBL can check for it to decide where to copy barebox proper to.

This is very relevant if there's no TEXT_BASE that works for all boards
that you need to support with your multi-image barebox.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

