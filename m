Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itzzG-0002XX-Kb
 for barebox@lists.infradead.org; Tue, 21 Jan 2020 20:19:02 +0000
References: <r276.1579090214262888471.6UJY@lists.yoctoproject.org>
 <1579093362.13056.13.camel@pengutronix.de>
 <DB8PR03MB54983C09B221B210D29A26AAFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <45b34e63-a9fd-2295-311c-393bf49fdf93@pengutronix.de>
 <DB8PR03MB549847FD100DF7192459527FFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <f451a45a-a4bc-f285-0614-001cb3a57405@pengutronix.de>
 <1579099664.13056.29.camel@pengutronix.de>
 <AM6PR03MB54939235100D4D6E455AF4C1FE360@AM6PR03MB5493.eurprd03.prod.outlook.com>
 <1c275d4d-cf23-caf5-072e-2517080950c1@pengutronix.de>
 <DB8PR03MB54985379C7F9387F160929E7FE0D0@DB8PR03MB5498.eurprd03.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <d5e84c4e-caa0-9685-207f-0964bbc2dada@pengutronix.de>
Date: Tue, 21 Jan 2020 21:18:53 +0100
MIME-Version: 1.0
In-Reply-To: <DB8PR03MB54985379C7F9387F160929E7FE0D0@DB8PR03MB5498.eurprd03.prod.outlook.com>
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

Hello Hans-Ulrich,

On 1/21/20 7:28 PM, Hans-Ulrich Schlieben wrote:
> Hi Ahmad, 
> 
>>   git clone https://eur04.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.pengutronix.de%2Fgit%2Fbarebox&amp;data=01%7C01%7Chu.schlieben%40codewrights.de%7C5fdd291346554b1d5e3d08d79dbdda2b%7C0974af9b352b437cb606e9f242c0c227%7C0&amp;sdata=L8WAZYdcm0kjTNZG8OFnedXXyG3DHyIHx1r4gh%2B%2FC%2BI%3D&amp;reserved=0
>>   cd barebox
>>   cp $your_barebox_config_in_yocto .config
>>   make -j$(nproc) CROSS_COMPILE=/path/to/your/yocto/toolchain/bin/arm-$your_vendor-linux-gnueabihf- ARCH=arm
> 
> I tried to build the barebox sources but got the following error:
> $ make -j$(nproc) CROSS_COMPILE=/path/to/your/yocto/toolchain/bin/arm-$your_vendor-linux-gnueabihf- ARCH=arm
> make: /path/to/your/yocto/toolchain/bin/arm--linux-gnueabihf-gcc: Kommando nicht gefunden
>   LEX     scripts/kconfig/lexer.lex.c
> /bin/sh: 1: flex: not found
> make[2]: *** [scripts/Makefile.lib:194: scripts/kconfig/lexer.lex.c] Fehler 127
> make[2]: *** Es wird auf noch nicht beendete Prozesse gewartet....
>   YACC    scripts/kconfig/parser.tab.h
> /bin/sh: 1: bison: not found
> make[2]: *** [scripts/Makefile.lib:208: scripts/kconfig/parser.tab.h] Fehler 127
> make[1]: *** [/opt/apps/zeus/barebox/barebox/Makefile:422: syncconfig] Fehler 2
> make: *** [Makefile:463: include/config/auto.conf.cmd] Fehler 2
> 
> Is the .config file wrong? I copied it from the barebox folder where I built barebox 2017 version.

You missed the $your_vendor placeholders, which you need to replace with the toolchain vendor you
configured for your Yocto Toolchain. If in doubt, just

apt install gcc-arm-linux-gnueabihf

and use CROSS_COMPILE=gcc-arm-linux-gnueabihf

You also need to install flex and bison.

>> under images/ you will have the barebox images. You can get that onto your device using a SD-Card, imx-usb-loader, tftp ... etc.
> When the build succeeds where or how to put the image on the sdcard?
> By the way, which image is it there a lots of images in the ./image folder and there is none named imx6qdl? There are some named imx6dl and one imx6q.

You will note that device trees starting with imx6qdl always have a .dtsi extension,
which are device tree source _includes_. They aren't full device trees. Most importantly,
they miss the SoC nodes that differentiate between i.MX6 Quad and DualLite.

This is done this way, so you can have the same dtsi and use it in a dts once with imx6q.dtsi
and once more with imx6dl.dtsi without having to replicate the common parts on the SoM.

As for which one to use, depends on your board. If you have a Quad or Dual, use imx6q-$boardname,
if you have Dual Lite or Solo use imx6dl-.


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
