Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x231.google.com ([2a00:1450:400c:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XAZsC-0008Mp-Vn
 for barebox@lists.infradead.org; Fri, 25 Jul 2014 07:25:02 +0000
Received: by mail-we0-f177.google.com with SMTP id w62so3695914wes.8
 for <barebox@lists.infradead.org>; Fri, 25 Jul 2014 00:24:38 -0700 (PDT)
Message-ID: <53D20638.9090106@gmail.com>
Date: Fri, 25 Jul 2014 09:24:40 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1406107690-8605-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20140725070610.GN23235@pengutronix.de>
In-Reply-To: <20140725070610.GN23235@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/5] Early DT and MVEBU DT fixups
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 07/25/2014 09:06 AM, Sascha Hauer wrote:
> On Wed, Jul 23, 2014 at 11:28:05AM +0200, Sebastian Hesselbarth wrote:
>> Historically, early Armada 370 and XP boards where shipped with u-boot
>> not remapping internal register base therefore the upstream dts files
>> reflect that. On barebox we always remap the internal register base to
>> 0xf1000000 and use DT to parse devices, causing the upstream dts to
>> diverge from what we actually see. Currently, we work around the issue
>> by applying a barebox specific dts overlay to reflect the different
>> internal register base.
>>
>> This patch set provides a way to call DT fixups early and apply them
>> even on pbl or appended DTs. This is required for Marvell MVEBU SoCs
>> which can (and do) remap their internal register base address.
>>
>> First, a call to of_fix_tree() is added to of_arm_init() right before
>> of_probe() starts. This allows to apply early registered DT fixups.
>>
>> Patch 2 extends mvebu-mbus to fixup mbus ranges identified by their
>> target ID and target attribute. Patch 3 adds the required internal
>> register ranges to be fixed up for each of the 4 supported MVEBU SoCs.
>> Patch 4 then removes the now redundant DT overlay workarounds.
>>
>> Patch 5 finally installs another DT fixup to properly set directly
>> attached RAM sizes which can read from internal SoC registers. This
>> also removes a runtime warning caused by double-registration of RAM
>> resources from arm_add_memory_device() and of_add_memory() later.
>>
>> Patches have been tested on Armada 370, Dove, and Kirkwood.
>>
>> Sebastian Hesselbarth (5):
>>   ARM: execute OF fixups early
>>   ARM: mvebu: allow to fixup mbus ranges
>>   ARM: mvebu: add register remap for mbus ids
>>   ARM: dts: mvebu: remove mbus ranges overwrite
>>   ARM: mvebu: add fixup for directly attached memory
> 
> I had to think about executing the fixups early a bit. This used
> to fixup the device tree for Linux, now it's used to fixup the
> tree for barebox aswell. I hope this does not have unwanted side
> effects.
> Anyway, it solves your remapping problem nicely, so:
> 
> Applied, thanks

It should cause no harm to other boards that set up fixup later,
you'll have to register the fixup in pure_initcall to make it
modify the early dtb.

Thanks for applying!

Sebastian



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
