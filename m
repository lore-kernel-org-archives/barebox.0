Delivery-date: Mon, 19 Apr 2021 09:59:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYOoM-0006D6-TV
	for lore@lore.pengutronix.de; Mon, 19 Apr 2021 09:59:14 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYOoL-0003lI-Tf
	for lore@pengutronix.de; Mon, 19 Apr 2021 09:59:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oVyr3ZEdJZZDhSXoRso2F/s1rwh8RLid1+enAvptqZs=; b=VufBWE0ITGidpxSKDa76WeM44
	tKRnV1n8f/jJ1z00sXVGhp9rYt35M9nnm3E7T/i/5vGwhz6PXLOjMuTkQxILLCNsSywad0yRSvULO
	i65aDrMDcxhbDUqzkShCUO6ZHbUAehwFbG1upg5LrAGOnDT8U8gUGGTWlv9UEo2/jVQiqAsiCHlc2
	vIuCRfPZ+VfrNPSQ5/8JzfiriZknI5q00TZ83zA2TkJ8kfyQiGi2RB5vqfv5kvF42xSlJIg9AJOZy
	oDtWuLKpWIYUjNC4Puf2FccafwoSqJjFOLq/PgfNebDaOvN+qGcC7P9xWuJlJwImA+iEshwz7kTks
	fqgGk5k1g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYOnQ-009Opn-6h; Mon, 19 Apr 2021 07:58:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYOnM-009Opc-MC
 for barebox@desiato.infradead.org; Mon, 19 Apr 2021 07:58:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:References:Cc:To:
 Subject:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=Kwr7FOo7xLSvDd867cqgy4/Vcart27Z/192DYBwuKT4=; b=QiaQs9Eaf7nWATtdekcFeGjTcP
 A/qJu608I15ULVHTV9YKsgUT3uar5omAZtB+w6Q0Eh+NgxokjA1ta8RzAPVIvJYbX8SHYs35Sm3CQ
 8BqXX491L/Txmh9l9SsRF3m1x/+Qm/Sx8FSlwc4odop6NWZLrMDNuVE3PixRoCvhISztv4fFoLzSd
 AhuyCTxz5VYCUgjkL6zldNcTxs19eXI/EU6rn2v3GGVUDmjG383obSCkz2fKGt+CFsRQuPjwbqhtF
 YGHQgfp16Zaduw9sWzCI0jnup5HStCDX3dPQAiNgDrt2sb7X5kRQUxG3w/JEsoYBuPtymk8npClEW
 kumUz3xw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYOnI-00BA7c-KJ
 for barebox@lists.infradead.org; Mon, 19 Apr 2021 07:58:10 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lYOnH-0003f7-5O; Mon, 19 Apr 2021 09:58:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Peter Mamonov <pmamonov@gmail.com>
References: <20200707135608.31901-1-pmamonov@gmail.com>
 <c50f7807-9bfa-bc70-d771-f798422760e1@pengutronix.de>
 <20200708210231.GA24761@chr>
Message-ID: <8868950a-5efc-e46d-2d8d-56c37b15d28b@pengutronix.de>
Date: Mon, 19 Apr 2021 09:58:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20200708210231.GA24761@chr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210419_005808_708595_93883A24 
X-CRM114-Status: GOOD (  28.08  )
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
Cc: barebox@lists.infradead.org
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
Subject: Re: RFC: types conflicts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Peter,

On 7/8/20 11:02 PM, Peter Mamonov wrote:
>>> I tried to build MicroPython using barebox toolchain and found a number of
>>> conflicts between barebox and compiler headers. Below you will find the patch
>>> which demostrates some of them. In this particular example the problem arises
>>> due to simultaneous inclusion of some compiler headers along with barebox
>>> version of `strings.h`, which in turn includes barebox analogs of those headers
>>> from `include/linux`. I belive there should be a segregation between headers in
>>> `include` and in `include/linux`, i.e. headers from `include/` should not
>>> reference <linux/*.h> headers. Yet I understand this is somewhat problematic.
>>> What do you think?
>>
>> barebox code shouldn't make use of any compiler headers at all, except for <stdarg.h>.
>> The only exception are arch/sandbox/os and scripts/, which reference libc headers.
>> Everything else should comes out of barebox' include/ directory.
>>
>> If you have foreign code that you want to port into barebox, either modify it
>> to use barebox headers or change the include order when building it to use _local_
>> versions of the headers it requires.
> 
> Ok, I've got your point. Yet I want to point out that addition of *unmodified*
> code in a form of git submodule would greatly simplify further support of this 
> port. Unfortunately modifying include order will not help in this case, since, 
> for example, both `barebox/include/linux/stddef.h` (included from 
> `barebox/include/string.h` via <linux/string.h>, etc.) and 
> `/usr/lib/gcc-cross/<ARCH>-linux-gnu/X/include/stdbool.h` define `true`/`false` 
> macros. On the other hand `/usr/include/linux/stddef.h` and 
> `/usr/lib/gcc/<ARCH>-linux-gnu/X/include/stdbool.h` coexist in GNU/Linux system 
> nicely, since no header from `/usr/include/` does reference <linux/*.h> 
> headers.

Even if our headers didn't clash, our symbols might. You want to use the
same declaration/prototype everywhere a symbol is used.

If you have external code that uses, say, <string.h>. You write your own string.h,
and ensure it's first in include path for all the code in the HAL (or w/e) directory
you have. In that file you could have your wrappers and then #include_next <stdio.h>
if needed.

If you have global symbols clashing in incompatible ways, you could perhaps
postprocess the micropython object code with objcopy to give all symbols a
micropython_ prefix..?

The proper abstraction is probably to have a module, but that seems only supported
on ARM.

>>> diff --git a/commands/types_conflict.c b/commands/types_conflict.c
>>> new file mode 100644
>>> index 0000000000..70fee8d6f4
>>> --- /dev/null
>>> +++ b/commands/types_conflict.c
>>> @@ -0,0 +1,12 @@
>>> +#include <stdbool.h>
>>> +#include <stdint.h>
>>> +#include <stddef.h>
>>> +
>>> +#include <string.h>
>>
>> barebox (except sandbox) is meant to be compiled with freestanding C implementations
>> that aren't required to provide a <string.h>. So no barebox code should depend on
>> compiler-provided <string.h>.
> 
> Actually `string.h` comes from barebox's `include/` dir, while `std*.h` come 
> from compiler's include dir. 
> 
> 
> PS: By the way, do you think Barebox will benefit from importing MicroPython 
> (https://micropython.org/) and exposing some of Barebox APIs to it?

We have setjmp/longjmp on all architectures now, so it should make porting MicroPython
easier. I probably wouldn't use it, but I guess it could have some educational value
for people interested to go from MicroPython + Microcontroller to an
application processor..?

It'd be cool to have for sure ;)

Cheers,
Ahmad

> Regards,
> Peter

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

