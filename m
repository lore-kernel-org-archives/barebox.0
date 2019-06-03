Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXfU3-0004Te-5s
 for barebox@lists.infradead.org; Mon, 03 Jun 2019 05:26:12 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=a3f-osx.local)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <a.fatoum@pengutronix.de>) id 1hXfU1-0004ql-Kn
 for barebox@lists.infradead.org; Mon, 03 Jun 2019 07:26:09 +0200
References: <20190531090224.21707-1-a.fatoum@pengutronix.de>
 <20190531144310.GA10956@ravnborg.org>
 <0b7a3afb-7d49-4cf4-9086-4adb5ec317f6@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <3745f1b5-d321-912a-7bfc-ccc0d44ead17@pengutronix.de>
Date: Mon, 3 Jun 2019 07:26:08 +0200
MIME-Version: 1.0
In-Reply-To: <0b7a3afb-7d49-4cf4-9086-4adb5ec317f6@pengutronix.de>
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
Subject: Re: [PATCH] ARM: panic with a message when relocation type is unknown
To: barebox@lists.infradead.org



On 3/6/19 07:21, Ahmad Fatoum wrote:
> 
> 
> On 31/5/19 16:43, Sam Ravnborg wrote:
>> Hi Ahmad.
>>
>> On Fri, May 31, 2019 at 11:02:23AM +0200, Ahmad Fatoum wrote:
>>> Currently such failures result in a
>>>
>>> 	>00000000 00000000
>>>
>>> 	### ERROR ### Please RESET the board ###
>>>
>>> With this patch this now becomes
>>>
>>> 	>00000000 00000000
>>> 	Unknown relocation type
>>> 	### ERROR ### Please RESET the board ###
>>>
>>> which improves user experience a little bit.
>>>
>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>> ---
>>>  arch/arm/cpu/common.c | 4 ++--
>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
>>> index 821cafbf26c2..3668c5977ca9 100644
>>> --- a/arch/arm/cpu/common.c
>>> +++ b/arch/arm/cpu/common.c
>>> @@ -78,7 +78,7 @@ void relocate_to_current_adr(void)
>>>  			putc_ll(' ');
>>>  			puthex_ll(rel->r_addend);
>>>  			putc_ll('\n');
>>> -			panic("");
>>> +			panic("Unknown relocation type");
>>>  		}
>>>  
>>>  		dstart += sizeof(*rel);
>>> @@ -108,7 +108,7 @@ void relocate_to_current_adr(void)
>>>  			putc_ll(' ');
>>>  			puthex_ll(rel->r_offset);
>>>  			putc_ll('\n');
>>> -			panic("");
>>> +			panic("Unknown relocation type");
>>
>> If you added just a little bit more context then grepping the source
>> for the error message would only result in one hit.
>>
>> Like:
>> "Unknown relocation type (addend)"
>> "Unknown relocation type (offset)"
> 
> Good idea. Will do in v2.

Oh, looking at the full source, it's not really needed. The first panic
is guarded by a #if defined(CONFIG_CPU_64) and the other by  
#elif defined(CONFIG_CPU_32).

> 
>>
>> Or something like that.
>>
>> 	Sam
>>
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
