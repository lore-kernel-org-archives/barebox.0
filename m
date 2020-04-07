Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLoVZ-0004jB-MN
 for barebox@lists.infradead.org; Tue, 07 Apr 2020 13:43:19 +0000
References: <c013449a-b775-b805-df78-48a908d506fb@arcor.de>
 <d5949d44-9377-98f4-029c-ae1b0debf7d1@pengutronix.de>
 <2179bad5-0ec6-a2ae-683f-f2f24e3aabfb@arcor.de>
 <56816c6f-86ac-e350-3d23-bf0ff1fe87d2@pengutronix.de>
 <6679e805-8f1e-0c02-cc73-e2d2ab4911c1@arcor.de>
 <63e3eb58-9f5b-54d6-e8cf-b7672fe55a4a@pengutronix.de>
 <9bd7f507-8f59-98ee-18af-48be3dba9372@arcor.de>
 <f075fcf2-5703-37ee-b197-84afe0585560@pengutronix.de>
 <3c69c3fb-d8bd-b39d-a0ea-704c8ad99dfc@arcor.de>
 <612deb15-d03a-e393-3e37-efed52c9c3ed@pengutronix.de>
 <facff2a6-0014-2858-25bd-de8190b5df0d@arcor.de>
 <621b0466-1176-b067-5bb1-9606bd695c8d@pengutronix.de>
 <f4cb5943-b968-90ee-f55e-7e705fae0d86@arcor.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <956f428b-e2a7-fb8a-c073-ec90966af808@pengutronix.de>
Date: Tue, 7 Apr 2020 15:43:13 +0200
MIME-Version: 1.0
In-Reply-To: <f4cb5943-b968-90ee-f55e-7e705fae0d86@arcor.de>
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
Subject: Re: imx7d dual core boot
To: Giorgio <giorgio.nicole@arcor.de>
Cc: barebox@lists.infradead.org

Hello,

On 4/7/20 2:28 PM, Giorgio wrote:
>> Great. Even better than hardcoding the CLIENT_DOMAIN.
>>
> OK.
> 
> To read the current value of DACR, in secure mode, we need a
> get_domain(). I would add it to mmu.h, beside the set_domain().

sounds good.

>>> What do you mean with the 'other i.MX7 patches' ?
>>
>> Didn't you add support for some i.MX7 spi flash image format?
>>
> 
> That was an evil hack actually, just to verify why the normal barebox image
> didn't worked. To really support booting barebox from the qspi flash
> I think we need more *structural* changes to the way barebox starts.
> For this I need *at least* some suggestions from someone that really knows
> in detail how barebox works and how an image is built, like you or Sascha...

scripts/imx/imx-image.c is what's building the i.MX images. It receives
the imxcfg specific to a board as argument. If you have extra configuration
for the QSPI, you'll probably need to extend that, either with a new option
or maybe by adding new directives to the existing imxcfg format.

What other changes do you think will be necessary?
 
> Maybe what can be committed is the dts block in imx7s.dtsi for the qspi that
> enables using the flash as normal runtime mass storage. This should be not
> so dangerous because the qspi becomes only active when its status is also enabled.

Funny that no one so far has been bothered to add it upstream ^^.
You can add it to barebox arch/arm/dts/imx7s.dtsi, but as you might want to access
it from Linux as well, you should consider posting a patch to add the qspi
node to the upstream imx7s.dtsi.
Shortly after landing in a Linux -rc, Sascha will import it along with other
changes to barebox dts/ and we can drop the node then from arch/arm/dts again.

>>> I've also noticed that some asm() statements in sm.c lack the 'volatile'
>>> attribute.
>>
>> Are they strictly necessary? My understanding is that we need
>> asm volatile on no output operands, but side effects.

> I think for the current code in sm.c we don't strictly need the volatiles,
> I noticed problems in debug code like this:

> Here the compiler could think he can call read_dacr() only once,
> cache the result in a register and use its value two times. I verified
> that for the previous debug code the volatile attribute makes a
> difference.

Interesting. As arm_smccc_smc expands to an external function and barebox
does no Link-Time Optimization, I'd have though arm_smccc_smc to be a barrier
and everything would be reloaded afterwards.

That it's not, sounds quite broken..

Cheers
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
