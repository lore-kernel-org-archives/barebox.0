Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-db3eur04on070e.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::70e]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iueRC-0002A1-KA
 for barebox@lists.infradead.org; Thu, 23 Jan 2020 15:30:32 +0000
From: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>
Date: Thu, 23 Jan 2020 15:30:25 +0000
Message-ID: <DB8PR03MB549871DF5E2805242C71347AFE0F0@DB8PR03MB5498.eurprd03.prod.outlook.com>
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
 <0a8e32e7-7100-e834-97c8-de27959e41dd@gmail.com>
In-Reply-To: <0a8e32e7-7100-e834-97c8-de27959e41dd@gmail.com>
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
To: "Robert Berger@yocto.user" <robert.berger.yocto.user@gmail.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>, Enrico Joerns <ejo@pengutronix.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Robert,

there where no SDK, bison and flex missing. Now it compiled. Thanx.
There are 

Copying it onto the system and running it from the console just returned error code 132 and: 
Illegal instruction

I copied the .config file from yocto into the barebox directory. Do I have still the wrong architecture?

Perhaps I have to copy  ./images/barebox-phytec-phycard-imx6q-1gib.img onto the destination system starting at offset 0x1000 using dd.
How to copy barebox onto the sdcard? There is no setupmbr executable in ./scripts/setupmbr, just a c file and no working Makefile.

Thank you and Best Regards

hu




-----Original Message-----
From: Robert Berger@yocto.user <robert.berger.yocto.user@gmail.com> 
Sent: Wednesday, 22 January 2020 18:59
To: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>; Ahmad Fatoum <a.fatoum@pengutronix.de>; Enrico Joerns <ejo@pengutronix.de>
Cc: yocto@lists.yoctoproject.org; barebox@lists.infradead.org
Subject: Re: [yocto] #yocto bootchooser: Cannot get state 'state'

Hi,

Did you install the SDK?

Did you run the environment script?

> make: /path/to/your/yocto/toolchain/bin/arm--linux-gnueabihf-gcc: Kommando nicht gefunden
>    LEX     scripts/kconfig/lexer.lex.c
> /bin/sh: 1: flex: not found

>    YACC    scripts/kconfig/parser.tab.h
> /bin/sh: 1: bison: not found

flex and bison seem to be missing as well.

Regards,

Robert
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
