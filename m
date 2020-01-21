Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-db3eur04on0708.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::708]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ityG9-0005RI-T0
 for barebox@lists.infradead.org; Tue, 21 Jan 2020 18:28:21 +0000
From: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>
Date: Tue, 21 Jan 2020 18:28:15 +0000
Message-ID: <DB8PR03MB54985379C7F9387F160929E7FE0D0@DB8PR03MB5498.eurprd03.prod.outlook.com>
References: <r276.1579090214262888471.6UJY@lists.yoctoproject.org>
 <1579093362.13056.13.camel@pengutronix.de>
 <DB8PR03MB54983C09B221B210D29A26AAFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <45b34e63-a9fd-2295-311c-393bf49fdf93@pengutronix.de>
 <DB8PR03MB549847FD100DF7192459527FFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <f451a45a-a4bc-f285-0614-001cb3a57405@pengutronix.de>
 <1579099664.13056.29.camel@pengutronix.de>
 <AM6PR03MB54939235100D4D6E455AF4C1FE360@AM6PR03MB5493.eurprd03.prod.outlook.com>
 <1c275d4d-cf23-caf5-072e-2517080950c1@pengutronix.de>
In-Reply-To: <1c275d4d-cf23-caf5-072e-2517080950c1@pengutronix.de>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: RE: [yocto] #yocto bootchooser: Cannot get state 'state'
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Enrico Joerns <ejo@pengutronix.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Ahmad, 

>   git clone https://eur04.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.pengutronix.de%2Fgit%2Fbarebox&amp;data=01%7C01%7Chu.schlieben%40codewrights.de%7C5fdd291346554b1d5e3d08d79dbdda2b%7C0974af9b352b437cb606e9f242c0c227%7C0&amp;sdata=L8WAZYdcm0kjTNZG8OFnedXXyG3DHyIHx1r4gh%2B%2FC%2BI%3D&amp;reserved=0
>   cd barebox
>   cp $your_barebox_config_in_yocto .config
>   make -j$(nproc) CROSS_COMPILE=/path/to/your/yocto/toolchain/bin/arm-$your_vendor-linux-gnueabihf- ARCH=arm

I tried to build the barebox sources but got the following error:
$ make -j$(nproc) CROSS_COMPILE=/path/to/your/yocto/toolchain/bin/arm-$your_vendor-linux-gnueabihf- ARCH=arm
make: /path/to/your/yocto/toolchain/bin/arm--linux-gnueabihf-gcc: Kommando nicht gefunden
  LEX     scripts/kconfig/lexer.lex.c
/bin/sh: 1: flex: not found
make[2]: *** [scripts/Makefile.lib:194: scripts/kconfig/lexer.lex.c] Fehler 127
make[2]: *** Es wird auf noch nicht beendete Prozesse gewartet....
  YACC    scripts/kconfig/parser.tab.h
/bin/sh: 1: bison: not found
make[2]: *** [scripts/Makefile.lib:208: scripts/kconfig/parser.tab.h] Fehler 127
make[1]: *** [/opt/apps/zeus/barebox/barebox/Makefile:422: syncconfig] Fehler 2
make: *** [Makefile:463: include/config/auto.conf.cmd] Fehler 2

Is the .config file wrong? I copied it from the barebox folder where I built barebox 2017 version.

 
> under images/ you will have the barebox images. You can get that onto your device using a SD-Card, imx-usb-loader, tftp ... etc.
When the build succeeds where or how to put the image on the sdcard?
By the way, which image is it there a lots of images in the ./image folder and there is none named imx6qdl? There are some named imx6dl and one imx6q.

> 
> If you want to do it in Yocto, there are meta-ptx and meta-barebox that have more recent barebox versions.
Tomorrow I will try too, to build the upstream version using yocto.

Thank you so much.

Best Regards

hu
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
