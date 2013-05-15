Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x233.google.com ([2a00:1450:4008:c01::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcVWG-00007x-U4
 for barebox@lists.infradead.org; Wed, 15 May 2013 06:49:01 +0000
Received: by mail-bk0-f51.google.com with SMTP id ji2so792791bkc.38
 for <barebox@lists.infradead.org>; Tue, 14 May 2013 23:48:37 -0700 (PDT)
Message-ID: <51932FC2.2050900@gmail.com>
Date: Wed, 15 May 2013 08:48:34 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368364146-6024-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130513075852.GG32299@pengutronix.de> <5190AFA1.1080503@gmail.com>
 <20130515055550.GZ32299@pengutronix.de> <51932913.90704@gmail.com>
 <20130515063920.GC32299@pengutronix.de>
In-Reply-To: <20130515063920.GC32299@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/5] arm: initial support for Marvell Dove SoCs
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

On 05/15/2013 08:39 AM, Sascha Hauer wrote:
> On Wed, May 15, 2013 at 08:20:03AM +0200, Sebastian Hesselbarth wrote:
>> On 05/15/2013 07:55 AM, Sascha Hauer wrote:
>>>>> Is it possible to remap the registers using the kwbimage tool? That way
>>>>> every code that runs would see the desired register layout.
>>>>
>>>> Although possible, I prefer a different approach:
>>>> - IIRC all MVEBU SoCs boot up at 0xd0000000
>>>> - Have a regbase variable within barebox that initially points to that
>>>> - Have a mvreadl/mvwritel that adds it to reg offsets
>>>> - Rewrite _initial_ SoC code to use mvreadl/mvwritel
>>>
>>> I applied this series, but please get this topic done before more code
>>> enters that has to be changed when doing the above.
...
>> I will work with Thomas on this asap and find a solution, but I am
>> not sure if it will work without dirty tricks. Thomas has one in
>> mind and I tend to agree with him on this one.
>
> I hope the tricks won't get too dirty, otherwise it may be better to
> drop the 2nd stage feature.
> BTW. in earlier days we used to start 2nd stage loaders with the 'go'
> command, but nowadays we have 'bootm' which could detect that it's a
> barebox image we are about to start and could create whatever register
> mapping  a barebox image expects.

Ok, then I guess it would be easier and cleaner to remap registers to
the bootup register base.

> This wouldn't help when starting a barebox image for example from
> U-Boot or JTAG, but would at least make it possible to chainload barebox
> from barebox.
>
>> Further, yesterday when I played with Armada 370 I wasn't able to
>> have it boot with a variable pointer but the same code boots with
>> a pointer that never gets modified. Haven't investigated more, but
>> if we remap first thing after boot, that can remain constant at the
>> remapped reg base.
>
> Is the barebox binary copied to its link address by the ROM already or
> does barebox need to copy itself to the link address? That would make
> using global variables impossible befor copying to the correct address.

BootROM takes care of copying the binary to TEXT_BASE. But with the
above re-remap it should remain constant all the time.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
