Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x242.google.com ([2607:f8b0:4001:c06::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f84JZ-0003lC-UG
 for barebox@lists.infradead.org; Mon, 16 Apr 2018 13:37:03 +0000
Received: by mail-io0-x242.google.com with SMTP id v13so18063589iob.6
 for <barebox@lists.infradead.org>; Mon, 16 Apr 2018 06:36:51 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180416073727.z777ff4fuecb2anv@pengutronix.de>
References: <20180414175103.10125-1-andrew.smirnov@gmail.com>
 <20180414175103.10125-3-andrew.smirnov@gmail.com>
 <20180416073727.z777ff4fuecb2anv@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 16 Apr 2018 06:36:50 -0700
Message-ID: <CAHQ1cqGu5HDLNF+g8WMXUZvLwHgd=89NCEEo=Nbn9KA_X5-DGw@mail.gmail.com>
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
Subject: Re: [PATCH 02/17] ARM: i.MX: Add function to extract BMOD value
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Apr 16, 2018 at 12:37 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Sat, Apr 14, 2018 at 10:50:48AM -0700, Andrey Smirnov wrote:
>> The location of BMDO field in SBMR/SBMR2 registers is consistent
>> across all i.MX SoCs starting from i.MX53. Add simple helper function
>> imx53_get_bmod and use it to avoid code duplication.
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  arch/arm/mach-imx/boot.c | 25 ++++++++++++++-----------
>>  1 file changed, 14 insertions(+), 11 deletions(-)
>>
>> diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
>> index 4657fa017..56f9fb5d4 100644
>> --- a/arch/arm/mach-imx/boot.c
>> +++ b/arch/arm/mach-imx/boot.c
>> @@ -169,12 +169,23 @@ void imx51_get_boot_source(enum bootsource *src, int *instance)
>>  }
>>
>>  #define IMX53_SRC_SBMR       0x4
>> +
>> +static unsigned int sbmr(uint32_t r, unsigned int msb, unsigned int lsb)
>> +{
>> +     return (r & GENMASK(msb, lsb)) >> lsb;
>> +}
>
> If you like GENMASK then maybe the FIELD_GET and FIELD_PREP macros from
> the Linux kernel are for you aswell.
>
> #define SRC_SBMR_BMOD   GENMASK(25, 24)
>

Definetly! I like it a lot! I was hoping that something like that
existed but didn't find anything in barebox's tree. Should've checked
the kernel one instead. Will add and use in v2 of the patch.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
