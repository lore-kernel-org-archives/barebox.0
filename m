Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cgTtH-0006Su-1z
 for barebox@lists.infradead.org; Wed, 22 Feb 2017 10:11:21 +0000
Received: by mail-wm0-x241.google.com with SMTP id i186so1204019wmf.1
 for <barebox@lists.infradead.org>; Wed, 22 Feb 2017 02:10:58 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170222100350.anjucafhspmwsa2c@pengutronix.de>
References: <20170221144751.27760-1-yegorslists@googlemail.com>
 <0CEC428C-E1EE-48A7-85CF-6FC90A22F47C@jcrosoft.com>
 <CAGm1_ku+mmxKRgdEGzQrTi37+8nmnM5MX+Cn2VQBGfxd-bjqog@mail.gmail.com>
 <20170222100350.anjucafhspmwsa2c@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Wed, 22 Feb 2017 11:10:36 +0100
Message-ID: <CAGm1_ktrPpdx3_OGqHfdD2mwCaf9_d=V3y4xXJhX6NYpz5YkEA@mail.gmail.com>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Falco Hyfing <hyfinglists@gmail.com>, barebox <barebox@lists.infradead.org>

On Wed, Feb 22, 2017 at 11:03 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Wed, Feb 22, 2017 at 09:15:36AM +0100, Yegor Yefremov wrote:
>> On Wed, Feb 22, 2017 at 5:29 AM, Jean-Christophe PLAGNIOL-VILLARD
>> <plagnioj@jcrosoft.com> wrote:
>> >
>> >> On Feb 21, 2017, at 10:47 PM, yegorslists@googlemail.com wrote:
>> >>
>> >> From: Yegor Yefremov <yegorslists@googlemail.com>
>> >>
>> >> Add missing configuration options for various bcj filters. Without
>> >> these options the lib/xz/xz_dec_bcj.c file will be compiled, but all
>> >> filters will be disabled.
>> >>
>> >> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
>> >> ---
>> >> lib/Kconfig | 28 ++++++++++++++++++++++++++++
>> >> 1 file changed, 28 insertions(+)
>> >>
>> >> diff --git a/lib/Kconfig b/lib/Kconfig
>> >> index f9f25bdef..83dd8e0a4 100644
>> >> --- a/lib/Kconfig
>> >> +++ b/lib/Kconfig
>> >> @@ -22,6 +22,34 @@ config XZ_DECOMPRESS
>> >>       bool "include xz uncompression support"
>> >>       select UNCOMPRESS
>> >>
>> >> +if XZ_DECOMPRESS
>> >> +
>> >> +config XZ_DEC_X86
>> >> +        bool "x86 BCJ filter decoder"
>> >> +        default y
>> > this need to be ARCH dependant
>>
>> Why? In Linux kernel it is not arch dependent, because AFAIK it
>> describes only compression particularities. This way you can extract
>> sqaushfs images on your ARM machine, that were compressed on SPARK
>> etc.
>
> So xz uses the Sparc bcj filter even when compressing ARM binaries? That
> doesn't sound very mature to me.

This is just an xz command line option. So it is completely in the
user responsibility.

A passage from man page:

" A BCJ filter converts relative addresses in the machine code to
their absolute counterparts.  This doesn't change the size of the
data, but it increases redundancy, which can help LZMA2 to produce
0-15 %  smaller .xz file.  The BCJ filters are always reversible, so
using a BCJ filter for wrong type of data doesn't cause any data loss,
although it may make the compression ratio slightly worse."

> It is quite surprising to me that I have to enable XZ_DEC_X86 in barebox
> since this is the architecture the xz binary was most likely compressed
> on. Also it's surprising that XZ_DEC_X86 won't bring us any gain since
> the xz binary will most likely contain ARM instructions on a ARM build,
> except that without XZ_DEC_X86 enabled it will not work.
>
> Then in bcj_apply() we have:
>
> #ifdef XZ_DEC_X86
>         case BCJ_X86:
>                 filtered = bcj_x86(s, buf, size);
>                 break;
> #endif
>
> ...
>
>         default:
>                 /* Never reached but silence compiler warnings. */
>                 filtered = 0;
>
> This is simply not true when any of the ifdefs is not true.
>
> I think we should enable all the XZ_DEC_* options but without making them
> visible since if someone ever stumbles upon these options and changes them
> he will most likely do it wrong.

OK. I'll send v2.

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
