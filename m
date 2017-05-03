Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d5uV8-00052s-PE
 for barebox@lists.infradead.org; Wed, 03 May 2017 13:39:32 +0000
References: <cover.b17594671f0f1ee5a936d08ad9512705c8fa52e5.1493390425.git-series.s.trumtrar@pengutronix.de>
 <986f3304de6e87182f79273efe3529bf4e0c7289.1493390425.git-series.s.trumtrar@pengutronix.de>
 <20170503115247.kl4c2y7fzkl73dlr@pengutronix.de>
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-reply-to: <20170503115247.kl4c2y7fzkl73dlr@pengutronix.de>
Date: Wed, 03 May 2017 15:39:09 +0200
Message-ID: <73a86uhxfm.fsf@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH v2 7/8] ARM: socfpga: add support for reflex achilles board
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


Sascha Hauer <s.hauer@pengutronix.de> writes:

> On Fri, Apr 28, 2017 at 04:41:43PM +0200, Steffen Trumtrar wrote:
>> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>> ---
>>  arch/arm/boards/Makefile                                |   1 +-
>>  arch/arm/boards/reflex-achilles/Makefile                |   2 +-
>>  arch/arm/boards/reflex-achilles/hps.xml                 | 351 +++++++++-
>>  arch/arm/boards/reflex-achilles/lowlevel.c              |  48 +-
>>  arch/arm/boards/reflex-achilles/pinmux-config-arria10.c | 102 +++-
>>  arch/arm/boards/reflex-achilles/pll-config-arria10.c    |  54 +-
>>  arch/arm/dts/Makefile                                   |   1 +-
>>  arch/arm/dts/socfpga_arria10_achilles.dts               | 124 +++-
>>  arch/arm/mach-socfpga/Kconfig                           |   5 +-
>>  images/Makefile.socfpga                                 |   4 +-
>>  10 files changed, 692 insertions(+)
>>  create mode 100644 arch/arm/boards/reflex-achilles/Makefile
>>  create mode 100644 arch/arm/boards/reflex-achilles/hps.xml
>>  create mode 100644 arch/arm/boards/reflex-achilles/lowlevel.c
>>  create mode 100644 arch/arm/boards/reflex-achilles/pinmux-config-arria10.c
>>  create mode 100644 arch/arm/boards/reflex-achilles/pll-config-arria10.c
>>  create mode 100644 arch/arm/dts/socfpga_arria10_achilles.dts
>> 
>> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
>> index 250ccb88896f..bcd94a05694e 100644
>> --- a/arch/arm/boards/Makefile
>> +++ b/arch/arm/boards/Makefile
>> @@ -110,6 +110,7 @@ obj-$(CONFIG_MACH_SAMA5D4EK)			+= sama5d4ek/
>>  obj-$(CONFIG_MACH_SCB9328)			+= scb9328/
>>  obj-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK)		+= altera-socdk/
>>  obj-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES)		+= ebv-socrates/
>> +obj-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES)	+= reflex-achilles/
>>  obj-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC)	+= terasic-de0-nano-soc/
>>  obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)	+= terasic-sockit/
>>  obj-$(CONFIG_MACH_SOLIDRUN_CUBOX)		+= solidrun-cubox/
>> diff --git a/arch/arm/boards/reflex-achilles/Makefile b/arch/arm/boards/reflex-achilles/Makefile
>> new file mode 100644
>> index 000000000000..6b4214115300
>> --- /dev/null
>> +++ b/arch/arm/boards/reflex-achilles/Makefile
>> @@ -0,0 +1,2 @@
>> +obj-y += lowlevel.o
>> +pbl-y += lowlevel.o
>> diff --git a/arch/arm/boards/reflex-achilles/hps.xml b/arch/arm/boards/reflex-achilles/hps.xml
>
> Do we need this file in barebox?
>
Hm, no :-(

Steffen

-- 
Pengutronix e.K.                           | Steffen Trumtrar            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
