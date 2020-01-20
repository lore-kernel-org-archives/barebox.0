Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itZ1h-0006mJ-Ro
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 15:31:46 +0000
References: <r276.1579090214262888471.6UJY@lists.yoctoproject.org>
 <1579093362.13056.13.camel@pengutronix.de>
 <DB8PR03MB54983C09B221B210D29A26AAFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <45b34e63-a9fd-2295-311c-393bf49fdf93@pengutronix.de>
 <DB8PR03MB549847FD100DF7192459527FFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <f451a45a-a4bc-f285-0614-001cb3a57405@pengutronix.de>
 <1579099664.13056.29.camel@pengutronix.de>
 <AM6PR03MB54939235100D4D6E455AF4C1FE360@AM6PR03MB5493.eurprd03.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <1c275d4d-cf23-caf5-072e-2517080950c1@pengutronix.de>
Date: Mon, 20 Jan 2020 16:31:39 +0100
MIME-Version: 1.0
In-Reply-To: <AM6PR03MB54939235100D4D6E455AF4C1FE360@AM6PR03MB5493.eurprd03.prod.outlook.com>
Content-Language: en-US
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
Subject: Re: [yocto] #yocto bootchooser: Cannot get state 'state'
To: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>, Enrico Joerns <ejo@pengutronix.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello,

On 1/16/20 4:13 PM, Hans-Ulrich Schlieben wrote:
> Hi Enrico,
> 
> thank you for your help and for telling me about fdtdump. Works great.
> I could not find any references to state in the device tree.
> There where no references to state and bootchooser in the devicetree. 
> The only references to barebox are two addresses inside the nand:
>         gpmi-nand@00112000 {
> ...
>             partition@0 {
>                 label = "barebox";
>                 reg = <0x00000000 0x00400000>;
>             };
>             partition@1 {
>                 label = "barebox-environment";
>                 reg = <0x00400000 0x00100000>;
>             };
> ...
> And there is a eeprom entry:
>             i2c@021a8000 {
> ...
>                 eeprom@50 {
>                     compatible = "atmel,24c32";
>                     reg = <0x00000050>;
>                 };
> Where to look for state in the devicetree?

As mentioned in the other mail, it's in the barebox device tree
and on Linux boot fixed up into the Linux device tree.

> Anyhow I compiled a zeus image using the old barebox version 2017.12.0 and bootchooser works again with zeus.
> Interesting is that ubi fails too like in thud. So it seems as long as ubi fails state could be used or the other way around.

I don't think they are related.

It would be best if you can try to reproduce this issue with upstream barebox.
To do so without yocto:

  git clone https://git.pengutronix.de/git/barebox
  cd barebox
  cp $your_barebox_config_in_yocto .config
  make -j$(nproc) CROSS_COMPILE=/path/to/your/yocto/toolchain/bin/arm-$your_vendor-linux-gnueabihf- ARCH=arm

under images/ you will have the barebox images. You can get that onto your
device using a SD-Card, imx-usb-loader, tftp ... etc.

If you want to do it in Yocto, there are meta-ptx and meta-barebox that have
more recent barebox versions.

Cheers
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
