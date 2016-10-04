Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x241.google.com ([2607:f8b0:4002:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1brQ1C-0006qr-LA
 for barebox@lists.infradead.org; Tue, 04 Oct 2016 13:44:30 +0000
Received: by mail-yw0-x241.google.com with SMTP id t193so1203760ywc.2
 for <barebox@lists.infradead.org>; Tue, 04 Oct 2016 06:44:06 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20161004065811.vsvvya5csazebcfg@pengutronix.de>
References: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
 <1475505657-898-12-git-send-email-andrew.smirnov@gmail.com>
 <20161004065811.vsvvya5csazebcfg@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 4 Oct 2016 06:44:04 -0700
Message-ID: <CAHQ1cqEPSGsWAAuw=5i6NNG-28iO+W-9Qhz8vhNdHcen9Y93Ag@mail.gmail.com>
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
Subject: Re: [PATCH 11/20] i.MX: Add VF610 clock tree initialization code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Oct 3, 2016 at 11:58 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Mon, Oct 03, 2016 at 07:40:48AM -0700, Andrey Smirnov wrote:
>> Based on analogous code from Linux kernel
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  drivers/clk/imx/Makefile    |    1 +
>>  drivers/clk/imx/clk-vf610.c | 1224 +++++++++++++++++++++++++++++++++++++++++++
>>  2 files changed, 1225 insertions(+)
>>  create mode 100644 drivers/clk/imx/clk-vf610.c
>>
>> diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
>> index 0303c0b..2665f49 100644
>> --- a/drivers/clk/imx/Makefile
>> +++ b/drivers/clk/imx/Makefile
>> @@ -1 +1,2 @@
>>  obj-y += clk.o
>> +obj-$(CONFIG_ARCH_VF610) += clk-vf610.o
>> +static struct clk *clk[VF610_CLK_END];
>> +struct clk_onecell_data clk_data;
>> +
>> +static struct clk * __init vf610_get_fixed_clock(struct device_node *np,
>> +                                              const char *name)
>> +{
>> +     struct clk *clk = of_clk_get_by_name(np, name);
>> +
>> +     /* Backward compatibility if device tree is missing clks assignments */
>> +     if (IS_ERR(clk))
>> +             clk = imx_obtain_fixed_clock(name, 0);
>
> Ah, that explains it. No, we don't need this since we are compiling the
> device trees into barebox and can make sure they are compatible with our
> code.

OK, will fix in v2.
Thanks,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
