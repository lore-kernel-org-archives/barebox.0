Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by casper.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1er47r-0000Hf-6U
 for barebox@lists.infradead.org; Wed, 28 Feb 2018 15:58:44 +0000
Date: Wed, 28 Feb 2018 16:58:20 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180228155820.GA31270@ravnborg.org>
References: <20180228095420.29662-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180228095420.29662-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH] boards: samx6: add initial support for kontron samx6i
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Michael.

The patch triggered a few comments - see below.

> +static int samx6i_mem_init(void)
> +{
> +	int ver, id0, id1;
> +	resource_size_t size = 0;
> +
> +	ver = gpio_get_value(PCBVERSION_PIN);
> +	id0 = gpio_get_value(PCBID0_PIN);
> +	id1 = gpio_get_value(PCBID1_PIN);
> +
> +	if (of_machine_is_compatible("kontron,imx6q-samx6i")) {
> +		if (ver)
> +			size = SZ_1G;
> +		else if (id0 && id1)
> +			size = SZ_4G;
> +		else if (id0)
> +			size = SZ_2G;
> +		else if (id1)
> +			size = SZ_1G;
> +		else
> +			size = SZ_512M;
> +	} else if (of_machine_is_compatible("kontron,imx6dl-samx6i")) {
> +		if (ver)
> +			size = SZ_512M;
> +		if (id0 && id1)
> +			size = SZ_2G;
> +		else if (id0)
> +			size = SZ_1G;
> +		else if (id1)
> +			size = SZ_512M;
> +		else
> +			size = SZ_128M;
> +	}
> +
> +	if (size)
> +		arm_add_mem_device("ram0", 0x10000000, size);
> +
> +	return 0;
> +}
> +mem_initcall(samx6i_mem_init);

This function should return 0 early if there are no compatible DT.
But it does a fews things that are not relavant for other boards.


> +
> +static int samx6i_devices_init(void)
> +{
> +	int ret;
> +	char *environment_path, *default_environment_path;
> +	char *envdev, *default_envdev;
> +
> +	if (!(of_machine_is_compatible("kontron,imx6q-samx6i") ||
> +		of_machine_is_compatible("kontron,imx6dl-samx6i")))
> +		return 0;

Where this looks corrects.
Nothign with side effects called before compatible is checked.

> diff --git a/arch/arm/boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg b/arch/arm/boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
> new file mode 100644
> index 0000000000..761716dd4d
> --- /dev/null
> +++ b/arch/arm/boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
> @@ -0,0 +1,111 @@
> +soc imx6
> +loadaddr 0x10000000
> +dcdofs 0x400
> +
> +wm 32 0x020e0774 0x000c0000
> +wm 32 0x020e0754 0x00000000
> +
> +wm 32 0x020e04ac 0x00000030
> +wm 32 0x020e04b0 0x00000030
> +
> +wm 32 0x020e0464 0x00000030
> +wm 32 0x020e0490 0x00000030
> +wm 32 0x020e074c 0x00000030
> +
> +wm 32 0x020e0494 0x000c0030
> +wm 32 0x020e04a4 0x00003000
> +wm 32 0x020e04a8 0x00003000
> +wm 32 0x020e04a0 0x00000000
> +wm 32 0x020e04b4 0x00003030
> +wm 32 0x020e04b8 0x00003030
> +wm 32 0x020e076c 0x00000030
> +
> +wm 32 0x020e0750 0x00020000
> +wm 32 0x020e04bc 0x00000038
> +wm 32 0x020e04c0 0x00000038
> +wm 32 0x020e04c4 0x00000038
> +wm 32 0x020e04c8 0x00000038
> +wm 32 0x020e04cc 0x00000038
> +wm 32 0x020e04d0 0x00000038
> +wm 32 0x020e04d4 0x00000038
> +wm 32 0x020e04d8 0x00000038
> +
> +wm 32 0x020e0760 0x00020000
> +wm 32 0x020e0764 0x00000030
> +wm 32 0x020e0770 0x00000030
> +wm 32 0x020e0778 0x00000030
> +wm 32 0x020e077c 0x00000030
> +wm 32 0x020e0780 0x00000030
> +wm 32 0x020e0784 0x00000030
> +wm 32 0x020e078c 0x00000030
> +wm 32 0x020e0748 0x00000030
> +
> +wm 32 0x020e0470 0x00000030
> +wm 32 0x020e0474 0x00000030
> +wm 32 0x020e0478 0x00000030
> +wm 32 0x020e047c 0x00000030
> +wm 32 0x020e0480 0x00000030
> +wm 32 0x020e0484 0x00000030
> +wm 32 0x020e0488 0x00000030
> +wm 32 0x020e048c 0x000C0030
> +
> +wm 32 0x021b0800 0xa1390003
> +wm 32 0x021b4800 0xa1390003
> +
> +wm 32 0x021b080c 0x0040003c
> +wm 32 0x021b0810 0x0032003e
> +
> +wm 32 0x021b083c 0x42350231
> +wm 32 0x021b0840 0x021a0218
> +wm 32 0x021b0848 0x4b4b4e49
> +wm 32 0x021b0850 0x3f3f3035
> +
> +wm 32 0x021b081c 0x33333333
> +wm 32 0x021b0820 0x33333333
> +wm 32 0x021b0824 0x33333333
> +wm 32 0x021b0828 0x33333333
> +wm 32 0x021b481c 0x33333333
> +wm 32 0x021b4820 0x33333333
> +wm 32 0x021b4824 0x33333333
> +wm 32 0x021b4828 0x33333333
> +
> +
> +wm 32 0x021b08b8 0x00000800
> +wm 32 0x021b48b8 0x00000800
> +
> +wm 32 0x021b0004 0x0002002d
> +wm 32 0x021b0008 0x00333030
> +wm 32 0x021b000c 0x696d5323
> +wm 32 0x021b0010 0xb66e8c63
> +wm 32 0x021b0014 0x01ff00db
> +wm 32 0x021b0018 0x00001740
> +wm 32 0x021b001c 0x00008000
> +wm 32 0x021b002c 0x000026d2
> +wm 32 0x021b0030 0x006d0e21
> +wm 32 0x021b0040 0x00000027
> +wm 32 0x021b0000 0x84190000
> +wm 32 0x021b001c 0x04008032
> +wm 32 0x021b001c 0x00008033
> +wm 32 0x021b001c 0x00048031
> +wm 32 0x021b001c 0x07208030
> +wm 32 0x021b001c 0x04008040
> +wm 32 0x021b0020 0x00005800
> +wm 32 0x021b0818 0x00022227
> +wm 32 0x021b4818 0x00022227
> +wm 32 0x021b0004 0x0002556d
> +wm 32 0x021b4004 0x00011006
> +wm 32 0x021b001c 0x00000000
> +
> +/* set the default clock gate to save power */
> +wm 32 0x020c4068 0x00C03F3F
> +wm 32 0x020c406c 0x0030FC03
> +wm 32 0x020c4070 0x0FFFC000
> +wm 32 0x020c4074 0x3FF00000
> +wm 32 0x020c4078 0x00FFF300
> +wm 32 0x020c407c 0x0F0000C3
> +wm 32 0x020c4080 0x000003FF
> +
> +wm 32 0x020e0010 0xf00000ff
> +
> +wm 32 0x020e0018 0x00070007
> +wm 32 0x020e001c 0x00070007

Are there any DEFINES's that could replace all these magic numbers?
I recall this is possible for some but not all imx6 variants.
Likewise for the next .imxcfg file.

> diff --git a/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi b/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
> new file mode 100644
> index 0000000000..e259a97d5d
> --- /dev/null
> +++ b/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
...

This looks like a general file that is not kontron board specific,
and thus should be in a preparation patch? But reading the
content of the file I am uncertain...


	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
