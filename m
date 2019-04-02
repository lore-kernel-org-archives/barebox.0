Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hBOON-0007ro-Gt
 for barebox@lists.infradead.org; Tue, 02 Apr 2019 18:44:17 +0000
References: <20190401101822.7392-1-a.fatoum@pengutronix.de>
 <20190401101822.7392-7-a.fatoum@pengutronix.de>
 <20190402174203.GC18142@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <77a7828e-a35b-20e3-89fd-bd0a898db561@pengutronix.de>
Date: Tue, 2 Apr 2019 20:44:12 +0200
MIME-Version: 1.0
In-Reply-To: <20190402174203.GC18142@ravnborg.org>
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
Subject: Re: [PATCH v3 06/15] ARM: at91: import lowlevel clock initialization
 from at91bootstrap
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

Hello Sam,

On 2/4/19 19:42, Sam Ravnborg wrote:
> Hi Ahmad.
> 
> On Mon, Apr 01, 2019 at 12:18:14PM +0200, Ahmad Fatoum wrote:
>> For use by future at91 first stage bootloaders, this commit imports
>> https://github.com/linux4sam/at91bootstrap/blob/v3.8.12/driver/pmc.c
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/mach-at91/Makefile                   |   1 +
>>  arch/arm/mach-at91/at91_pmc_ll.c              | 184 ++++++++++++++++++
>>  arch/arm/mach-at91/include/mach/at91_pmc.h    |  24 ++-
>>  arch/arm/mach-at91/include/mach/at91_pmc_ll.h |  78 ++++++++
>>  4 files changed, 284 insertions(+), 3 deletions(-)
>>  create mode 100644 arch/arm/mach-at91/at91_pmc_ll.c
>>  create mode 100644 arch/arm/mach-at91/include/mach/at91_pmc_ll.h
>>
>> diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
>> index d81683ac121a..91b06c085107 100644
>> --- a/arch/arm/mach-at91/Makefile
>> +++ b/arch/arm/mach-at91/Makefile
>> @@ -1,4 +1,5 @@
>>  obj-y += setup.o
>> +pbl-y += at91_pmc_ll.o
> 
> Will this always make my pbl image larger or do we have some linker
> magic that throws away the unused code?

My understanding is that barebox instructs GCC to place each out-of-line function
into a separate section (with -ffunction-sections) and then the linker prunes all
unreferenced sections. 

> If the pbl image become larger then we need to add this in a conditional manner
> as we cannot allow this for all at91 variants.

I used to have conditional function definitions in a prior version (albeit
for the SDRAM variants initialization routines) and Sascha commented that
the #ifdefery can be removed as the linker takes care of it. 

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
