Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gw3M4-0003EP-Pt
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 11:14:30 +0000
References: <171ac237-ef8f-502b-1433-83382d050ba1@pengutronix.de>
 <20190219075239.12448-1-a.fatoum@pengutronix.de>
 <20190219100453.GB31091@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c1c195df-c0c7-b747-a210-28caabe1da35@pengutronix.de>
Date: Tue, 19 Feb 2019 12:14:24 +0100
MIME-Version: 1.0
In-Reply-To: <20190219100453.GB31091@ravnborg.org>
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
Subject: Re: [PATCH] fixup! clk: at91: update to PMC bindings
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org



On 19/2/19 11:04, Sam Ravnborg wrote:
> Hi Ahmad.
> 
> On Tue, Feb 19, 2019 at 08:52:39AM +0100, Ahmad Fatoum wrote:
>> As the sama5d3 based microchip-ksz9477-evb board still uses the old
>> bindings, the dt-compat.c code is ported as well. This can be removed
>> when all in-kernel at91 boards have been ported to the new bindings.
> 
> Thanks.
> I see we need this for now.
> I hope someone we get around and add support for new clock bindings to sama5d3 soon.
> 
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/clk/at91/Makefile    |   2 +-
>>  drivers/clk/at91/dt-compat.c | 961 +++++++++++++++++++++++++++++++++++
>>  2 files changed, 962 insertions(+), 1 deletion(-)
>>  create mode 100644 drivers/clk/at91/dt-compat.c
>>
>> diff --git a/drivers/clk/at91/Makefile b/drivers/clk/at91/Makefile
>> index ec41c15fa5f4..f8935129101c 100644
>> --- a/drivers/clk/at91/Makefile
>> +++ b/drivers/clk/at91/Makefile
>> @@ -2,7 +2,7 @@
>>  # Makefile for at91 specific clk
>>  #
>>  
>> -obj-y += pmc.o sckc.o
>> +obj-y += pmc.o sckc.o dt-compat.o
> To avoid increasing the image size further we could introduce a SOC_SAMA5D3
> and let this .o file depends on this.
> ?
> 
> I can fix it while applying if you agree.

Agreed. That's a good idea.

> 
> 	Sam
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
