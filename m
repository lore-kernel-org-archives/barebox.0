Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gt6nK-0000q4-Ig
 for barebox@lists.infradead.org; Mon, 11 Feb 2019 08:18:28 +0000
References: <20190208055348.28848-1-o.rempel@pengutronix.de>
 <20190211080509.cyf52jfhnnmoopzx@pengutronix.de>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <f2c8d896-6279-178c-9172-d0189b957d49@pengutronix.de>
Date: Mon, 11 Feb 2019 09:18:22 +0100
MIME-Version: 1.0
In-Reply-To: <20190211080509.cyf52jfhnnmoopzx@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1] MIPS: ath79: art: fix SPDX-License-Identifier
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org



On 11.02.19 09:05, Sascha Hauer wrote:
> On Fri, Feb 08, 2019 at 06:53:48AM +0100, Oleksij Rempel wrote:
>> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
>> ---
>>   arch/mips/mach-ath79/art.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/mips/mach-ath79/art.c b/arch/mips/mach-ath79/art.c
>> index 984d087363..efc02d611d 100644
>> --- a/arch/mips/mach-ath79/art.c
>> +++ b/arch/mips/mach-ath79/art.c
>> @@ -1,4 +1,4 @@
>> -// SPDX-License-Identifier: GPL-2.
>> +// SPDX-License-Identifier: GPL-2.0-or-later
> 
> If you say "fix" then an explanation why the previous version was wrong
> would be good.

You right,

there is no official format for "GPL-2." it should be "GPL-2.0"/"GPL-2.0-only" or
"GPL-2.0+"/"GPL-2.0-or-later". Since, i'm only author of this file and by default I prefer 
"GPL-2.0-or-later", the fix is to set this SPDX-License-Identifier.

Kind regards,
Oleksij Rempel

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
