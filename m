Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hToPc-0001Wd-2c
 for barebox@lists.infradead.org; Thu, 23 May 2019 14:09:41 +0000
References: <20190401103256.17914-1-a.fatoum@pengutronix.de>
 <20190402171024.GB7902@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <29502fd0-597b-04b9-2087-cad8595051ee@pengutronix.de>
Date: Thu, 23 May 2019 16:09:37 +0200
MIME-Version: 1.0
In-Reply-To: <20190402171024.GB7902@ravnborg.org>
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
Subject: Re: [PATCH] clk: at91: fix compilation errors in sama5d2.c
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

Hello Sam,

On 2/4/19 19:10, Sam Ravnborg wrote:
> Hi Ahmad.
> 
> Thanks for looking into this.
> 
> On Mon, Apr 01, 2019 at 12:32:57PM +0200, Ahmad Fatoum wrote:
>> sama5d2 was added along with the update to the upstream
>> device tree bindings, but wasn't wired in anywhere.
>>
>> To prepare for usage in future sama5d2 support, fix
>> compilation errors related to absence of locks and
>> unavailability of audio/i2s clock/pll handling.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> Another approach could have been to stub out the
> non-existing functions to make diff between the kernel
> and the barebox variant smaller.
> 
> Did you consider that approach?

Originally, I only thought about returning -ENOSYS from stubs,
but that won't work because the function would then fail.
I didn't think of returning NULL instead though..

But returning NULL from the stubs won't work for the hunk
at the bottom (the one guarded by if (regmap_sfr)).
That would cause NULL 'holes' in the array and of_clk_get_from_provider,
which normally never returns NULL could start returning NULL then.

I don't want to audit whether that's ok, so I prefer the route of just
removing the audio/i2s stuff...

> 
> The whole section in CONFIG_HAVE_AT91_AUDIO_PLL in dt-compat.c
> is also something we could drop btw. if we go the "drop all audio" stuff
> from clk. Also prototypes in pmc.h

Indeed, thanks for spotting that and sorry for the late answer.
I haven't had time to look at this since then.

Cheers
Ahmad

> 
> The patch itself looked fine. But I think that from a maintenance point of
> view should stub us out of it.
> Let me know what you think.
> 
> 	Sam
> 
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
