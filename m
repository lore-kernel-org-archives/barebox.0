Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eusmtp01.atmel.com ([212.144.249.243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XUQle-00042F-O2
 for barebox@lists.infradead.org; Thu, 18 Sep 2014 01:44:19 +0000
Message-ID: <541A38B6.7000204@atmel.com>
Date: Thu, 18 Sep 2014 09:43:18 +0800
From: Bo Shen <voice.shen@atmel.com>
MIME-Version: 1.0
References: <1410949295-30296-1-git-send-email-voice.shen@atmel.com>
 <1410949295-30296-9-git-send-email-voice.shen@atmel.com>
 <20140913201231.GB22947@gmail.com>
In-Reply-To: <20140913201231.GB22947@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 8/9] ARM: at91: add sama5d4 soc support #2
To: =?windows-1252?Q?Rapha=EBl_Poggi?= <raphio98@gmail.com>
Cc: barebox@lists.infradead.org

Hi Rapha=EBl Poggi,

On 09/14/2014 04:12 AM, Rapha=EBl Poggi wrote:
>> +static struct clk_lookup periph_clocks_lookups[] =3D {
>> >+	CLKDEV_CON_DEV_ID("macb_clk", "macb0", &macb0_clk),
>> >+	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci0", &mmc0_clk),
>> >+	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci1", &mmc1_clk),
>> >+	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
>> >+	CLKDEV_DEV_ID("at91sam9x5-gpio0", &pioA_clk),
>> >+	CLKDEV_DEV_ID("at91sam9x5-gpio1", &pioB_clk),
>> >+	CLKDEV_DEV_ID("at91sam9x5-gpio2", &pioC_clk),
>> >+	CLKDEV_DEV_ID("at91sam9x5-gpio3", &pioD_clk),
>> >+	CLKDEV_DEV_ID("at91sam9x5-gpio4", &pioE_clk),
> Why not using clkdev_add_physbase for the gpio clocks ?
> This allow to use these clocks in device tree and non device context.

Thanks for remind this. I will fix it in v2.

>> +#else
>> >+void at91_add_device_i2c(short i2c_id, struct i2c_board_info *devices,
>> >+			 int nr_devices) {}
>> >+#endif
> Maybe we can use the new atmel i2c driver, no ?

Yes, we can. However, I think use the GPIO i2c first, after the i2c fix =

has been applied, then switch to use atmel i2c driver. In this way, it =

won't block the sama5d4ek board support go into mainline.

Btw, if the i2c fix has been applied before I send the v2 patch, I will =

switch to use atmel i2c driver.

Best Regards,
Bo Shen





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
