Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVVxx-0001KG-QU
 for barebox@lists.infradead.org; Fri, 15 Nov 2019 07:24:27 +0000
References: <20191115071359.16798-1-ahmad@a3f.at>
 <CAGm1_ksFJWGJ=cGZXK+ZhmYQ+yKKLoOT19jjdXRLLBUWx0Qn-w@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <cd5db170-1d2b-d7a4-4fbc-c9ecc05a4b3e@pengutronix.de>
Date: Fri, 15 Nov 2019 08:24:24 +0100
MIME-Version: 1.0
In-Reply-To: <CAGm1_ksFJWGJ=cGZXK+ZhmYQ+yKKLoOT19jjdXRLLBUWx0Qn-w@mail.gmail.com>
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
Subject: Re: [PATCH] MIPS: ath79: art: fix typo in SPDX-License-Identifier
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de

Hello Yegor,

On 11/15/19 8:20 AM, Yegor Yefremov wrote:
> Hi Ahmad,
> 
> On Fri, Nov 15, 2019 at 8:14 AM Ahmad Fatoum <ahmad@a3f.at> wrote:
>>
>> There's no GPL-2. SPDX identifier. Change it to GPL-2.0 instead.
> 
> GPL-2.0 is deprecated use GPL-2.0-only instead.
> 
> https://spdx.org/licenses/GPL-2.0.html

Ah, right.

Oleksij, could you change it to the correct variant
(GPL-2.0-only, GPL-2.0-or-later) and resend it?

Thanks

> 
> Regard,
> Yegor
> 
>>
>> Cc: Oleksij Rempel <linux@rempel-privat.de>
>> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
>> ---
>>  arch/mips/mach-ath79/art.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/mips/mach-ath79/art.c b/arch/mips/mach-ath79/art.c
>> index 2a2099e9f561..4a8a3e1fe6b1 100644
>> --- a/arch/mips/mach-ath79/art.c
>> +++ b/arch/mips/mach-ath79/art.c
>> @@ -1,4 +1,4 @@
>> -// SPDX-License-Identifier: GPL-2.
>> +// SPDX-License-Identifier: GPL-2.0
>>  /*
>>   * Copyright (c) 2018 Oleksij Rempel <linux@rempel-privat.de>
>>   */
>> --
>> 2.20.1
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
