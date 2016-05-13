Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x242.google.com ([2607:f8b0:400c:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b1FH1-0006g1-98
 for barebox@lists.infradead.org; Fri, 13 May 2016 15:45:08 +0000
Received: by mail-vk0-x242.google.com with SMTP id v68so12724368vka.1
 for <barebox@lists.infradead.org>; Fri, 13 May 2016 08:44:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160510060255.GV19714@pengutronix.de>
References: <1462543770-4619-1-git-send-email-andrew.smirnov@gmail.com>
 <1462543770-4619-6-git-send-email-andrew.smirnov@gmail.com>
 <20160510060255.GV19714@pengutronix.de>
Date: Fri, 13 May 2016 08:44:45 -0700
Message-ID: <CAHQ1cqHKZTQn+PbHRkK_4F-YGbSa16cbwW6MqdoagtehgPSOmA@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 5/6] aiodev: Add TEMPMON driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, May 9, 2016 at 11:02 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Fri, May 06, 2016 at 07:09:29AM -0700, Andrey Smirnov wrote:
>> Port TEMPMON driver from U-Boot
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  arch/arm/dts/imx6qdl.dtsi    |  14 +++
>>  arch/arm/dts/imx6sx.dtsi     |  14 +++
>>  drivers/aiodev/Kconfig       |   8 ++
>>  drivers/aiodev/Makefile      |   1 +
>>  drivers/aiodev/imx_thermal.c | 239 +++++++++++++++++++++++++++++++++++++++++++
>>  5 files changed, 276 insertions(+)
>>  create mode 100644 drivers/aiodev/imx_thermal.c
>>
>> diff --git a/arch/arm/dts/imx6qdl.dtsi b/arch/arm/dts/imx6qdl.dtsi
>> index 828be9c..0deafbc 100644
>> --- a/arch/arm/dts/imx6qdl.dtsi
>> +++ b/arch/arm/dts/imx6qdl.dtsi
>> @@ -8,3 +8,17 @@
>>               ipu0 = &ipu1;
>>       };
>>  };
>> +
>> +&ocotp {
>> +     #address-cells = <1>;
>> +     #size-cells = <1>;
>> +
>> +     analog1: ocotp_ana1@34 {
>
> @38?
>
>> +             reg = <0x38 0x4>;
>> +     };
>> +};
>> +
>> +&tempmon {
>> +     nvmem-cells = <&analog1>;
>> +     nvmem-cell-names = "ocotp-ana1";
>> +};
>
> Why not use the existing binding? The nvmem binding may be better, but I
> think we should not introduce new bindings without need.

I was using it originally (back when this was a part of HWMON RFC),
but then "cdev_do_open" was removed, so I switched to using "nvmem".
Granted there is not meaningful "open" or "close" operation for ocotp
cdev, but I just liked that approach less. I'll revert to original
code in v3

>
>> +     node = of_parse_phandle(dev->device_node, "fsl,tempmon", 0);
>> +     if (!node) {
>> +             ret = -EINVAL;
>> +             dev_err(dev, "Failed to parse fsl,tempmon\n");
>> +             goto free_calibration_data;
>> +     }
>> +
>> +     anatop = of_find_device_by_node(node);
>> +     if (!anatop) {
>> +             ret = -EINVAL;
>> +             dev_err(dev, "No device corresponds to fsl,tempmon\n");
>> +             goto free_calibration_data;
>> +     }
>
> syscon_base_lookup_by_phandle() instead of
> of_parse_phandle()/of_find_device_by_node()?

Will fix in v3

>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
