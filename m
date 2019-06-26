Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m15-114.126.com ([220.181.15.114])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hg4Ob-0003Fk-IQ
 for barebox@lists.infradead.org; Wed, 26 Jun 2019 09:39:19 +0000
References: <3bd6cd70.90d9.16b65a8086a.Coremail.zzs213@126.com>
 <20190618074606.iq3i6gb5yazs5bfq@pengutronix.de>
 <af35c2a1-420e-c2a4-0856-c6b667890a5e@126.com>
 <20190626072046.g23bh6kjpvgt2yhx@pengutronix.de>
From: =?UTF-8?B?5byg5b+g5bGx?= <zzs213@126.com>
Message-ID: <1e801d79-ea67-38d2-b38c-dc5a997b723d@126.com>
Date: Wed, 26 Jun 2019 17:39:09 +0800
MIME-Version: 1.0
In-Reply-To: <20190626072046.g23bh6kjpvgt2yhx@pengutronix.de>
Content-Language: en-US
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: bugfix: _barebox_image_size wrong if enable
To: barebox@lists.infradead.org

>>>
>>> AFAIR this only happened for linker variables that point to absolute
>>> addresses. Differences between addresses also worked with the older
>>> compilers, and I think this is what your patch does:
>>
>> No. my patch just for new toolchain. with old toolchain it has no effect,
>> Because all of the size is zero.
>>
>> By using the newer toolchain:
>> 	arm-poky-eabi-gcc (GCC) 8.2.0
>> 	GNU ld (GNU Binutils) 2.31.1.20180818
>>
>> In barebox config file:
>>         CONFIG_TEXT_BASE=0x23e00000
>>         CONFIG_RELOCATABLE=y
> 
> With CONFIG_RELOCATABLE enabled TEXT_BASE should be 0x0 and this should
> be enforced by Kconfig dependencies. Which barebox version are you on
> and which SoC are you compiling for?

I'm using v2016.10.0 and my custom board based on friendlyarm-tiny2
-- 
Best Regards,
zzs


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
