Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hBcbg-0001Tm-QU
 for barebox@lists.infradead.org; Wed, 03 Apr 2019 09:54:58 +0000
References: <20190401101822.7392-1-a.fatoum@pengutronix.de>
 <20190401101822.7392-5-a.fatoum@pengutronix.de>
 <20190402172521.GA18142@ravnborg.org>
 <8be2df02-cd5f-f879-8041-0c2cad0e0c19@pengutronix.de>
 <20190402191837.GA5916@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <deb6cddb-835f-6580-7c1d-2f82d432ff37@pengutronix.de>
Date: Wed, 3 Apr 2019 11:54:55 +0200
MIME-Version: 1.0
In-Reply-To: <20190402191837.GA5916@ravnborg.org>
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
Subject: Re: [PATCH v3 04/15] ARM: at91: replace at91sam9_ddrsdr.h with
 at91bootstrap's at91_ddrsdrc.h
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

Hi,

On 2/4/19 21:18, Sam Ravnborg wrote:
> Hi Ahmad.
> 
>>>
>>> If we introduced the following small helpers we could simplify the call sites
>>> to just use at91_get_ddram_size(AT91SAM9G45_BASE_DDRSDRC0) and similar.
>>>
>>> static inline u32 at91_get_ddram_size(void __force __iomem * addr)
>>> {
>>> 	return __at91_get_ddram_size(IOMEM(addr), true);
>>> }
>>>
>>> static inline u32 at91sam9g45_get_ddram_size(void __force __iomem * addr)
>>> {
>>> 	return __at91_get_ddram_size(IOMEM(addr), false);
>>> }
>>
>> That would still require the pointer cast to pacify the -Wint-conversion.
>> And (void*)ADDR looks only marginally better IOMEM(ADDR) IMO
>> at the cost of having sparse miss passing memory pointers
>> (__force __iomem would be equivalent to just __attribute__((noderef)), wouldn't it?)
>>
>> My preference would've been that AT91SAM9G45_BASE_DDRSDRC0 already expands
>> to a void __iomem *.
> The main idea was to get rid of the bool argument and use more explicit function
> names. Moving IOMEM() was the added extra.

Ah, I see now what you mean. I'll respin the series anyway, so I'll revert to
what I did in the previous series version (SoC-family-specific helper).

> 
>> We could do that in a follow-up patch.
> Agreed, maybe later if we do it.
> The original patch in this mail was fine.
> 
> You can add my:
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> 
> If you respin the series.
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
