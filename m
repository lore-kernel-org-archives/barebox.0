Delivery-date: Wed, 14 Apr 2021 13:22:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWdau-0001yG-EN
	for lore@lore.pengutronix.de; Wed, 14 Apr 2021 13:22:04 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWdat-0000kA-Ho
	for lore@pengutronix.de; Wed, 14 Apr 2021 13:22:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y/Ff4Hiymx93L3jHSPlj0IwzhmGP/JrokKauvVw5eRQ=; b=IluoqQkisiS8jxH2v/cI5dbbl
	v4DY53dBZ+t7SnQrs4x01j+7/W4taINUUcTrnwe5P/L1O6uLt8WsdXe2eelPL5Ufs7xRwLo3M0rTM
	JniIARPLtzrWUr6ltliqdDJ7es3U+bUW7+/7fT49Eh18WXy9NgL7FyEfchjkI0hB4oV/izsg86lEM
	AmXR3F6KO7R70moKev3JoISRT1GdPICMum6UF/Nu26/nsUnQoxZ2gQhBVyLirwCcOQhiVXN5bhnTK
	5JzFgXekSmyp7XoG6zjOXxiaFDd7W+UrCLoDhM/z4EQ9HfWiX9rFoHSDRyvlSVLcTrNC5aiEzj/K1
	vndnOJLmQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWdZm-00COAC-FW; Wed, 14 Apr 2021 11:20:54 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWdZg-00CO9x-UA
 for barebox@desiato.infradead.org; Wed, 14 Apr 2021 11:20:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=41xZrqjSJobD3L5s2M5a8LxyvgPNW3xbAGFriKDrqIc=; b=oTgncc/1DHudo1apClxXarwAJd
 OIY70JTZizEP1P3FNwS56qgfgHeyvZdGm8VGbnzBGfiKABmrBuHGGrqiWeEdE41nMMiB5UFskpHH3
 1LS8EiBZYNp58dDIlXKf9d2eMlz/V2qjyLNgiCO5ZNY+76Wtu41XzQRpP8aE8Jflo2WuIgsNrRYg5
 jJcEPWPJq2RsFWAYmvm9ZVJvskvUcr0j3vimPyPaCOUe6moKpK5zQk80/aoKxkuTARoX8+dmbU33v
 Go6PMAIeHtUVmh2pvfjKhhBXVMhhUHcERyV4bVCd4F3wB0+cy3qVnvZCrdaDGHg3PGB2tW67QA3GV
 E7nv/DjA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWdZe-007hrn-93
 for barebox@lists.infradead.org; Wed, 14 Apr 2021 11:20:47 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lWdZc-0000Pz-Gz; Wed, 14 Apr 2021 13:20:44 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>, Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20210414085422.ea70e3d7a89787a1ceda4b2c@gmail.com>
 <20210414095427.GS19819@pengutronix.de>
 <20210414140736.bf2d10eed1149d407434575a@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <5b740bc2-c0a2-2592-557b-f5da2540025f@pengutronix.de>
Date: Wed, 14 Apr 2021 13:20:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210414140736.bf2d10eed1149d407434575a@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_042046_350948_BE612704 
X-CRM114-Status: GOOD (  17.03  )
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
Subject: Re: RISC-V: erizo: large gap between bss and stack regions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 14.04.21 13:07, Antony Pavlov wrote:
> On Wed, 14 Apr 2021 11:54:27 +0200
> Sascha Hauer <sha@pengutronix.de> wrote:
> 
>> On Wed, Apr 14, 2021 at 08:54:22AM +0300, Antony Pavlov wrote:
>>> Hi Ahmad!
>>>
>>> Here is the iomem command output on erizo:
>>>
>>> barebox:/ iomem
>>> 0x00000000 - 0xffffffff (size 0x00000000) iomem
>>>   0x80000000 - 0x807fffff (size 0x00800000) ram0
>>>     0x804ffd00 - 0x805ffcff (size 0x00100000) malloc space
>>>     0x805ffd00 - 0x805fffe6 (size 0x000002e7) board data
>>>     0x80600000 - 0x80636b1f (size 0x00036b20) barebox
>>>     0x80636b20 - 0x8063ec9b (size 0x0000817c) barebox data
>>>     0x8063ec9c - 0x80643147 (size 0x000044ac) bss
>>>     0x807e0000 - 0x807fffff (size 0x00020000) stack
>>>   0x90000000 - 0x9000001f (size 0x00000020) 90000000.uart@90000000.of
>>>   0x91000000 - 0x91000003 (size 0x00000004) 91000000.gpio@91000000.of
>>>   0x91000004 - 0x91000007 (size 0x00000004) 91000000.gpio@91000000.of
>>>
>>> I see large unused region between bss and stack regions (>1600 Kbytes).
>>
>> That's normal. The compressed barebox knows the size of the uncompressed
>> barebox, but it doesn't know the size of the bss segment above it. For
>> that reason we have a very pessimistic estimate of:
>>
>> #define MAX_BSS_SIZE SZ_1M
>>
>> The barebox binary itself is then aligned to the previous 1MiB
>> boundary, so barebox usually starts at 2MiB below the end of SDRAM.
>> That's a bit wasteful for boards with very little memory like the erizo,
>> but that's how things are at the moment.
> 
> Can we make it configurable via Kconfig?

Or even better: Could we easily add to the piggy data the size of bss
it contains?

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

