Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x241.google.com ([2607:f8b0:4002:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1brQEY-0006ZN-BJ
 for barebox@lists.infradead.org; Tue, 04 Oct 2016 13:58:15 +0000
Received: by mail-yw0-x241.google.com with SMTP id u124so2362918ywg.1
 for <barebox@lists.infradead.org>; Tue, 04 Oct 2016 06:57:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20161004072041.mfou7hpp3uoihqys@pengutronix.de>
References: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
 <1475505657-898-15-git-send-email-andrew.smirnov@gmail.com>
 <20161004072041.mfou7hpp3uoihqys@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 4 Oct 2016 06:57:53 -0700
Message-ID: <CAHQ1cqGBqBHzF+MCWURs6qN-Qj50gH8q1tNs7LyVyy9r4a-HcA@mail.gmail.com>
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
Subject: Re: [PATCH 14/20] i.MX: i2c-imx: Add Vybrid support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Oct 4, 2016 at 12:20 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Mon, Oct 03, 2016 at 07:40:51AM -0700, Andrey Smirnov wrote:
>> Vybrid flavour of the I2C controller requires some additional quirks on
>> part of the driver. This commit ports those quirks code from analogous
>> Linux kernel driver.
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  drivers/i2c/busses/i2c-imx.c | 215 ++++++++++++++++++++++++++++++++-----------
>>  1 file changed, 160 insertions(+), 55 deletions(-)
>>
>> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
>> index e407896..dbc76c2 100644
>> --- a/drivers/i2c/busses/i2c-imx.c
>> +++ b/drivers/i2c/busses/i2c-imx.c
>> @@ -43,6 +43,7 @@
>> +static inline void fsl_i2c_write_reg(unsigned int val,
>> +                                  struct fsl_i2c_struct *i2c_fsl,
>> +                                  unsigned int reg)
>> +{
>> +     writeb(val, i2c_fsl->base + (reg << i2c_fsl->hwdata->regshift));
>> +}
>> +
>> +static inline unsigned char fsl_i2c_read_reg(struct fsl_i2c_struct *i2c_fsl,
>> +                                          unsigned int reg)
>> +{
>> +     return readb(i2c_fsl->base + (reg << i2c_fsl->hwdata->regshift));
>> +}
>
> Can we have the introduction of the read/write accessor functions as a
> separate patch (with regshift hardcoded to 0)? This would make reviewing
> the rest easier.

OK, will do in v2.

Thanks,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
