Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f175.google.com ([209.85.212.175])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yuxab-0005iF-HR
 for barebox@lists.infradead.org; Wed, 20 May 2015 06:34:50 +0000
Received: by wicmx19 with SMTP id mx19so139089978wic.0
 for <barebox@lists.infradead.org>; Tue, 19 May 2015 23:34:26 -0700 (PDT)
Message-ID: <555C2AEF.206@elfin.de>
Date: Wed, 20 May 2015 08:34:23 +0200
From: Marcel Behlau <marcel.behlau@elfin.de>
MIME-Version: 1.0
References: <5548DA0A.3050408@elfin.de> <20150505155450.GB6325@pengutronix.de>
 <20150506071228.GQ25193@pengutronix.de> <554B4B63.7020301@elfin.de>
 <20150508051242.GV6325@pengutronix.de>
In-Reply-To: <20150508051242.GV6325@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, =?windows-1252?Q?Uwe_Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

Hi,

i found the problem. The Pad Mux Register (0x20E008C and 0x20E0090) are =

not initialised. In both registers is a 0x00000005 (reset value), =

instead of 0x00000016. I think, i must specify the value of the mux =

register in the device tree, too. How can i do this?

Thank in advance,

Marcel

md 0x20E008C-0x20E0093

On 08.05.2015 07:12, Sascha Hauer wrote:
> On Thu, May 07, 2015 at 01:24:19PM +0200, Marcel Behlau wrote:
>> Hi,
>>
>> many thanks for your help. I activated the i2c devices in the device
>> tree, the pinctrl is already done in the imx6q.dtsi, which is
>> included. The used pins are identically with the used pins on the
>> SBC. devinfo told me, that the driver "i2c-fsl" is loaded. After
>> rebuild barebox, it's possible to probe the bus, but the command
>> only answered with an timeout:
>>
>> barebox@Phytec phyFLEX-i.MX6 Quad Carrier-Board:/ i2c_probe 1 83 83
>> probing i2c range 0x53 - 0x53 :
>> i2c2: <i2c_fsl_bus_busy> timeout waiting for I2C bus busy
> I *think* this means that the levels on the bus do not properly follow
> what the controller wants to do. Maybe pullup missing? An oscilloscope
> might help here.
>
> Sascha
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
