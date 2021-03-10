Delivery-date: Wed, 10 Mar 2021 09:18:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJu38-00017B-Tk
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 09:18:34 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJu38-0006XC-2p
	for lore@pengutronix.de; Wed, 10 Mar 2021 09:18:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EqMDyfvuGMTMh+gFr5nxYqLegkCkG3b+5Wef+g695OA=; b=Fsw3Obc8PeJVo128UjW0iITtJ
	30bXviPIbFy0YV/mvTF5Y9aRoYEHCLNUwgya9DKlzPnJhGkXKmgGdIaqVRD/FR+DdYZFGX68Qg0WB
	dz5Lde0St1oZgHJVPWlwJ7lge7Wa8iZBAmTC7SklHS1JqOr1G+nJT3taYiYFtD3Aa3J0n9kwcojjM
	9YP90IL5GiqUVtX4P16gZOHnbn+x6iepyQ2aoFse82+9mi1fvixGRpIptU/JF9X70F8zijDxdWWpg
	jgfwKV9t3rcQOdnF2VeChyi0tWXBIPDyleE0J9vWT3bKxed+vYWZE0g6Q71gCuU6Dq2ztM3GjQDlg
	DxZ1X0XFw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJu1s-006I4k-TC; Wed, 10 Mar 2021 08:17:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJu1m-006I4L-CF
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 08:17:12 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lJu1j-0006TX-HL; Wed, 10 Mar 2021 09:17:07 +0100
To: Peter Mamonov <pmamonov@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@kalray.eu>,
 Stafford Horne <shorne@gmail.com>
References: <20210301110106.3764-1-a.fatoum@pengutronix.de>
 <20210301110106.3764-11-a.fatoum@pengutronix.de> <20210302221920.GC1407@chr>
 <20210304083811.GO5549@pengutronix.de> <20210307120056.GD1407@chr>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <60f45ac4-7cd1-3358-7edc-476633047537@pengutronix.de>
Date: Wed, 10 Mar 2021 09:17:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210307120056.GD1407@chr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_081710_528449_CBAFF881 
X-CRM114-Status: GOOD (  21.52  )
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
Subject: Re: [PATCH v2 10/11] mips: Implement setjmp/longjmp/initjmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Peter,

On 07.03.21 13:00, Peter Mamonov wrote:
> On Thu, Mar 04, 2021 at 09:38:11AM +0100, Sascha Hauer wrote:
>> Hi Peter,
>>
>> On Wed, Mar 03, 2021 at 01:19:26AM +0300, Peter Mamonov wrote:
>>> Hi, Sascha and Ahmad,
>>>
>>> On Mon, Mar 01, 2021 at 12:01:05PM +0100, Ahmad Fatoum wrote:
>>>> From: Sascha Hauer <s.hauer@pengutronix.de>
>>>>
>>>> The header has been taken from glibc, the implementation itself is based
>>>> on the newlib implementation.
>>>>
>>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>>> ---
>>>>  arch/mips/Kconfig              |  1 +
>>>>  arch/mips/include/asm/setjmp.h | 32 ++++++++++++++++++++++
>>>>  arch/mips/lib/Makefile         |  1 +
>>>>  arch/mips/lib/setjmp.S         | 50 ++++++++++++++++++++++++++++++++++
>>>>  4 files changed, 84 insertions(+)
>>>>  create mode 100644 arch/mips/include/asm/setjmp.h
>>>>  create mode 100644 arch/mips/lib/setjmp.S
>>>>
>>>> ...
>>>>
>>>> diff --git a/arch/mips/lib/setjmp.S b/arch/mips/lib/setjmp.S
>>>> new file mode 100644
>>>> index 000000000000..b09a7c55293c
>>>> --- /dev/null
>>>> +++ b/arch/mips/lib/setjmp.S
>>>> @@ -0,0 +1,50 @@
>>>> +/* SPDX-License-Identifier: GPL-2.0-only */
>>>> +
>>>> +#include <asm/regdef.h>
>>>> +#include <asm/asm.h>
>>>> +#include <linux/linkage.h>
>>>> +
>>>> +/* int setjmp (jmp_buf);  */
>>>> +LEAF(setjmp)
>>>> +	sw	ra, (0 * 4)(a0)
>>>> +	sw	sp, (1 * 4)(a0)
>>>> +	sw	s0, (2 * 4)(a0)
>>>> +	sw	s1, (3 * 4)(a0)
>>>> +	sw	s2, (4 * 4)(a0)
>>>> +	sw	s3, (5 * 4)(a0)
>>>> +	sw	s4, (6 * 4)(a0)
>>>> +	sw	s5, (7 * 4)(a0)
>>>> +	sw	s6, (8 * 4)(a0)
>>>> +	sw	s7, (9 * 4)(a0)
>>>> +	sw	fp, (10 * 4)(a0)
>>>> +	move	v0, zero
>>>> +	j	ra
>>>> +END(setjmp)
>>>> +
>>>> +/* volatile void longjmp (jmp_buf, int);  */
>>>> +LEAF(longjmp)
>>>> +	lw	ra, (0 * 4)(a0)
>>>> +	lw	sp, (1 * 4)(a0)
>>>> +	lw	s0, (2 * 4)(a0)
>>>> +	lw	s1, (3 * 4)(a0)
>>>> +	lw	s2, (4 * 4)(a0)
>>>> +	lw	s3, (5 * 4)(a0)
>>>> +	lw	s4, (6 * 4)(a0)
>>>> +	lw	s5, (7 * 4)(a0)
>>>> +	lw	s6, (8 * 4)(a0)
>>>> +	lw	s7, (9 * 4)(a0)
>>>> +	lw	fp, (10 * 4)(a0)
>>>> +	bne	a1, zero, 1f
>>>> +	li	a1, 1
>>>> +1:
>>>> +	move	v0, a1
>>>> +	j	ra
>>>> +END(longjmp)
>>>> +
>>>> +/* int initjmp(jmp_buf jmp, void __noreturn (*func)(void), void *stack_top); */
>>>> +LEAF(initjmp)
>>>> +	sw	a1, (0 * 4)(a0)
>>>> +	sw	a2, (1 * 4)(a0)
>>>> +	move	v0, zero
>>>> +	j	ra
>>>> +END(initjmp)
>>>
>>> I would suggest using `REG_S/REG_L r, (n * SZREG)(a0)` here for the sake of 
>>> MIPS64 targets. See arch/mips/include/asm/asm.h:272.
>>
>> I agree with you, but barebox doesn't support MIPS64 currently and I
>> wasn't confident enough to add such things when I can't test them.
> 
> Well, what can possibly go wrong? =) Actually you've used this approach for RV: 
> http://lists.infradead.org/pipermail/barebox/2021-March/035173.html.
> 
>> Maybe we can add a
>>
>> #if SZREG != 4
>> #error setjmp/longjmp currently only supports 32bit targets
>> #endif
> 
> Definitely it's better than random fails after context switch in runtime.

I changed the select to happen only from the 32-bit symbols for RISC-V and MIPS.

> 
> Regards,
> Peter
> 
>> Sascha
>>> -- > Pengutronix e.K.                           |                             
> |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

