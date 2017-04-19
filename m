Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt0-x22a.google.com ([2607:f8b0:400d:c0d::22a])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0lJS-0006Zc-AW
 for barebox@lists.infradead.org; Wed, 19 Apr 2017 08:50:12 +0000
Received: by mail-qt0-x22a.google.com with SMTP id y33so13591206qta.2
 for <barebox@lists.infradead.org>; Wed, 19 Apr 2017 01:49:49 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170419064224.rbteqga5qnxl6vab@pengutronix.de>
References: <CAARUG94j21s-AC0-gXYG81SjnCa1ahPfH1oaq=fb+rFgEpSE8A@mail.gmail.com>
 <CAARUG94vbynM7MJu=kfPynABwf5rhDDd3OBM-2SyRy0PFO_8kQ@mail.gmail.com>
 <20170419064224.rbteqga5qnxl6vab@pengutronix.de>
From: Zdenek Svachula <zdenek.svachula@medictech.com>
Date: Wed, 19 Apr 2017 10:49:48 +0200
Message-ID: <CAARUG96-AwprU-i9Kof9rzgVpk1FymmHpJM4M1yybEGxOwwp1w@mail.gmail.com>
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
Subject: Re: gpio-keys on barebox 2015.11
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

My board is  Phytec phyFLEX-i.MX6 Quad Carrier-Board.
I look to commit 7a037a952da8083e2eddcb2b2e180f0629e83758 Author:
Sascha Hauer <s.hauer@pengutronix.de>
Date:   Fri Feb 14 11:55:02 2014 +0100

    input: gpio-keys: Add devicetree probe support

    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

that seem ok.
I look also in boot-up info that nothing indicate that gpio-keys
driver is loaded

I loog to .config that seem be ok
(from my .config)
#
# Drivers
#
CONFIG_OFTREE=y
CONFIG_OFTREE_MEM_GENERIC=y
CONFIG_DTC=y
CONFIG_OFDEVICE=y
CONFIG_OF_NET=y
CONFIG_OF_GPIO=y
CONFIG_OF_BAREBOX_DRIVERS=y

rereading to changes in arch/arm/boards/archosg9 and commit 28ce80f5
it seems that some parts missing in phtec ini sequence but I'm not
sure about it.

Thaks you

Zdenek
___________________________
zdenek.svachula@medictech.com


On Wed, Apr 19, 2017 at 8:42 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Wed, Apr 12, 2017 at 05:35:46PM +0200, Zdenek Svachula wrote:
>> Hi all,
>>
>> I'm working with barebox 2015.11 phy4 (from phytex.de) I try add to dts
>>         gpio_keys {
>>                 compatible = "gpio-keys";
>>                 #address-cells = <1>;
>>                 #size-cells = <0>;
>>                 autorepeat;
>>                 up {
>>                                 label = "GPIO Key up";
>>                                 linux,code = <103>;
>>                                 gpios = <&gpio2 24 1>;
>>                 };
>>                 enter {
>>                                 label = "GPIO Key ENTER";
>>                                 linux,code = <28>;
>>                                 gpios = <&gpio5 8 1>;
>>                 };
>>
>>
>>         };
>>
>> to allow boot selection boot menu via 2 gpio button  I also enable
>> GPIO-buttons in menuconfig but it seem not workin.
>>
>> Can you please me point to some method how to debug if gpio polling
>> works or if dts is for barebox wrong.
>
> Generally the above looks ok and should work like this. Try 'devinfo'
> command and identify the gpio-keys device (usually named gpio-keys.<x>).
> Use 'devinfo gpio-keys.<x>' to find out if there is a driver attached to
> this device. If there isn't, do you find something about gpio-keys in
> the boot log?
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
