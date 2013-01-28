Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-da0-f43.google.com ([209.85.210.43])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tzkjg-0005el-1z
 for barebox@lists.infradead.org; Mon, 28 Jan 2013 09:10:41 +0000
Received: by mail-da0-f43.google.com with SMTP id u36so1160451dak.30
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2013 01:10:28 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAA4bVAFEMoEheftB=qJ7d1+yVOJDGMJG9+1xbGpPsQFTetWa_w@mail.gmail.com>
References: <1359219160-18500-1-git-send-email-antonynpavlov@gmail.com>
 <1359219160-18500-2-git-send-email-antonynpavlov@gmail.com>
 <20130127112330.GZ1906@pengutronix.de>
 <CAA4bVAFEMoEheftB=qJ7d1+yVOJDGMJG9+1xbGpPsQFTetWa_w@mail.gmail.com>
Date: Mon, 28 Jan 2013 13:10:28 +0400
Message-ID: <CAA4bVAFwniQDwp=7U81rsF0MjDLfQC0mN_6PygF+t9DL4-LAjw@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Fwd: [PATCH 1/4] MIPS: introduce ram0 regions register function
To: barebox <barebox@lists.infradead.org>

Sorry, I have used "Reply-To" instead of "Reply-to-All".

---------- Forwarded message ----------
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: 27 January 2013 19:52
Subject: Re: [PATCH 1/4] MIPS: introduce ram0 regions register function
To: Sascha Hauer <s.hauer@pengutronix.de>


On 27 January 2013 15:23, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Sat, Jan 26, 2013 at 08:52:37PM +0400, Antony Pavlov wrote:
>> On MIPS there are two segments in CPU address space that
>> can be used for untranslated memory access: KSEG0 and KSEG1.
>> KSEG0 is used for cached access and KSEG1 is used for
>> uncached one.
>>
>> The instroduced mips_add_ram0() function registers two
>> address regions for memory access: one in KSEG0 and
>> the other one in KSEG1.
>>
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---
>>  arch/mips/include/asm/memory.h |   12 ++++++++++++
>>  1 file changed, 12 insertions(+)
>>  create mode 100644 arch/mips/include/asm/memory.h
>>
>> diff --git a/arch/mips/include/asm/memory.h b/arch/mips/include/asm/memory.h
>> new file mode 100644
>> index 0000000..2aa28b7
>> --- /dev/null
>> +++ b/arch/mips/include/asm/memory.h
>> @@ -0,0 +1,12 @@
>> +#ifndef __ASM_MIPS_MEMORY_H
>> +#define __ASM_MIPS_MEMORY_H
>> +
>> +#include <memory.h>
>> +#include <asm/addrspace.h>
>> +
>> +static inline void mips_add_ram0(resource_size_t size)
>> +{
>> +     barebox_add_memory_bank("kseg0_ram0", KSEG0, size);
>> +     barebox_add_memory_bank("kseg1_ram0", KSEG1, size);
>> +}
>
> Is kseg0/1 a common name under MIPS, or in other words, do users know
> what they have here?

The kseg0 and kseg1 are well-known names under MIPS.
They are described in the official MIPS specification
(see chapter 4.3 Virtual Address Spaces of the document
 MIPS Architecture For Programmers Volume III:
 The MIPS32 and microMIPS32 Privileged Resource Architecture
 Revision 3.12, April 28, 2011).

> Why should I use the uncached RAM as a user? Is this for debugging or
> does it have apractical usecase?

Of cause kseg1 cached region is favourable for running program code
and during normal work there is no need for user to know about
uncached region;
on the other hand kseg1 is usable for debugging.

But just now MIPS barebox works in the kseg1 region.
Adding
  barebox_add_memory_bank("kseg1_ram0", KSEG1, size);
makes possible to know barebox link area by using iomem command.
E.g. here is the iomem command output on MIPS qemu-malta

barebox:/ iomem
0x00000000 - 0xffffffff (size 0x00000000) iomem
  0x1e000000 - 0x1e3fffff (size 0x00400000) cfi_flash0
  0x80000000 - 0x8fffffff (size 0x10000000) kseg0_ram0
  0xa0000000 - 0xafffffff (size 0x10000000) kseg1_ram0
    0xa03f9000 - 0xa03fffff (size 0x00007000) stack
    0xa0400000 - 0xa07fffff (size 0x00400000) malloc space
    0xa0800000 - 0xa0833cf0 (size 0x00033cf1) barebox
    0xa08359d0 - 0xa083c438 (size 0x00006a69) bss
  0xb00003f8 - 0xb00003ff (size 0x00000008) ns16550_serial0

We can switch to kseg0 cached region after adding cache support routines.
I have done this for mips-malta, but I have not yet done it for others
boards in the barebox git repository.

--
Best regards,
  Antony Pavlov


-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
