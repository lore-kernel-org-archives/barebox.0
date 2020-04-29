Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTi36-0004Xf-7J
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 08:26:33 +0000
References: <20200429064040.5845-1-a.fatoum@pengutronix.de>
 <20200429064040.5845-2-a.fatoum@pengutronix.de>
 <20200429080021.GF5877@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <54196041-b8c0-6ba0-9122-19168a183e0d@pengutronix.de>
Date: Wed, 29 Apr 2020 10:26:27 +0200
MIME-Version: 1.0
In-Reply-To: <20200429080021.GF5877@pengutronix.de>
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
Subject: Re: [PATCH 2/2] of: fix side effect in macro expansion
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 4/29/20 10:00 AM, Sascha Hauer wrote:
> On Wed, Apr 29, 2020 at 08:40:40AM +0200, Ahmad Fatoum wrote:
>> On little endian platforms that don't define __arch_swab32p, be32_to_cpu
>> ultimately expands to an expression that evaluates its argument multiple
>> times. Because of the increment, this is wrong (and UB because of
>> unsequenced modification).
>> Hoist the side effect out of the macro argument.
> 
> I'm not sure if the reasoning is correct. That would mean that
> of_read_number() doesn't work on ARM, but I can assure it actually does.

Typo, sorry. arch needs to define __arch_swab32 (no p at the end).

of_read_number -> be32_to_cpu -> __be32_to_cpu -> __swab32 -> __fswab32

then

static inline __attribute_const__ __u32 __fswab32(__u32 val)
{
#ifdef __arch_swab32
        return __arch_swab32(val);
#else
        return ___constant_swab32(val);
#endif
}

where ___constant_swab32 is the macro that evaluates the argument
multiple times.

grep shows '#define __arch_swab32' matches for mips, arm, ppc and x86.


> That said, the implementation looks way better with this patch.
Could you amend the commit message when applying?

Thanks
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
