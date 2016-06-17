Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webbox1416.server-home.net ([77.236.96.61])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bDpMp-0005KN-Tz
 for barebox@lists.infradead.org; Fri, 17 Jun 2016 08:43:09 +0000
References: <57627B3E.5020100@systec-electronic.com>
 <20160616132240.GG9677@pengutronix.de>
From: =?UTF-8?Q?Daniel_Kr=c3=bcger?= <daniel.krueger@systec-electronic.com>
Message-ID: <5763B801.9020504@systec-electronic.com>
Date: Fri, 17 Jun 2016 10:42:41 +0200
MIME-Version: 1.0
In-Reply-To: <20160616132240.GG9677@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: ARM memory layout
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

thanks for the help. The patches work for my non-relocatable barebox. =

Malloc space is now below barebox.

Best regards,
   Daniel

Am 16.06.2016 um 15:22 schrieb Sascha Hauer:
> Hi Daniel,
>
> On Thu, Jun 16, 2016 at 12:11:10PM +0200, Daniel Kr=FCger wrote:
>> Hello,
>>
>> during the porting of barebox to a new i.MX35 board I stumbled over some
>> crazy things with the memory layout. The comments in file
>> arch/arm/cpu/entry.c seem to be wrong or at least misleading.
>>
>> We configured barebox as non-relocatable image. So I think the configured
>> TEXT_BASE is very important.
>>
>> I use the following configuration with 128 MB RAM:
>> CONFIG_TEXT_BASE=3D0x87000000
>> CONFIG_STACK_SIZE=3D0x100000
>> CONFIG_MALLOC_SIZE=3D0xd00000
>>
>> The stack is configured very large in this project, because of other rea=
son.
>>
>> I get the following memory layout:
>>      0x87ffffff top of RAM
>>       |           free-space (see arm_mem_stack() in
>>       |                       arch/arm/include/asm/barebox-arm.h)
>>      0x87ff0000 start of 64 kB free-space (vector table)
>>      0x87feffff top of stack
>>       |
>>      0x87ef0000 start of 1 MB reserved stack space
>>      0x87eeffff
>>       |         16 kB early translation table
>>      0x87eec000 early TTB (translation table base)
>>      0x87eebfff malloc end
>>       |          13 MB malloc space
>>      0x871ec000 malloc start
>>       |         some small free space
>>       |         barebox binary
>>      0x87000000 TEXT_BASE
>>
>> This does not comply to the comment in the above mentioned source file.
>> There the malloc space and the vector table are missing.
>>
>> I would expect some check in the source code, when TEXT_BASE is too high=
 or
>> barebox binary is too large, so they collide with malloc space or stack.=
 By
>> reverse engineering the detailed memory layout above, I discovered that =
in
>> another project the TEXT_BASE falls within the malloc space.
>>
>> How does is run on other ARM boards? Are they all running with
>> CONFIG_RELOCATABLE=3DY?
>
> Most of them do, yes.
>
> It seems !CONFIG_RELOCATABLE became broken with:
>
> | commit 65071bd0910ef109c86b9645c570a6ceed7de534
> | Author: Markus Pargmann <mpa@pengutronix.de>
> | Date:   Tue Dec 8 10:39:29 2015 +0100
> |
> |   arm: Clarify memory layout calculation
>
> I just sent out a series from which the first patch should fix your
> issue. The malloc space should be below the barebox image, not above it.
> BTW you shouldn't have to specify the malloc size, barebox can pick a
> sensible default for you if you specify it to 0.
>
> Sascha
>

-- =


SYS TEC electronic GmbH
Am Windrad 2
08468 Heinsdorfergrund

Telefon : +49 (0) 3765 38600-0
Fax     : +49 (0) 3765 38600-4100
Email   : daniel.krueger@systec-electronic.com
Website : http://www.systec-electronic.com

Managing Directors  :
   Dipl.-Phys. Siegmar Schmidt, Dipl. Ing. (FH) Armin von Collrepp
Commercial registry : Amtsgericht Chemnitz, HRB 28082
USt.-Id Nr.         : DE150534010


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
