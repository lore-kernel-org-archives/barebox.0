Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x22f.google.com ([2607:f8b0:4002:c05::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8Do0-0004MK-79
 for barebox@lists.infradead.org; Wed, 01 Jun 2016 21:36:00 +0000
Received: by mail-yw0-x22f.google.com with SMTP id x189so31725738ywe.3
 for <barebox@lists.infradead.org>; Wed, 01 Jun 2016 14:35:39 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1464727385.15779.125.camel@rtred1test09.kymeta.local>
References: <1464714580-31488-1-git-send-email-andrew.smirnov@gmail.com>
 <1464714580-31488-9-git-send-email-andrew.smirnov@gmail.com>
 <1464727385.15779.125.camel@rtred1test09.kymeta.local>
Date: Wed, 1 Jun 2016 14:35:38 -0700
Message-ID: <CAHQ1cqFLEXoD0k6zFC5AgyrXQu4TAJX8SZdgmd4YPe4g8U5GvQ@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 08/21] e1000: Consolidate register offset fixups
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, May 31, 2016 at 1:42 PM, Trent Piepho <tpiepho@kymetacorp.com> wrote:
> On Tue, 2016-05-31 at 10:09 -0700, Andrey Smirnov wrote:
>> Consolidate all code taking care on CSR offset differences for i210
>> chips into a single place in the driver and integrate that
>> funcionality into E1000_{READ,WRITE}_REG macros. This way we can get
>> rid of all those
>>
>>     if (hw->mac_type == e1000_igb) {
>>        ....
>>     } else {
>>        ....
>>     }
>>
>> snippets sprinkled all across the driver code.
>>
>> +
>> +static inline uint32_t e1000_true_offset(struct e1000_hw *hw, uint32_t reg)
>> +{
>
> Any reason this needs to be inlined?  gcc space vs size optimization
> choice usually does the right thing.

No reason, just a leftover of copy and paste from header file (I
initially put those functions there). Will fix in v2.

>
>> +     if (hw->mac_type == e1000_igb) {
>> +             unsigned int i;
>> +
>> +             const struct e1000_fixup_table fixup_table[] = {
>> +                     { E1000_EEWR,     E1000_I210_EEWR     },
>> +                     { E1000_PHY_CTRL, E1000_I210_PHY_CTRL },
>> +                     { E1000_EEMNGCTL, E1000_I210_EEMNGCTL },
>> +             };
>> +
>> +             for (i = 0; i < ARRAY_SIZE(fixup_table); i++) {
>> +                     if (fixup_table[i].orig == reg)
>> +                             return fixup_table[i].fixed;
>> +             }
>
> Looping through the table on each reg access seems a bit costly.  What
> if the registers with different addresses had a flag bit in their
> definition?  Then you could check the bit and only translate those that
> need translating.  It would also document in the register definition
> that the register got translated.
>
> #define I210_ALT   0x100000  /* register has alternate addr on I210 */
> #define E1000_EEWR (0x0102C | I210_ALT)/* EEPROM Write Register - RW */
>
> if (reg & I210_ALT) {
>   reg &= ~I210_ALT;
>   if (hw->mac_type == e1000_igb) {
>      /* look up alternate. note a case statement can be faster... */
>      case (reg) {
>        case E1000_EEWR: reg = E1000_I210_EEWR; break;
>        default: ;
>   }
> }
>

Sure, sounds like a good idea, will do in v2.

Thanks,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
