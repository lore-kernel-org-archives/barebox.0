Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hB4bT-0002w2-D6
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 21:36:28 +0000
References: <20190401093106.4595-1-a.fatoum@pengutronix.de>
 <20190401093106.4595-11-a.fatoum@pengutronix.de>
 <20190401204842.GE2534@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <690de169-cf46-8710-162b-7edf5c86a59a@pengutronix.de>
Date: Mon, 1 Apr 2019 23:36:25 +0200
MIME-Version: 1.0
In-Reply-To: <20190401204842.GE2534@ravnborg.org>
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
Subject: Re: [PATCH v2 10/10] clk: at91: fix warning about missing const-safety
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

Hello Sam,

On 1/4/19 22:48, Sam Ravnborg wrote:
> Hi Ahmad.
> 
> On Mon, Apr 01, 2019 at 11:31:06AM +0200, Ahmad Fatoum wrote:
>> compiling clk-main.c results in:
>>
>> warning: passing argument 1 of 'memcpy' discards 'const' qualifier from
>> pointer target type [-Wdiscarded-qualifiers]
>>   memcpy(clkmain->clk.parent_names, parent_names, parents_array_size);
>>            ~~~~~~~~~~~~^~~~~~~~~~~~~
>>
>> Avoid this by replacing the xzalloc+memcpy pair with xmemdup.
>> Zero-initialization of the buffer isn't necessary, because
>> memcpy spans the whole buffer.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> It looks like clk-generated.c would suffer from the same
> if you managed to build it.
> Could you maybe verify and fix this too?

Indeed. I've sent a patch as reply to this thread.

Cheers
Ahmad

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
