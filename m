Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f177.google.com ([209.85.212.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TESc7-00058z-Ml
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 22:19:24 +0000
Received: by wibhn17 with SMTP id hn17so1315025wib.0
 for <barebox@lists.infradead.org>; Wed, 19 Sep 2012 15:19:18 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.1 \(1498\))
From: Carlo Caione <carlo.caione@gmail.com>
In-Reply-To: <20120918220748.GU25990@game.jcrosoft.org>
Date: Thu, 20 Sep 2012 00:19:11 +0200
Message-Id: <D61358EC-6DC0-4F9B-82B0-CE44AA0976EB@gmail.com>
References: <1348000210-21686-1-git-send-email-carlo.caione@gmail.com>
 <1348000210-21686-2-git-send-email-carlo.caione@gmail.com>
 <20120918220748.GU25990@game.jcrosoft.org>
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
Subject: Re: [PATCH 2/2] Add Raspberry-Pi defconfig
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org


On Sep 19, 2012, at 12:07 AM, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:

> On 22:30 Tue 18 Sep     , Carlo Caione wrote:
>> Signed-off-by: Carlo Caione <carlo@carlocaione.org>
>> ---
>> arch/arm/configs/rpi_defconfig |   45 ++++++++++++++++++++++++++++++++++++++++
> add this in the board patch
>> 1 file changed, 45 insertions(+)
>> create mode 100644 arch/arm/configs/rpi_defconfig
>> 
>> diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
>> new file mode 100644
>> index 0000000..2b35ef8
>> --- /dev/null
>> +++ b/arch/arm/configs/rpi_defconfig
>> @@ -0,0 +1,45 @@
>> +CONFIG_ARCH_BCM2835=y
>> +CONFIG_ARCH_TEXT_BASE=0x00008000
>> +CONFIG_MEMORY_LAYOUT_FIXED=y
> why fixed?

The problem here is that TEXT_BASE is at 0x00008000 and without setting CONFIG_MALLOC_BASE my malloc space falls outside of sdram.

> Best Regards,
> J.

Regards,

--
Carlo Caione
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
