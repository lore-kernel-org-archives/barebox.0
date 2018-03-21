Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x244.google.com ([2607:f8b0:4001:c0b::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1eyWHt-00068t-BT
 for barebox@lists.infradead.org; Wed, 21 Mar 2018 05:27:51 +0000
Received: by mail-it0-x244.google.com with SMTP id k135-v6so5340270ite.2
 for <barebox@lists.infradead.org>; Tue, 20 Mar 2018 22:27:39 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180319085019.qbcgurw2aspsmxcr@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
 <20180316125354.23462-31-s.hauer@pengutronix.de>
 <CAHQ1cqGbkHN+Csi7-Bb=_iTea4zXK3-mmK8EK0x-UW9niHNCQg@mail.gmail.com>
 <20180319085019.qbcgurw2aspsmxcr@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 20 Mar 2018 22:27:37 -0700
Message-ID: <CAHQ1cqH+FNuwxYzV6YKv9LNi=DPt_DbK1K3WNzQkMs0eL89vag@mail.gmail.com>
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
Subject: Re: [PATCH 30/78] ARM: aarch64: Add relocation support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Mar 19, 2018 at 1:50 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Andrey,
>
> On Fri, Mar 16, 2018 at 02:51:19PM -0700, Andrey Smirnov wrote:
>> On Fri, Mar 16, 2018 at 5:53 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>> > This adds aarch64 support for relocating binaries linked with -pie.
>> >
>> > Support is integrated into the already exisiting
>> > relocate_to_current_adr() function which is now used for both arm32
>> > and aarch64.
>> >
>> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>
>>
>> Sascha:
>>
>> Two small suggestions w.r.t. this patch:
>>
>>  - I'd consider changing the code of relocate_to_current_adr() such
>> that AARCH64 specific codepaths are not taken on ARM32 (via IS_ENABLED
>> check or something similar)
>
> Why? Do you want to make the code more clear or do you fear that we
> apply fixups for a foreign architecture?
>

You'd be able to get the value of *_R_TYPE(type) once and then use
switch to structure code handling various types, which might be a bit
more readable. But that 50% personal preference, so feel free to keep
the code as is.

>>
>>  - I've always wanted to fix the original code to use Elf32_rel type
>> instead of magic hard-coded offsets, so depending on your
>> willingness/time-budget, maybe now would be a good time to do that as
>> well as use Elf64_rela for AARCH64?
>
> You mean using
>
>> struct elf32_rel {
>>       Elf32_Addr    r_offset;
>>       Elf32_Word    r_info;
>> } Elf32_Rel;
>
> and:
>
>> struct elf64_rela {
>>       Elf64_Addr r_offset;  /* Location at which to apply the action */
>>       Elf64_Xword r_info;   /* index and type of relocation */
>>       Elf64_Sxword r_addend;        /* Constant addend used to compute value */
>> } Elf64_Rela;
>
> ?

Yep, those are the two types.

>
> Yes, I can change that. I wonder though which type is behind R_ARM_ABS32
>

I think its still would be Elf32_Rel. From what I can tell both
R_ARM_ABS32 and R_ARM_RELATIVE calculate "*fixup = *fixup + offset"
using same pointer offsets it's just former also adds "r" that is
derived from "r_info". With enough #ifdefing it might even be possible
to convert that while() to a for() loop.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
