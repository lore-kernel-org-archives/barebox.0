Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIqJi-0002SO-L5
 for barebox@lists.infradead.org; Thu, 17 Sep 2020 09:35:03 +0000
References: <1599809857-266934-1-git-send-email-m.otto@phytec.de>
 <1599809857-266934-3-git-send-email-m.otto@phytec.de>
 <20200914084456.GM4498@pengutronix.de>
From: Maik Otto <m.otto@phytec.de>
Message-ID: <e5bc0d7a-b1ab-823c-311a-da55af2867e2@phytec.de>
Date: Thu, 17 Sep 2020 11:35:00 +0200
MIME-Version: 1.0
In-Reply-To: <20200914084456.GM4498@pengutronix.de>
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
Subject: Re: [PATCH v2 2/2] arch: arm: mach-imx: Add habv4 config file for
 i.MX6ULL
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Am 14.09.2020 um 10:44 schrieb Sascha Hauer:
> Hi Maik,
>
> On Fri, Sep 11, 2020 at 09:37:37AM +0200, Maik Otto wrote:
>> The i.MX6ULL has no CAAM engine for Secure Boot on HABv4 (NXP AN4581).
>> For i.MX6ULL the engine Software (SW) must used for the image
>> validation.
>>
>> +++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-512mb.imxcfg
>> @@ -1,3 +1,3 @@
>>  
>>  #include "flash-header-phytec-pcl063-512mb.h"
>> -#include <mach/habv4-imx6-gencsf.h>
>> +#include <mach/habv4-imx6ull-gencsf.h>
>> diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
>> index 17c4d79..ee21e0b 100644
>> --- a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
>> +++ b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
> I would prefer to rename this file to habv4-imx6-gencsf-template.h and
> let it start with:
>
> #ifndef SETUP_HABV4_ENGINE
> #error "SETUP_HABV4_ENGINE undefined"
> #endif
>
> The habv4-imx6-gencsf.h would then only set the defines and include the
> template file like you already did for the i.MX6ULL.
>
> This makes it more clear what defines the file expects.
ok, is fine. I will change it
>> @@ -14,7 +14,11 @@ hab Hash Algorithm = sha256
>>  hab Engine Configuration = 0
>>  hab Certificate Format = X509
>>  hab Signature Format = CMS
>> +#ifndef SETUP_HABV4_ENGINE
>>  hab Engine = CAAM
>> +#else
>> +hab Engine = SETUP_HABV4_ENGINE
>> +#endif
>>  
>>  hab [Install SRK]
>>  hab File = CONFIG_HABV4_TABLE_BIN
>> @@ -28,8 +32,12 @@ hab File = CONFIG_HABV4_CSF_CRT_PEM
>>  hab [Authenticate CSF]
>>  
>>  hab [Unlock]
>> +#ifndef SETUP_HABV4_ENGINE
>>  hab Engine = CAAM
>>  hab Features = RNG, MID
>> +#else
>> +hab Engine = SETUP_HABV4_ENGINE
>> +#endif
> Do we need this #ifdef here? Can't we instead have a
> SETUP_HABV4_FEATURES macro and let the SoC specific files define it as
>
> #define SETUP_HABV4_FEATURES RNG,MID

yes we need it, because the cst tool in version 3.3.1 fails for hab
Engine = SW with hab Features =
The older versions of cst tool had no problem with it.

I rework it to
#ifdef SETUP_HABV4_FEATURES
hab FEATURES = SETUP_HABV4_FEATURES
#endif

>
> Sascha
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
