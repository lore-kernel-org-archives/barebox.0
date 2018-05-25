Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x243.google.com ([2607:f8b0:4001:c0b::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fM34H-0000tf-AB
 for barebox@lists.infradead.org; Fri, 25 May 2018 03:07:02 +0000
Received: by mail-it0-x243.google.com with SMTP id 70-v6so5110438ity.2
 for <barebox@lists.infradead.org>; Thu, 24 May 2018 20:06:51 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180523082159.yj2rymltv2vwphg6@pengutronix.de>
References: <20180522230518.9070-1-andrew.smirnov@gmail.com>
 <20180522230518.9070-3-andrew.smirnov@gmail.com>
 <20180523082159.yj2rymltv2vwphg6@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 24 May 2018 20:06:49 -0700
Message-ID: <CAHQ1cqHJ_Y58pnqiFQ-SZt9qH3VFd8NU8NT34mf75PGN5-hV8Q@mail.gmail.com>
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
Subject: Re: [PATCH 2/7] i.MX: ocotp: Change MAC address layout for VFxxx
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Vivien Didelot <vivien.didelot@savoirfairelinux.com>

On Wed, May 23, 2018 at 1:21 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Tue, May 22, 2018 at 04:05:13PM -0700, Andrey Smirnov wrote:
>> For reasons unclear VFxxx port of U-Boot chose to store MAC address in
>> OCOTP using a layout that is incompatible with rest of i.MX
>> world (both in U-Boot and Barebox). Unfortunately for us, that means
>> that there are a number of boards out there that have had their MAC
>> addresses programmed using U-Boot and in order to properly support
>> those boards we need to change VFxxx port of Barebox to be compatible.
>>
>> Since the number of Barebox users on VFxx is in single digits, just
>> chage the layout to that of U-Boot without trying to make this a
>> configurable option.
>>
>> Cc: Vivien Didelot <vivien.didelot@savoirfairelinux.com>
>> Tested-by: Vivien Didelot <vivien.didelot@savoirfairelinux.com>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  arch/arm/mach-imx/ocotp.c | 64 +++++++++++++++++++++++++++++++++------
>>  1 file changed, 54 insertions(+), 10 deletions(-)
>>
>> diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
>> index d5e6b3d3e..a70adee37 100644
>> --- a/arch/arm/mach-imx/ocotp.c
>> +++ b/arch/arm/mach-imx/ocotp.c
>> @@ -76,9 +76,16 @@
>>  #define MAX_MAC_OFFSETS                      2
>>  #define MAC_BYTES                    8
>>
>> +enum imx_ocotp_format_mac_direction {
>> +     OCOTP_HW_TO_MAC,
>> +     OCOTP_MAC_TO_HW,
>> +};
>> +
>>  struct imx_ocotp_data {
>>       int num_regs;
>>       u32 (*addr_to_offset)(u32 addr);
>> +     void (*format_mac)(u8 *dst, const u8 *src,
>> +                        enum imx_ocotp_format_mac_direction dir);
>>       u8  mac_offsets[MAX_MAC_OFFSETS];
>>       u8  mac_offsets_num;
>>  };
>> @@ -87,6 +94,7 @@ struct ocotp_priv_ethaddr {
>>       char value[MAC_BYTES];
>>       struct regmap *map;
>>       u8 offset;
>> +     const struct imx_ocotp_data *data;
>>  };
>>
>>  struct ocotp_priv {
>> @@ -368,16 +376,46 @@ bool imx_ocotp_sense_enable(bool enable)
>>       return old_value;
>>  }
>>
>> -static void memreverse(void *dest, const void *src, size_t n)
>> +static void imx_ocotp_format_mac(u8 *dst, const u8 *src,
>> +                              enum imx_ocotp_format_mac_direction dir)
>>  {
>> -     char *destp = dest;
>> -     const char *srcp = src + n - 1;
>> +     /*
>> +      * This transformation is symmetic, so we don't care about the
>> +      * value of 'dir'.
>> +      */
>> +     dst[5] = src[0];
>> +     dst[4] = src[1];
>> +     dst[3] = src[2];
>> +     dst[2] = src[3];
>> +     dst[1] = src[4];
>> +     dst[0] = src[5];
>> +}
>>
>> -     while(n--)
>> -             *destp++ = *srcp--;
>> +static void vf610_ocotp_format_mac(u8 *dst, const u8 *src,
>> +                                enum imx_ocotp_format_mac_direction dir)
>> +{
>> +     switch (dir) {
>> +     case OCOTP_HW_TO_MAC:
>> +             dst[1] = src[0];
>> +             dst[0] = src[1];
>> +             dst[5] = src[4];
>> +             dst[4] = src[5];
>> +             dst[3] = src[6];
>> +             dst[2] = src[7];
>> +             break;
>> +     case OCOTP_MAC_TO_HW:
>> +             dst[0] = src[1];
>> +             dst[1] = dst[0];
>> +             dst[4] = dst[5];
>> +             dst[5] = dst[4];
>> +             dst[6] = dst[3];
>> +             dst[7] = dst[2];
>> +             break;
>
> only src[1] used? This looks wrong.

Yeah, that's wrong for sure. Will fix in v2.

Thanks,
Andrey Smrinov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
