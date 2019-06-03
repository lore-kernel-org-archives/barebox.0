Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXfI2-0000CC-C4
 for barebox@lists.infradead.org; Mon, 03 Jun 2019 05:13:48 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=a3f-osx.local)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <a.fatoum@pengutronix.de>) id 1hXfI0-0003lM-UY
 for barebox@lists.infradead.org; Mon, 03 Jun 2019 07:13:44 +0200
References: <20190602073101.21352-1-antonynpavlov@gmail.com>
 <20190602073101.21352-3-antonynpavlov@gmail.com>
 <037537a6-f2b3-7042-3459-9b27105011b4@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <939461e4-d47a-039b-3938-fafc4059826b@pengutronix.de>
Date: Mon, 3 Jun 2019 07:13:44 +0200
MIME-Version: 1.0
In-Reply-To: <037537a6-f2b3-7042-3459-9b27105011b4@pengutronix.de>
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
Subject: Re: [RFC 2/4] serial: add litex UART driver
To: barebox@lists.infradead.org



On 3/6/19 07:10, Ahmad Fatoum wrote:
> On 2/6/19 09:30, Antony Pavlov wrote:
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---
>>  drivers/serial/Makefile       |  1 +
>>  drivers/serial/serial_litex.c | 99 +++++++++++++++++++++++++++++++++++
>>  2 files changed, 100 insertions(+)
>>
>> diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
>> index 4174cc1ffb..fa86aa8c05 100644
>> --- a/drivers/serial/Makefile
>> +++ b/drivers/serial/Makefile

>> +
>> +#include <mach/debug_ll.h>
> 
> left-over header?

Ah never mind, it's used for the register definitions.

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
