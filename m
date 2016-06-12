Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x244.google.com ([2607:f8b0:4002:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bCFDn-00010D-QI
 for barebox@lists.infradead.org; Sun, 12 Jun 2016 23:55:16 +0000
Received: by mail-yw0-x244.google.com with SMTP id y6so14545274ywe.0
 for <barebox@lists.infradead.org>; Sun, 12 Jun 2016 16:54:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1465329985.15779.162.camel@rtred1test09.kymeta.local>
References: <1465329688.15779.156.camel@rtred1test09.kymeta.local>
 <1465329985.15779.162.camel@rtred1test09.kymeta.local>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 12 Jun 2016 16:54:54 -0700
Message-ID: <CAHQ1cqH=zMbwqE9DaCQdNytn2zg4AMT6DyzCJnhN6f9r1PJsyQ@mail.gmail.com>
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
Subject: Re: [PATCH 3/5] rtc: ds1307: Clean up of chip variant support
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Tue, Jun 7, 2016 at 1:06 PM, Trent Piepho <tpiepho@kymetacorp.com> wrote:
> Gets rid of multiple case statements and chip type checks by
> attempting to use a more unified approach to chip differences.  Flag
> bits are added to the state struct for specific differences.
>
> Combines the checks for OSF and CH bits into a single block for all
> chips.
>
> Add some flags the indicate chip features.  Use these instead of a
> bunch of case statements in different places.
>
> Do a single read of chips registers in probe instead of multiple ones
> and place register in matching location in the buffer.  Fix bug where
> DOSF bit was set in incorrect buffer location.
>
> Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
> ---
>  drivers/rtc/rtc-ds1307.c | 159 +++++++++++++++++++++++++++--------------------
>  1 file changed, 90 insertions(+), 69 deletions(-)
>
> diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
> index 5ed64bf..1526273 100644
> --- a/drivers/rtc/rtc-ds1307.c
> +++ b/drivers/rtc/rtc-ds1307.c
> @@ -98,10 +98,26 @@ enum ds_type {
>  /* Most registers for any device */
>  #define DS13xx_REG_COUNT       16
>
> -
>  struct ds1307 {
>         struct rtc_device       rtc;
>         enum ds_type            type;
> +       /*
> +        * Flags to code chip differences that this code handles.
> +        * has_alarms:  Chip has alarms, also signifies:
> +        *      Control register has a different address and format
> +        *      Seconds register does not have a 'CH' bit
> +        *      Month register has century bit
> +        * osf:         Oscillator Stop Flag location
> +        *      0 = none
> +        *      1..3 = DS13(38|40|37)_BIT_OSF
> +        */
> +       unsigned                has_alarms:1;
> +#define OSF_NONE               0
> +#define OSF_1338               1
> +#define OSF_1340               2
> +#define OSF_1337               3
> +       unsigned                osf:2;
> +
>         struct i2c_client       *client;
>  };
>
> @@ -257,16 +273,10 @@ static int ds1307_set_time(struct rtc_device *rtcdev, struct rtc_time *t)
>         tmp = t->tm_year - 100;
>         buf[DS1307_REG_YEAR] = bin2bcd(tmp);
>
> -       switch (ds1307->type) {
> -       case ds_1337:
> -       case ds_1341:
> +       if (ds1307->has_alarms) {
>                 buf[DS1307_REG_MONTH] |= DS1337_BIT_CENTURY;
> -               break;
> -       default:
> -               break;
>         }
>
> -
>         dev_dbg(dev, "%s: %7ph\n", "write", buf);
>
>         result = ds1307_write_block_data(ds1307->client, DS13xx_REG_TIME_START,
> @@ -289,6 +299,8 @@ static int ds1307_probe(struct device_d *dev)
>         struct ds1307           *ds1307;
>         int                     err = -ENODEV;
>         int                     tmp;
> +       int                     fault;
> +       int                     nreg;
>         unsigned char           buf[DS13xx_REG_COUNT];
>         unsigned long driver_data;
>         const struct device_node *np = dev->device_node;
> @@ -303,23 +315,35 @@ static int ds1307_probe(struct device_d *dev)
>         ds1307->type = driver_data;
>
>         switch (ds1307->type) {
> +       case ds_1307:
> +               nreg = DS1307_REG_CONTROL + 1;
> +               break;
> +       case ds_1338:
> +               nreg = DS1307_REG_CONTROL + 1;
> +               ds1307->osf = OSF_1338;
> +               break;
>         case ds_1337:
>         case ds_1341:
> -               /* get registers that the "rtc" read below won't read... */
> -               tmp = ds1307_read_block_data(ds1307->client,
> -                                            DS1337_REG_CONTROL, 2, buf);
> -
> -               if (tmp != 2) {
> -                       dev_dbg(&client->dev, "read error %d\n", tmp);
> -                       err = -EIO;
> -                       goto exit;
> -               }
> -
> -               /* oscillator off?  turn it on, so clock can tick. */
> -               if (buf[0] & DS1337_BIT_nEOSC)
> -                       buf[0] &= ~DS1337_BIT_nEOSC;
> +               nreg = DS1337_REG_STATUS + 1;
> +               ds1307->osf = OSF_1337;
> +               ds1307->has_alarms = 1;
> +               break;
> +       default:
> +               dev_err(&client->dev, "Unknown device type %lu\n", driver_data);
> +               err = -ENODEV;
> +               goto exit;
> +       }
>
> +read_rtc:
> +       /* read RTC registers */
> +       tmp = ds1307_read_block_data(client, 0, nreg, buf);
> +       if (tmp != nreg) {
> +               dev_dbg(&client->dev, "read error %d\n", tmp);
> +               err = -EIO;
> +               goto exit;
> +       }
>
> +       if (ds1307->has_alarms) {
>                 /*
>                   Make sure no alarm interrupts or square wave signals
>                   are produced by the chip while we are in
> @@ -328,56 +352,36 @@ static int ds1307_probe(struct device_d *dev)
>                   wave generation), but disabling each individual
>                   alarm interrupt source
>                  */
> -               buf[0] |= DS1337_BIT_INTCN;
> -               buf[0] &= ~(DS1337_BIT_A2IE | DS1337_BIT_A1IE);
> +               buf[DS1337_REG_CONTROL] |= DS1337_BIT_INTCN;
> +               buf[DS1337_REG_CONTROL] &= ~(DS1337_BIT_A2IE | DS1337_BIT_A1IE);
>
>                 i2c_smbus_write_byte_data(client, DS1337_REG_CONTROL,
> -                                         buf[0]);
> +                                         buf[DS1337_REG_CONTROL]);
>
>                 if (ds1307->type == ds_1341) {
>                         /*
>                          * For the above to be true, DS1341 also has to have
>                          * ECLK bit set to 0
>                          */
> -                       buf[1] &= ~DS1341_BIT_ECLK;
> +                       buf[DS1337_REG_STATUS] &= ~DS1341_BIT_ECLK;
>
>                         /*
>                          * Let's set additionale RTC bits to
>                          * facilitate maximum power saving.
>                          */
> -                       buf[0] |=  DS1341_BIT_DOSF;
> -                       buf[0] &= ~DS1341_BIT_EGFIL;
> +                       buf[DS1337_REG_STATUS] |=  DS1341_BIT_DOSF;
> +                       buf[DS1337_REG_CONTROL] &= ~DS1341_BIT_EGFIL;
>
>                         i2c_smbus_write_byte_data(client, DS1337_REG_CONTROL,
> -                                                 buf[0]);
> +                                                 buf[DS1337_REG_CONTROL]);
>                         i2c_smbus_write_byte_data(client, DS1337_REG_STATUS,
> -                                                 buf[1]);
> +                                                 buf[DS1337_REG_STATUS]);
>                 }
>
> -
> -               /* oscillator fault?  clear flag, and warn */
> -               if (buf[1] & DS1337_BIT_OSF) {
> -                       i2c_smbus_write_byte_data(client, DS1337_REG_STATUS,
> -                               buf[1] & ~DS1337_BIT_OSF);
> -                       dev_warn(&client->dev, "SET TIME!\n");
> -               }
> -
> -       default:
> -               break;
> -       }
> -
> -read_rtc:
> -       /* read RTC registers */
> -       tmp = ds1307_read_block_data(client, 0, 8, buf);
> -       if (tmp != 8) {
> -               dev_dbg(&client->dev, "read error %d\n", tmp);
> -               err = -EIO;
> -               goto exit;
>         }
>
>         /* Configure clock using OF data if available */
> -       if (IS_ENABLED(CONFIG_OFDEVICE) && np &&
> -           ds1307->type != ds_1337 && ds1307->type != ds_1341) {
> +       if (IS_ENABLED(CONFIG_OFDEVICE) && np && !ds1307->has_alarms) {
>                 u8 control = buf[DS1307_REG_CONTROL];
>                 u32 rate = 0;
>
> @@ -416,32 +420,49 @@ read_rtc:
>         }
>
>         /* Check for clock halted conditions and start clock */
> -       tmp = buf[DS1307_REG_SECS];
> -       switch (ds1307->type) {
> -       case ds_1307:
> -               /* clock halted?  turn it on, so clock can tick. */
> -               if (tmp & DS1307_BIT_CH) {
> -                       i2c_smbus_write_byte_data(client, DS1307_REG_SECS, 0);
> -                       dev_warn(&client->dev, "SET TIME!\n");
> -                       goto read_rtc;
> +       fault = 0;
> +
> +       /* clock halted?  turn it on, so clock can tick. */
> +       if (ds1307->has_alarms) {
> +               if (buf[DS1337_REG_CONTROL] & DS1337_BIT_nEOSC) {
> +                       buf[DS1337_REG_CONTROL] &= ~DS1337_BIT_nEOSC;
> +                       i2c_smbus_write_byte_data(client, DS1337_REG_CONTROL,
> +                                                 buf[DS1337_REG_CONTROL]);
> +                       fault = 1;
>                 }
> -               break;
> -       case ds_1338:
> -               /* clock halted?  turn it on, so clock can tick. */
> -               if (tmp & DS1307_BIT_CH)
> -                       i2c_smbus_write_byte_data(client, DS1307_REG_SECS, 0);
> +       } else {
> +               if (buf[DS1307_REG_SECS] & DS1307_BIT_CH) {
> +                       buf[DS1307_REG_SECS] = 0;
> +                       i2c_smbus_write_byte_data(client, DS1307_REG_SECS,
> +                                                 buf[DS1307_REG_SECS]);
> +                       fault = 1;
> +               }
> +       }
>
> -               /* oscillator fault?  clear flag, and warn */
> +       /* Oscillator fault?  clear flag and print warning */
> +       switch (ds1307->osf) {
> +       case OSF_1338:
>                 if (buf[DS1307_REG_CONTROL] & DS1338_BIT_OSF) {
> +                       buf[DS1307_REG_CONTROL] &= ~DS1338_BIT_OSF;
>                         i2c_smbus_write_byte_data(client, DS1307_REG_CONTROL,
> -                                       buf[DS1307_REG_CONTROL]
> -                                       & ~DS1338_BIT_OSF);
> -                       dev_warn(&client->dev, "SET TIME!\n");
> -                       goto read_rtc;
> +                                                 buf[DS1307_REG_CONTROL]);
> +                       fault = 1;
>                 }
>                 break;
> -       default:
> +       case OSF_1337:
> +               if (buf[DS1337_REG_STATUS] & DS1337_BIT_OSF) {
> +                       buf[DS1337_REG_STATUS] &= ~DS1337_BIT_OSF;
> +                       i2c_smbus_write_byte_data(client, DS1337_REG_STATUS,
> +                                                 buf[DS1337_REG_STATUS]);
> +                       fault = 1;
> +               }
>                 break;
> +       default: ;
> +       }
> +
> +       if (fault) {
> +               dev_warn(&client->dev, "SET TIME!\n");
> +               goto read_rtc;
>         }

Now that you only have only one "goto" place, wouldn't it make things
more readable if you convert this to a loop? This should also make the
diff of 5/5 slightly smaller.

>
>         if (buf[DS1307_REG_HOUR] & DS1307_BIT_12HR) {
> --
> 2.7.0.25.gfc10eb5.dirty
>
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
