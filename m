Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x243.google.com ([2607:f8b0:4002:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bCDsv-0005ol-29
 for barebox@lists.infradead.org; Sun, 12 Jun 2016 22:29:38 +0000
Received: by mail-yw0-x243.google.com with SMTP id y6so14418383ywe.0
 for <barebox@lists.infradead.org>; Sun, 12 Jun 2016 15:29:16 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1465330154.15779.164.camel@rtred1test09.kymeta.local>
References: <1465329688.15779.156.camel@rtred1test09.kymeta.local>
 <1465330154.15779.164.camel@rtred1test09.kymeta.local>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 12 Jun 2016 15:29:15 -0700
Message-ID: <CAHQ1cqEqWrNUpij9oJUNUSAJyK0VgORsgAobQOqYWfch1oT6aQ@mail.gmail.com>
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
Subject: Re: [PATCH 4/5] rtc: ds1307: Allow configuring DS1337 type chips
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Tue, Jun 7, 2016 at 1:09 PM, Trent Piepho <tpiepho@kymetacorp.com> wrote:
> Move OF configuration code into new function which can be used by both
> style of chips.
>
> Extend the DT bindings to allow configuring both input and output
> rate, as the DS1337/41 type chips have this ability.
>
> Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
> ---
>  .../devicetree/bindings/rtc/dallas,ds1307.rst      |  18 +-
>  drivers/rtc/rtc-ds1307.c                           | 188 ++++++++++++---------
>  2 files changed, 124 insertions(+), 82 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/rtc/dallas,ds1307.rst b/Documentation/devicetree/bindings/rtc/dallas,ds1307.rst
> index 52787a8..b9e91f1 100644
> --- a/Documentation/devicetree/bindings/rtc/dallas,ds1307.rst
> +++ b/Documentation/devicetree/bindings/rtc/dallas,ds1307.rst
> @@ -2,22 +2,28 @@ Dallas DS1307 I2C Serial Real-Time Clock
>  ========================================
>
>  Required properties:
> -* ``compatible``: ``dallas,ds1307``, ``dallas,ds1308``, ``dallas,ds1338``
> +* ``compatible``: ``dallas,ds1307``, ``dallas,ds1308``, ``dallas,ds1337``,
> +                 ``dallas,ds1338``, ``dallas,ds1341``
>         "maxim" can be used in place of "dallas"
>
>  * ``reg``: I2C address for chip
>
>  Optional properties:
>  * ``ext-clock-input``: Enable external clock input pin
> -* ``ext-clock-output``:  Enable square wave output.  The above two
> -  properties are mutually exclusive
> +* ``ext-clock-output``:  Enable square wave output.  On some chips both
> +  the above properties can not be enabled at once.
>  * ``ext-clock-bb``: Enable external clock on battery power
> -* ``ext-clock-rate``:  Expected/Generated rate on external clock pin
> -  in Hz.  Allowable values are 1, 50, 60, 4096, 8192, and 32768 Hz.

There seem to be a trailing white-space at the end of the line above,
which prevented me from applying the first hunk of the patch since
there was no trailing white-space in the latest "next" source tree.

> +* ``ext-clock-input-rate``:  Expected rate on external clock input pin
> +  in Hz.  Allowable values are 1, 50, 60, 4096, 8192, and 32768 Hz.
>    Not all values are valid for all configurations.
> +* ``ext-clock-output-rate``:  Rate to generate on square wave output pin
> +  in Hz.  Allowable values are 1, 50, 60, 4096, 8192, and 32768 Hz.
> +  Not all values are valid for all configurations.  Some chips do not allow
> +  setting both input and output rate.  In this case, only the correct property
> +  should be set.
>
>  The default is ext-clock-input, ext-clock-output, and ext-clock-bb
> -disabled and ext-clock-rate of 1 Hz.
> +disabled and ext-clock-input/output-rate of 1 Hz.
>
>  Example::
>         ds1307: rtc@68 {
> diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
> index 1526273..b772ca3 100644
> --- a/drivers/rtc/rtc-ds1307.c
> +++ b/drivers/rtc/rtc-ds1307.c
> @@ -92,6 +92,8 @@ enum ds_type {
>  #define DS1337_REG_STATUS      0x0f
>  #      define DS1337_BIT_OSF           0x80
>  #      define DS1341_BIT_DOSF          0x40
> +#      define DS1341_BIT_CLKSEL2       0x10
> +#      define DS1341_BIT_CLKSEL1       0x08
>  #      define DS1341_BIT_ECLK          0x04
>  #      define DS1337_BIT_A2I           0x02
>  #      define DS1337_BIT_A1I           0x01
> @@ -293,6 +295,70 @@ static const struct rtc_class_ops ds13xx_rtc_ops = {
>         .set_time       = ds1307_set_time,
>  };
>
> +
> +/* Convert rate in Hz to config bits */
> +static u8 parse_rate(u32 rate)
> +{
> +       switch (rate) {
> +               default:
> +               case 1:     return 0;
> +               case 50:    return DS1307_BIT_RS0;
> +               case 60:    return DS1307_BIT_RS1;
> +               case 4096:  return DS1307_BIT_RS0;
> +               case 8192:  return DS1307_BIT_RS1;
> +               case 32768: return DS1307_BIT_RS0|DS1307_BIT_RS1;
> +       }
> +}
> +
> +/* Produces a config word with DT settings.  This word must be
> + * translated into chip specific bits.  The low 8-bit are basically
> + * identical to the ds1307/1308/1338 control reg to make this
> + * translation simpler.
> + *
> + * Word uses these bits:
> + * DS1308_BIT_ECLK             enable external clock input
> + * DS1307_BIT_SQWE             enable square wave output
> + * DS1308_BIT_BBCLK            enable square wave on battery
> + * DS1307_BIT_RS1/0            square wave output frequency
> + * DS1307_BIT_RS1/0 << 8       external clock input frequency
> + *
> + * The rate select bits will be zero if not specified in the device
> + * tree.
> + */
> +static u16 ds1307_config(const struct device_node *np)
> +{
> +       u16 control = 0;
> +       u32 rate;
> +
> +       if (of_property_read_bool(np, "ext-clock-input"))
> +               control |= DS1308_BIT_ECLK;
> +
> +       if (of_property_read_bool(np, "ext-clock-output"))
> +               control |= DS1307_BIT_SQWE;
> +
> +       if (of_property_read_bool(np, "ext-clock-bb"))
> +               control |= DS1308_BIT_BBCLK;
> +
> +       rate = 0;
> +       of_property_read_u32(np, "ext-clock-input-rate", &rate);
> +       control |= parse_rate(rate);
> +
> +       rate = 0;
> +       of_property_read_u32(np, "ext-clock-output-rate", &rate);
> +       control |= parse_rate(rate) << 8;
> +
> +       return control;
> +}
> +
> +static void write_if_changed(struct ds1307 *ds1307, u8 *buf,
> +                                int reg, u8 value)
> +{
> +       if (buf[reg] != value) {
> +               buf[reg] = value;
> +               i2c_smbus_write_byte_data(ds1307->client, reg, buf[reg]);
> +       }
> +}
> +
>  static int ds1307_probe(struct device_d *dev)
>  {
>         struct i2c_client *client = to_i2c_client(dev);
> @@ -343,82 +409,6 @@ read_rtc:
>                 goto exit;
>         }
>
> -       if (ds1307->has_alarms) {
> -               /*
> -                 Make sure no alarm interrupts or square wave signals
> -                 are produced by the chip while we are in
> -                 bootloader. We do this by configuring the RTC to
> -                 generate alarm interrupts (thus disabling square
> -                 wave generation), but disabling each individual
> -                 alarm interrupt source
> -                */
> -               buf[DS1337_REG_CONTROL] |= DS1337_BIT_INTCN;
> -               buf[DS1337_REG_CONTROL] &= ~(DS1337_BIT_A2IE | DS1337_BIT_A1IE);
> -
> -               i2c_smbus_write_byte_data(client, DS1337_REG_CONTROL,
> -                                         buf[DS1337_REG_CONTROL]);
> -
> -               if (ds1307->type == ds_1341) {
> -                       /*
> -                        * For the above to be true, DS1341 also has to have
> -                        * ECLK bit set to 0
> -                        */
> -                       buf[DS1337_REG_STATUS] &= ~DS1341_BIT_ECLK;
> -
> -                       /*
> -                        * Let's set additionale RTC bits to
> -                        * facilitate maximum power saving.
> -                        */
> -                       buf[DS1337_REG_STATUS] |=  DS1341_BIT_DOSF;
> -                       buf[DS1337_REG_CONTROL] &= ~DS1341_BIT_EGFIL;
> -
> -                       i2c_smbus_write_byte_data(client, DS1337_REG_CONTROL,
> -                                                 buf[DS1337_REG_CONTROL]);
> -                       i2c_smbus_write_byte_data(client, DS1337_REG_STATUS,
> -                                                 buf[DS1337_REG_STATUS]);
> -               }
> -
> -       }
> -
> -       /* Configure clock using OF data if available */
> -       if (IS_ENABLED(CONFIG_OFDEVICE) && np && !ds1307->has_alarms) {
> -               u8 control = buf[DS1307_REG_CONTROL];
> -               u32 rate = 0;
> -
> -               if (of_property_read_bool(np, "ext-clock-input"))
> -                       control |= DS1308_BIT_ECLK;
> -               else
> -                       control &= ~DS1308_BIT_ECLK;
> -
> -               if (of_property_read_bool(np, "ext-clock-output"))
> -                       control |= DS1307_BIT_SQWE;
> -               else
> -                       control &= ~DS1307_BIT_SQWE;
> -
> -               if (of_property_read_bool(np, "ext-clock-bb"))
> -                       control |= DS1308_BIT_BBCLK;
> -               else
> -                       control &= ~DS1308_BIT_BBCLK;
> -
> -               control &= ~(DS1307_BIT_RS1 | DS1307_BIT_RS0);
> -               of_property_read_u32(np, "ext-clock-rate", &rate);
> -               switch (rate) {
> -                       default:
> -                       case 1:     control |= 0; break;
> -                       case 50:    control |= 1; break;
> -                       case 60:    control |= 2; break;
> -                       case 4096:  control |= 1; break;
> -                       case 8192:  control |= 2; break;
> -                       case 32768: control |= 3; break;
> -               }
> -               dev_dbg(&client->dev, "control reg: 0x%02x\n", control);
> -
> -               if (buf[DS1307_REG_CONTROL] != control) {
> -                       i2c_smbus_write_byte_data(client, DS1307_REG_CONTROL, control);
> -                       buf[DS1307_REG_CONTROL]  = control;
> -               }
> -       }
> -
>         /* Check for clock halted conditions and start clock */
>         fault = 0;
>
> @@ -465,6 +455,52 @@ read_rtc:
>                 goto read_rtc;
>         }
>
> +       /* Configure clock using OF data if available */
> +       if (IS_ENABLED(CONFIG_OFDEVICE) && np) {
> +               u16 config = ds1307_config(np);
> +               if (ds1307->has_alarms) {
> +                       u8 creg = buf[DS1337_REG_CONTROL];
> +                       u8 sreg = buf[DS1337_REG_STATUS];
> +
> +                       /* Translate bits to the DS1337_REG_CONTROL format */
> +                       creg &= ~(DS1337_BIT_RS2 | DS1337_BIT_RS1);
> +                       creg |= (config & 0x003) << 3;

If you swap masking and shifting you should be able to use named
constants instead of magic numbers.

> +                       sreg &= ~(DS1341_BIT_CLKSEL2 | DS1341_BIT_CLKSEL1);
> +                       sreg |= (config & 0x300) >> 5;

Ditto.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
