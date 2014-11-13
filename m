Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22a.google.com ([2a00:1450:400c:c00::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xoscf-0000BG-RC
 for barebox@lists.infradead.org; Thu, 13 Nov 2014 11:31:34 +0000
Received: by mail-wg0-f42.google.com with SMTP id y19so1141844wgg.1
 for <barebox@lists.infradead.org>; Thu, 13 Nov 2014 03:31:11 -0800 (PST)
Message-ID: <5464967C.2040006@gmail.com>
Date: Thu, 13 Nov 2014 12:31:08 +0100
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1415544978-22392-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <20141110080657.GA18558@pengutronix.de> <5460FFB0.9080205@free-electrons.com>
 <20141110184345.GC27002@pengutronix.de> <546113A7.30500@gmail.com>
 <20141111090649.GE27002@pengutronix.de>
 <20141112105637.GN27002@pengutronix.de> <546342EE.20500@gmail.com>
 <20141113090938.GO27002@pengutronix.de> <54647FAA.2090603@gmail.com>
 <20141113104642.GP27002@pengutronix.de>
In-Reply-To: <20141113104642.GP27002@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 0/4] mvebu: Add network support for Armada 370/XP
To: =?ISO-8859-1?Q?Uwe_Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 11/13/2014 11:46 AM, Uwe Kleine-K=F6nig wrote:
> On Thu, Nov 13, 2014 at 10:53:46AM +0100, Sebastian Hesselbarth wrote:
>> On 11/13/2014 10:09 AM, Uwe Kleine-K=F6nig wrote:
>>> On Wed, Nov 12, 2014 at 12:22:22PM +0100, Sebastian Hesselbarth wrote:
>>>> On 11/12/2014 11:56 AM, Uwe Kleine-K=F6nig wrote:
>>>>> Hello again,
>>>>>
>>>>> here come the recent insights.
>>>> [...]
>>>>>
>>>>> It seems to be not possible to easily dump the register space in both
>>>>> U-Boot and barebox for comparison. md 0xf1074000+0x4000 just hangs
>>>>> somewhere in the middle.
>>>>>
>>>>> A difference between U-Boot and barebox is the location where the
>>>>> internal registers are mapped. Maybe something that depends on U-Boot=
's
>>>>> memory layout leaks into barebox because I do 2nd stage booting?
>>>>>
>>>>> Out of ideas at the moment. :-(
>>>>
>>>> Uwe,
>>>>
>>>> Nice comparison, but did you double check caches are disabled? There is
>>>> no support for Dcache on mvebu SoCs in barebox atm.
>>> I would expect that U-Boot disables caches on go. But I remember there
>>> was a bug in that area some time ago.
>>
>> Why should U-Boot do anything on go except jumping to that location?
>>
>>> Now I saw a different behaviour:
>>
>> Let's start from scratch and change one thing at a time:
>>
>> Can you try to UART boot barebox directly and try both eth interfaces?
> I don't manage to boot via UART. The usual outcome is:
>
> Sending boot message. Please reboot the target...\
> Sending boot image...
>    0 % [.................................................................=
.....]
>    2 % [.................................................................=
.....]
>    5 % [.................................................................=
.....]
>    7 % [.................................................................=
.....]
>   10 % [.................................................................=
.....]
>   13 % [..................................xmodem: Connection timed out
>
> If I try to boot a barebox-globalscale-mirabox.img (provided by
> ezequielg in #mvlinux), I get:
>
> $ scripts/kwboot -b ../barebox-globalscale-mirabox.img -t /dev/ttyUSB1
> Sending boot message. Please reboot the target...\
> Sending boot image...
>    0 % [.................................................................=
.....]
>    5 % [.................................................................=
.....]
>   10 % [.................................................................=
.....]
>   14 % [.................................................................=
.....]
>   19 % [.................................................................=
.....]
>   24 % [.................................DDR3 Training Sequence - Ver 2.1=
.6
> DDR3 Training Sequence - Number of DIMMs detected: 1
> +xmodem: Connection timed out

That indeed is strange and indicates some general problem. Can you retry
with setting the baudrate to 115200 (-b 115200 IIRC).

> And funny enough, during testing I added
>
> 	select(fd + 1, &rfds, NULL, NULL, &tv);
>
> to kwboot_tty_recv after the read, this results reproduibly into a
> single NAK and "BootROM: Invalid header checksum".
>
> When booting from nand (as shipped by Netgear) the output starts with:

You need to set boot source byte to UART (0x52 IIRC). Otherwise the NAND
image will not boot from UART boot mode. Check out kwbimage, it should
show you where and how to modify the binary. I cannot recall if kwbimage
can convert it for you already, you also need to update the image header
CRC.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
