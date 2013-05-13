Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22d.google.com ([2a00:1450:4008:c01::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbotA-0008ML-Dj
 for barebox@lists.infradead.org; Mon, 13 May 2013 09:17:49 +0000
Received: by mail-bk0-f45.google.com with SMTP id je9so2283767bkc.4
 for <barebox@lists.infradead.org>; Mon, 13 May 2013 02:17:25 -0700 (PDT)
Message-ID: <5190AFA1.1080503@gmail.com>
Date: Mon, 13 May 2013 11:17:21 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368364146-6024-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130513075852.GG32299@pengutronix.de>
In-Reply-To: <20130513075852.GG32299@pengutronix.de>
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

On 05/13/2013 09:58 AM, Sascha Hauer wrote:
> On Sun, May 12, 2013 at 03:09:04PM +0200, Sebastian Hesselbarth wrote:
>> This commit adds minimal support for the Marvell Dove SoC (88AP510) as
>> first SoC of the Marvell Orion family. Orion SoCs have a different timer,
>> therefore current mach-mvebu and Armada 370/XP Kconfig and Makefiles are
>> slightly modified and a new clocksource drivers is added.
>>
>> Signed-off-by: Sebastian Hesselbarth<sebastian.hesselbarth@gmail.com>
>> ---
>> Note: Linux for Dove expects internal registers to be remapped. For more
>> compatibility with barebox for MVEBU, I did not remap those yet. I rather
>> suggest to allow to add a pre-boot hook right before linux gets booted by
>> barebox.
>
> Damn, I thought that the PowerPC SoCs are the only ones that have such a
> crazy register hiding feature.
>
> I'd really prefer that the barebox memory layout is compatible to the
> existing devicetrees. Otherwise we block the way of probing barebox from
> the devicetree and to start barebox second stage.

Sascha,

memory layout will be compatible for sure. Just because I will not
rewrite the whole bunch of dtsi files we built up in the past ;)

> Is it possible to remap the registers using the kwbimage tool? That way
> every code that runs would see the desired register layout.

Although possible, I prefer a different approach:
- IIRC all MVEBU SoCs boot up at 0xd0000000
- Have a regbase variable within barebox that initially points to that
- Have a mvreadl/mvwritel that adds it to reg offsets
- Rewrite _initial_ SoC code to use mvreadl/mvwritel
- Remap during init after we can parse the DT tree but before timer and
   modify the pointer above

The regbase pointer is required as early debug _will_ access register
before and after remap and there is no way around it. But
mvreadl/mvwritel will be limited to code that sits in mach-mvebu, all
drivers will depend on DT.

Actually, I have a branch at

git://github.com/shesselba/barebox-dove.git mvebu-dt-v0

booting Dove and Armada 370 from full DT. You can have a sneak preview
where Thomas and I will push Marvell support to soon.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
