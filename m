Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jsDAH-0007l5-MI
 for barebox@lists.infradead.org; Sun, 05 Jul 2020 22:31:14 +0000
References: <20200702085934.5827-1-a.fatoum@pengutronix.de>
 <20200705173513.GX15485@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <6be7e02f-a8a6-e76f-9960-ccff916bcf54@pengutronix.de>
Date: Mon, 6 Jul 2020 00:31:09 +0200
MIME-Version: 1.0
In-Reply-To: <20200705173513.GX15485@pengutronix.de>
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
Subject: Re: [PATCH] kbuild: add dtbs target for building all dtbs of an ARCH
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org



On 7/5/20 7:35 PM, Sascha Hauer wrote:
> On Thu, Jul 02, 2020 at 10:59:34AM +0200, Ahmad Fatoum wrote:
>> As described in the documentation, upstream device trees extended by
>> barebox should take care to cause compile errors, not runtime errors,
>> when the paths they extend disappear. This way, breakage can be easily
>> detected when synchronizing the dts/ directory and fixed right then.
>>
>> Make this process easier by providing a dtbs target that builds all
>> device trees in arch/$(SRCARCH)/dts/ if available.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  Makefile | 18 ++++++++++++++++++
>>  1 file changed, 18 insertions(+)
>>
>> diff --git a/Makefile b/Makefile
>> index 0da032532712..9fa741966c00 100644
>> --- a/Makefile
>> +++ b/Makefile
>> @@ -990,6 +990,20 @@ include/generated/version.h: FORCE
>>  include/generated/utsrelease.h: include/config/kernel.release FORCE
>>  	$(call filechk,utsrelease.h)
>>  
>> +# ---------------------------------------------------------------------------
>> +# Devicetree files
>> +
>> +ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/dts/),)
>> +dtstree := arch/$(SRCARCH)/dts
>> +endif
>> +
>> +ifneq ($(dtstree),)
>> +
>> +PHONY += dtbs
>> +dtbs: $(patsubst $(srctree)/%.dts,$(objtree)/%.dtb,$(wildcard $(srctree)/$(dtstree)/*.dts))
>> +
>> +endif
> 
> Can we do this in a way that only rebuilds the changed files and not
> every dts again?

Probably, I would have to check how though. But it doesn't matter that much IMO.
Target is meant to be run only after dts/ update. It's not part of the normal
development workflow. 

> 
> Sascha
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
