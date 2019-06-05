Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYNV7-0005xC-Cn
 for barebox@lists.infradead.org; Wed, 05 Jun 2019 04:26:14 +0000
Received: by mail-vk1-xa42.google.com with SMTP id g124so32182vkd.1
 for <barebox@lists.infradead.org>; Tue, 04 Jun 2019 21:26:12 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.44637.1559659159.2376.barebox@lists.infradead.org>
In-Reply-To: <mailman.44637.1559659159.2376.barebox@lists.infradead.org>
From: Valentina Rusu <skorpyon1992@gmail.com>
Date: Wed, 5 Jun 2019 07:26:00 +0300
Message-ID: <CAPYMOwmTx7aH-C5OZL+5RXXcyWnF7aswTduVL4b9F8jw+LEfjA@mail.gmail.com>
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
Subject: Re: Raspberry Pi Barebox State Integration - SD card
To: barebox@lists.infradead.org

Thank you for the response!

I had a quick look over this patch, I need to find a way to adapt it
for RPi 3, as vmmc-supply , reg_3v3, vqmmc-supply, reg_1v8 are not
configured for rpi 3 (they exist only for CM1 and CM3 as I have seen
in the device tree sources).

I don't know if there are any implications if I use those nodes
similar to CM3 (don't know the differences between 3 and CM3).

      Best regards,
          Vali.

> Date: Tue, 04 Jun 2019 10:59:23 +0200
> From: Moritz Augsburger <ml+barebox@moritz.augsburger.name>
> To: barebox@lists.infradead.org
> Subject: Re: Raspberry Pi Barebox State Integration - SD card
> Message-ID: <e7c88d1ca9dd8acc056490158be54e39@moritz.augsburger.name>
> Content-Type: text/plain; charset=US-ASCII; format=flowed
>
> Hi,
>
> Am 2019-06-04 08:32, schrieb Valentina Rusu:
> > The issue to integrate Barebox state are the following:
> > * we need to specify a backend for the "state" node;
> > * the backend should point to an of partition on a non-volatile memory;
> > * other boards have EEPROM, NAND besides SD card and they are
> > described in the device tree; RPi has no such thing;
> > * somehow I need to write the state on the SD card in a location where
> > does not interfere with the partitions created (boot, rootfs, user
> > partitions, etc);
> > * the SD card device (mci0) is automatically detected at startup, and
> > not described in the device tree;
>
> Below is a part of my patches, using the emmc on a Compute Module as
> state backend.
> It uses the region between MBR and first partition (starting @4MB) to
> save the state.
>
> The patch may contain changes already done to the latest version, so
> apply carefully.
>
> diff --git a/arch/arm/dts/bcm2837-rpi-3.dts
> b/arch/arm/dts/bcm2837-rpi-3.dts
> index 51883613c..420525b9e 100644
> --- a/arch/arm/dts/bcm2837-rpi-3.dts
> +++ b/arch/arm/dts/bcm2837-rpi-3.dts
> @@ -11,10 +11,5 @@
>   };
>
>   &sdhci {
> -       pinctrl-0 = <&emmc_gpio48>;
> -       /delete-node/ wifi@1;
> -};
> -
> -&sdhost {
>         status = "disabled";
>   };
> diff --git a/arch/arm/dts/bcm2837-rpi-cm3.dts
> b/arch/arm/dts/bcm2837-rpi-cm3.dts
> index cfbffe175..d0144dcbc 100644
> --- a/arch/arm/dts/bcm2837-rpi-cm3.dts
> +++ b/arch/arm/dts/bcm2837-rpi-cm3.dts
> @@ -8,11 +8,76 @@
>         memory {
>                 reg = <0x0 0x0>;
>         };
> +
> +    state: state {
> +        magic = <0x4d433230>;
> +        compatible = "barebox,state";
> +        backend-type = "raw";
> +        backend = <&backend_state_sdhost>;
> +        backend-storage-type = "circular";
> +        backend-stridesize = <0x800>;
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +
> +        bootstate {
> +            #address-cells = <1>;
> +            #size-cells = <1>;
> +            system0 {
> +                #address-cells = <1>;
> +                #size-cells = <1>;
> +                remaining_attempts {
> +                    reg = <0x0 0x4>;
> +                    type = "uint32";
> +                    default = <3>;
> +                };
> +                priority {
> +                    reg = <0x4 0x4>;
> +                    type = "uint32";
> +                    default = <21>;
> +                };
> +            };
> +
> +            system1 {
> +                #address-cells = <1>;
> +                #size-cells = <1>;
> +                remaining_attempts {
> +                    reg = <0x10 0x4>;
> +                    type = "uint32";
> +                    default = <3>;
> +                };
> +                priority {
> +                    reg = <0x14 0x4>;
> +                    type = "uint32";
> +                    default = <20>;
> +                };
> +            };
> +            last_chosen {
> +                reg = <0x2C 0x4>;
> +                type = "uint32";
> +            };
> +        };
> +    };
> +
> +    aliases {
> +        state = &state;
> +    };
> +
>   };
>
> -&sdhci {
> -       pinctrl-0 = <&emmc_gpio48>;
> -       no-sd;
> -       non-removable;
> +&sdhost {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&sdhost_gpio48>;
> +       bus-width = <4>;
> +       vmmc-supply = <&reg_3v3>;
> +       vqmmc-supply = <&reg_1v8>;
>         status = "okay";
> +       partitions {
> +               compatible = "fixed-partitions";
> +               #size-cells = <1>;
> +               #address-cells = <1>;
> +        backend_state_sdhost: part@200000 {
> +                label = "state_sdhost";
> +                reg = <0x200000 0x200000>;
> +        };
> +       };
>   };
>
>
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
