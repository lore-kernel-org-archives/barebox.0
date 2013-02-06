Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qe0-f51.google.com ([209.85.128.51])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U37Lf-0002fN-E0
 for barebox@lists.infradead.org; Wed, 06 Feb 2013 15:55:48 +0000
Received: by mail-qe0-f51.google.com with SMTP id 6so697864qea.24
 for <barebox@lists.infradead.org>; Wed, 06 Feb 2013 07:55:45 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20130205181022.GA27438@pengutronix.de>
References: <1360083234-8252-1-git-send-email-h.feurstein@gmail.com>
 <20130205181022.GA27438@pengutronix.de>
Date: Wed, 6 Feb 2013 16:55:45 +0100
Message-ID: <CAFfN3gV+ddEDNjzKjKBMnEsoM9csqE3cVj1NHQsLpj_VnbTrJg@mail.gmail.com>
From: Hubert Feurstein <h.feurstein@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC PATCH] ARM i.MX6: Add support for SabreSD board
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Steffen,

2013/2/5 Steffen Trumtrar <s.trumtrar@pengutronix.de>:
>> +static int sabresd_devices_init(void)
>> +{
>> +     imx6_add_mmc1(&sabresd_sd2_data);
>> +     imx6_add_mmc2(&sabresd_sd3_data);
>> +     imx6_add_mmc3(&sabresd_sd4_data);
>> +
>> +     sabresd_enet_setup();
>
> I think this is not necessary. The SabreSD ethernet works without this
> and you can merge the two pinmuxings. On the SabreLite this was necessary
> because of remuxing.
OK

> The rest of the ethernet looks okay though and should work. I have a v2012.08.0
> barebox for the SabreSD that only does ethernet (Forgot to mainline the patches
> :-( ). The pinctrl and the rest is almost the same. The only difference is the
> rgmii_rework.
> I have
>         imx6_add_fec(&fec_info);
>         mx6_rgmii_rework();
I recognized, that my rework code is the same as for the Arm2-board.
But ethernet is still not working yet.
Btw, what are your clock settings? I'm also a little bit confused
about that fec_imx.c requests
the 'ipg' clock (is this the correct one, btw? shouldn't it be
'enet_ref' ?), but then the clock
is not enabled. Looks like a bug. But even with enabled clocks it does
not work ...

Here's the boot log:

barebox 2013.01.0-00346-g8aa2579-dirty #112 Wed Feb 6 16:23:37 CET 2013
Board: SabreSD
[...]
fec clock ipg
mdio_bus: miibus0: probed
fec probed
eth0: got preset MAC address: 00:04:9F:02:6F:1C
malloc space: 0x13800000 -> 0x177fffff (size 64 MiB)
stack space:  0x137f8000 -> 0x137fffff (size 32 KiB)
Open /dev/env0 No such file or directory
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...

Hit m for menu or any other key to stop autoboot:  3

type exit to get to the menu
barebox@SabreSD:/
barebox@SabreSD:/ dhcp
1000Mbps full duplex link detected
T T T T T T T T T T T T T T T T T T T T dhcp failed: Connection timed out
dhcp: Connection timed out
barebox@SabreSD:/

[...]

>
> If I see this right, it is not _based_ on freescale-mx6-sabrelite/flash_header.c,
> but is the SAME file and therefore the same as freescale-mx6-arm2/flash_header.c
In fact it is the same file as for SabreLite, the Arm2 is slightly
different. But maybe they
can be consolidated.

[...]

Regards,
Hubert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
