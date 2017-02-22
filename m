Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x244.google.com ([2a00:1450:400c:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cgS5z-0003SX-4z
 for barebox@lists.infradead.org; Wed, 22 Feb 2017 08:16:21 +0000
Received: by mail-wm0-x244.google.com with SMTP id i186so716300wmf.1
 for <barebox@lists.infradead.org>; Wed, 22 Feb 2017 00:15:58 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <0CEC428C-E1EE-48A7-85CF-6FC90A22F47C@jcrosoft.com>
References: <20170221144751.27760-1-yegorslists@googlemail.com>
 <0CEC428C-E1EE-48A7-85CF-6FC90A22F47C@jcrosoft.com>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Wed, 22 Feb 2017 09:15:36 +0100
Message-ID: <CAGm1_ku+mmxKRgdEGzQrTi37+8nmnM5MX+Cn2VQBGfxd-bjqog@mail.gmail.com>
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
Subject: Re: [PATCH] lib: xz: add support for bcj filters
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Falco Hyfing <hyfinglists@gmail.com>, barebox <barebox@lists.infradead.org>

On Wed, Feb 22, 2017 at 5:29 AM, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
>
>> On Feb 21, 2017, at 10:47 PM, yegorslists@googlemail.com wrote:
>>
>> From: Yegor Yefremov <yegorslists@googlemail.com>
>>
>> Add missing configuration options for various bcj filters. Without
>> these options the lib/xz/xz_dec_bcj.c file will be compiled, but all
>> filters will be disabled.
>>
>> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
>> ---
>> lib/Kconfig | 28 ++++++++++++++++++++++++++++
>> 1 file changed, 28 insertions(+)
>>
>> diff --git a/lib/Kconfig b/lib/Kconfig
>> index f9f25bdef..83dd8e0a4 100644
>> --- a/lib/Kconfig
>> +++ b/lib/Kconfig
>> @@ -22,6 +22,34 @@ config XZ_DECOMPRESS
>>       bool "include xz uncompression support"
>>       select UNCOMPRESS
>>
>> +if XZ_DECOMPRESS
>> +
>> +config XZ_DEC_X86
>> +        bool "x86 BCJ filter decoder"
>> +        default y
> this need to be ARCH dependant

Why? In Linux kernel it is not arch dependent, because AFAIK it
describes only compression particularities. This way you can extract
sqaushfs images on your ARM machine, that were compressed on SPARK
etc.

>> +
>> +config XZ_DEC_POWERPC
>> +        bool "PowerPC BCJ filter decoder"
>> +        default y
>> +
> ditto
>> +config XZ_DEC_IA64
>> +        bool "IA-64 BCJ filter decoder"
>> +        default y
> ditto
>> +config XZ_DEC_ARM
>> +        bool "ARM BCJ filter decoder"
>> +        default y
>> +
> ditto
>> +config XZ_DEC_ARMTHUMB
>> +        bool "ARM-Thumb BCJ filter decoder"
>> +        default y
>> +
> ditto
>> +config XZ_DEC_SPARC
>> +        bool "SPARC BCJ filter decoder"
>> +        default y
>> +
>> +endif
>> +
>> config REED_SOLOMON
>>       bool
>>
>> --
>> 2.11.0
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
