Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x229.google.com ([2607:f8b0:400e:c02::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1Crj-0003XR-CR
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 09:57:16 +0000
Received: by mail-pd0-f169.google.com with SMTP id y10so6712876pdj.28
 for <barebox@lists.infradead.org>; Mon, 22 Jul 2013 02:56:51 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20130722071855.GC9434@pengutronix.de>
References: <20130715100958.GG19197@ns203013.ovh.net>
 <20130716062532.GV14452@pengutronix.de>
 <20130716193936.49949f12c31c8145965c1c74@gmail.com>
 <20130722071855.GC9434@pengutronix.de>
Date: Mon, 22 Jul 2013 13:56:50 +0400
Message-ID: <CAA4bVAHx3Z7pTsM882MN6h0-9B3irzm0G-KJ1d2mDCsv7B=VaQ@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/3 v2] pbl: add lz4 compression support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 22/07/2013, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Tue, Jul 16, 2013 at 07:39:36PM +0400, antonynpavlov@gmail.com wrote:
>> On Tue, 16 Jul 2013 08:25:32 +0200
>> Sascha Hauer <s.hauer@pengutronix.de> wrote:
>>
>> > On Mon, Jul 15, 2013 at 12:09:58PM +0200, Jean-Christophe
>> > PLAGNIOL-VILLARD wrote:
>> > > Hi,
>> > >
>> > > 	v2:
>> > > 	keep lzo as default
>> > >
>> > > 	The following patch serie add the lz4 support to the pbl
>> > >
>> > > Jean-Christophe PLAGNIOL-VILLARD (1):
>> > >       pbl: add lz4 support
>> > >
>> > > Kyungsik Lee (2):
>> > >       decompressor: Add LZ4 decompressor module
>> > >       lib: Add support for LZ4-compressed kernel
>> >
>> > Applied, thanks
>> >
>> > Sascha
>>
>> LZ4 decompressor work fine on MIPS but I have got a warning:
>>
>> ...
>> rm arch/mips/dts/qemu-malta.dtb.S arch/mips/dts/qemu-malta.dtb
>>    LD      pbl/built-in.o
>>    PBLCC   pbl/pbl-decomp.o
>>  In file included from pbl/decomp.c:14:
>>  /home/antony/barebox.git.rebased.isp/arch/mips/include/../../../lib/dec
>> ompress_unlz4.c:185: warning: no previous prototype for 'decompress_unl
>> z4'
>
> I fixed this. It should work without warning now.
>

I have just checked the 'next' branch. The warning has gone away!
Thanks, Sascha!

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
