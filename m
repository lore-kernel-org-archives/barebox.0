Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f174.google.com ([209.85.212.174])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YqJv2-0003eN-ER
 for barebox@lists.infradead.org; Thu, 07 May 2015 11:24:45 +0000
Received: by wizk4 with SMTP id k4so238378372wiz.1
 for <barebox@lists.infradead.org>; Thu, 07 May 2015 04:24:21 -0700 (PDT)
Message-ID: <554B4B63.7020301@elfin.de>
Date: Thu, 07 May 2015 13:24:19 +0200
From: Marcel Behlau <marcel.behlau@elfin.de>
MIME-Version: 1.0
References: <5548DA0A.3050408@elfin.de> <20150505155450.GB6325@pengutronix.de>
 <20150506071228.GQ25193@pengutronix.de>
In-Reply-To: <20150506071228.GQ25193@pengutronix.de>
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
Subject: Re: Usage of i2c_-Tools in Barebox
To: =?windows-1252?Q?Uwe_Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

many thanks for your help. I activated the i2c devices in the device =

tree, the pinctrl is already done in the imx6q.dtsi, which is included. =

The used pins are identically with the used pins on the SBC. devinfo =

told me, that the driver "i2c-fsl" is loaded. After rebuild barebox, =

it's possible to probe the bus, but the command only answered with an =

timeout:

barebox@Phytec phyFLEX-i.MX6 Quad Carrier-Board:/ i2c_probe 1 83 83
probing i2c range 0x53 - 0x53 :
i2c2: <i2c_fsl_bus_busy> timeout waiting for I2C bus busy

I'm using barebox-2013.08.0, which is provided by the phytec-bsp.

Thanks in advance,

Marcel


On 06.05.2015 09:12, Uwe Kleine-K=F6nig wrote:
> Hello,
>
> On Tue, May 05, 2015 at 05:54:50PM +0200, Sascha Hauer wrote:
>> On Tue, May 05, 2015 at 04:56:10PM +0200, Marcel Behlau wrote:
>>> i'm using a phyFLEX-i.MX6 SBC and want to communicate with an
>>> external =B5C over I2C. I only want to read/set 1 register, so i tried
>>> to use the builtin i2c_read and i2c_write-Commands. The =B5C is
>>> connected to i2c-bus 1 of the device, so i tried to probe the hole
>>> bus with "i2c_bus 1 3 30". The command only answered with
>>> "i2c_probe: No such device". I tried also the busses 0-3, with the
>>> same result. I searched in the board.c sourcecode of the phyflex,
>>> but couldn't find i2c related stuff, so i think, i have to add the
>>> initalisation for the i2c.
>>>
>>> Do i have to add the i2c-init in the boards/phytec-pfla02/board.c
>>> -file? Is there some documenation about this stuff?
>> The phyFLEX board is device tree based. You have to enable the i2c
>> controller in the dts file (same as you would do in the kernel).
>> Usually a:
>>
>> &i2c0 {
>> 	status =3D "okay";
>> };
>>
>> Should be enough. You probably also have to add the proper pinctrl node.
> and enable the i2c driver. You might want to check the output of
> devinfo.
>
> Best regards
> Uwe
>

-- =

Dipl. Ing (FH) Marcel Behlau
(Software Developer)

ELFIN GmbH
Siegburger Stra=DFe 215
50679 K=F6ln
Germany

Tel: +49 (221) 6778932-0
Fax: +49 (221) 6778932-2
marcel.behlau@elfin.de
www.elfin.de


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
