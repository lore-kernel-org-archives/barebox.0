Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x231.google.com ([2a00:1450:400c:c05::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XpC8E-00076f-1E
 for barebox@lists.infradead.org; Fri, 14 Nov 2014 08:21:26 +0000
Received: by mail-wi0-f177.google.com with SMTP id l15so1874975wiw.10
 for <barebox@lists.infradead.org>; Fri, 14 Nov 2014 00:21:04 -0800 (PST)
Message-ID: <5465BB6C.9020700@gmail.com>
Date: Fri, 14 Nov 2014 09:21:00 +0100
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <5460FFB0.9080205@free-electrons.com>
 <20141110184345.GC27002@pengutronix.de> <546113A7.30500@gmail.com>
 <20141111090649.GE27002@pengutronix.de>
 <20141112105637.GN27002@pengutronix.de> <546342EE.20500@gmail.com>
 <20141113090938.GO27002@pengutronix.de> <54647FAA.2090603@gmail.com>
 <20141113104642.GP27002@pengutronix.de> <5464967C.2040006@gmail.com>
 <20141113184412.GQ27002@pengutronix.de>
In-Reply-To: <20141113184412.GQ27002@pengutronix.de>
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

On 11/13/2014 07:44 PM, Uwe Kleine-K=F6nig wrote:
> On Thu, Nov 13, 2014 at 12:31:08PM +0100, Sebastian Hesselbarth wrote:
>>> $ scripts/kwboot -b ../barebox-globalscale-mirabox.img -t /dev/ttyUSB1
>>> Sending boot message. Please reboot the target...\
>>> Sending boot image...
>>>    0 % [...............................................................=
.......]
>>>    5 % [...............................................................=
.......]
>>>   10 % [...............................................................=
.......]
>>>   14 % [...............................................................=
.......]
>>>   19 % [...............................................................=
.......]
>>>   24 % [.................................DDR3 Training Sequence - Ver 2=
.1.6
>>> DDR3 Training Sequence - Number of DIMMs detected: 1
>>> +xmodem: Connection timed out
>>
>> That indeed is strange and indicates some general problem. Can you retry
>> with setting the baudrate to 115200 (-b 115200 IIRC).
> Doesn't change anything. In fact the tty is already configured for
> 115200 Baud. And I would expect that on a mismatch it wouldn't always
> die just after the header is uploaded.
>
> Just noticed that my binary.0 was corrupted as I extraced it from a nand
> dump that also included the oob area ...
>
> With a proper image I get barebox up now.

Great, does that help with the ethernet issues you have been seeing
before?

>>> And funny enough, during testing I added
>>>
>>> 	select(fd + 1, &rfds, NULL, NULL, &tv);
>>>
>>> to kwboot_tty_recv after the read, this results reproduibly into a
>>> single NAK and "BootROM: Invalid header checksum".
> This is still not explained. I would have expected that this select
> doesn't do anything noticable on the remote end.

I cannot tell where you added that select nor can I tell why it breaks
uart boot mode. If you modifiy the code, I admit, you'll have to find
out yourself why it breaks.

Remember that the uart boot mode it neither well documented nor well
suited for "defined timings".. you'll have to hit some timing windows
otherwise it will fail.

>>> When booting from nand (as shipped by Netgear) the output starts with:
>>
>> You need to set boot source byte to UART (0x52 IIRC). Otherwise the NAND
> Just for the log: UART =3D 0x69.

Right.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
