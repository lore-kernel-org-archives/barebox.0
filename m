Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kBZoe-0003hG-N2
 for barebox@lists.infradead.org; Fri, 28 Aug 2020 08:32:58 +0000
Received: by mail-lj1-x22c.google.com with SMTP id w25so363225ljo.12
 for <barebox@lists.infradead.org>; Fri, 28 Aug 2020 01:32:54 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Aug 2020 11:32:36 +0300
Message-Id: <20200828083236.21845-1-antonynpavlov@gmail.com>
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
Subject: [RFC] ARM: run barebox on STM32F429 MCU
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

This commit demonstrates how to run barebox on STM32F429 MCU
with Cortex-M4 core. I suppose code can bee easely improved
to support other STM32 MCUs (STM32F7xx and STM32H7xx).

These MCU can run Linux, see
https://github.com/torvalds/linux/blob/master/arch/arm/mach-stm32/Kconfig#L22

Also U-Boot runs on these MCUs, see
https://github.com/u-boot/u-boot/tree/master/arch/arm/mach-stm32

32F429IDISCOVERY Discovery kit (stm32f429i-disc1) is used
for barebox demonstration, see
https://www.st.com/en/evaluation-tools/32f429idiscovery.html

The patch makes several ugly hacks in barebox arm Makefiles.
These hacks have to be eliminated.

Barebox runs from internal MCU SRAM, no internal ROM or
external RAM is used. The only supported hardware is UART
(thanks to drivers/serial/serial_stm32.c).
pinctrl setup is made by ad-hoc functions imported from libopencm3.
No hardware clocksource is used.

BUILD and RUN HOWTO
===================

   git clone -b 20200827.stm32 https://github.com/frantony/barebox
   cd barebox
   export ARCH=arm
   export CROSS_COMPILE=arm-none-eabi-
   make stm32_defconfig
   make

Resulting file is 'barebox'.

Connect to stm32f429i-disc1' STLink via USB.
Run openocd in a separate shell:

   sudo openocd -f interface/stlink-v2.cfg -c "transport select hla_swd"
-f target/stm32f4x.cfg -c init

Next load barebox into MCU's SRAM and run it:

   gdb-multiarch -x gdb.conf

TODO
====

  [ ] separate debug_ll for stm32f4 uart
  [ ] stack setup (at the moment gdb script sets up stack registers)
  [ ] support clocksource (see st,stm32-timer/ARMV7M_SYSTICK)
  [ ] separate stm32mp and stm32f, rename arch/arm/mach-stm32mp to arch/arm/mach-stm32
  [ ] add options for cache/nommu/-mcpu=cortex-m4 ...,
      e.g. see linux kernel options
      * CPU_THUMBONLY
      * CPU_V7M
      * CPU_CACHE_V7M
      * ARMV7M_SYSTICK
  [ ] use st,stm32-rcc
  [ ] support external SDRAM on the board
  [ ] use gpio driver
  [ ] internal MCU flash support

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/Kconfig                              |   2 +-
 arch/arm/Makefile                             |   2 +-
 arch/arm/configs/stm32_defconfig              |  55 +++
 arch/arm/cpu/Makefile                         |   8 +-
 arch/arm/cpu/no-mmu.c                         |   2 +-
 arch/arm/cpu/start.c                          | 325 +++++++++++++++++-
 arch/arm/dts/Makefile                         |   2 +
 arch/arm/dts/stm32f429-disco.dts              |  72 ++++
 arch/arm/dts/stm32f429.dtsi                   |  68 ++++
 arch/arm/mach-stm32mp/Kconfig                 |   3 +
 arch/arm/mach-stm32mp/Makefile                |   4 +-
 arch/arm/mach-stm32mp/include/mach/debug_ll.h |  21 ++
 drivers/clocksource/Makefile                  |   2 +-
 gdb.conf                                      |   7 +
 14 files changed, 556 insertions(+), 17 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 95fd8ecfe7..cebbc05d17 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -205,7 +205,7 @@ config ARCH_STM32MP
 	select ARCH_HAS_RESET_CONTROLLER
 	select ARM_AMBA
 	select ARM_SMCCC
-	select ARM_USE_COMPRESSED_DTB
+	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 
 config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 96613cc5ba..7facda819d 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -40,7 +40,7 @@ endif
 # macro, but instead defines a whole series of macros which makes
 # testing for a specific architecture or later rather impossible.
 arch-$(CONFIG_CPU_64v8)		:= -D__LINUX_ARM_ARCH__=8 $(call cc-option,-march=armv8-a)
-arch-$(CONFIG_CPU_32v7)		:=-D__LINUX_ARM_ARCH__=7 $(call cc-option,-march=armv7-a,-march=armv5t -Wa$(comma)-march=armv7-a)
+arch-$(CONFIG_CPU_32v7)		:=-D__LINUX_ARM_ARCH__=7 -mcpu=cortex-m4
 arch-$(CONFIG_CPU_32v6)		:=-D__LINUX_ARM_ARCH__=6 $(call cc-option,-march=armv6,-march=armv5t -Wa$(comma)-march=armv6)
 arch-$(CONFIG_CPU_32v5)		:=-D__LINUX_ARM_ARCH__=5 $(call cc-option,-march=armv5te,-march=armv4t)
 arch-$(CONFIG_CPU_32v4T)	:=-D__LINUX_ARM_ARCH__=4 -march=armv4t
diff --git a/arch/arm/configs/stm32_defconfig b/arch/arm/configs/stm32_defconfig
new file mode 100644
index 0000000000..07fec1b9a2
--- /dev/null
+++ b/arch/arm/configs/stm32_defconfig
@@ -0,0 +1,55 @@
+CONFIG_TEXT_BASE=0x20000000
+CONFIG_ARCH_STM32MP=y
+CONFIG_BOARD_STM32F429I_DISC1=y
+CONFIG_THUMB2_BAREBOX=y
+# CONFIG_ARM_EXCEPTIONS is not set
+CONFIG_ARM_UNWIND=y
+CONFIG_IMAGE_COMPRESSION_NONE=y
+CONFIG_MEMORY_LAYOUT_FIXED=y
+CONFIG_STACK_BASE=0x2002c000
+CONFIG_STACK_SIZE=0x4000
+CONFIG_MALLOC_BASE=0x10000000
+CONFIG_MALLOC_SIZE=0x10000
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+# CONFIG_TIMESTAMP is not set
+CONFIG_BLSPEC=y
+CONFIG_FLEXIBLE_BOOTARGS=y
+CONFIG_POLLER=y
+CONFIG_RESET_SOURCE=y
+CONFIG_DEBUG_LL=y
+CONFIG_DEBUG_INITCALLS=y
+# CONFIG_CMD_DRVINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_POLLER=y
+# CONFIG_CMD_BOOTM is not set
+# CONFIG_CMD_BOOTU is not set
+# CONFIG_CMD_MOUNT is not set
+# CONFIG_CMD_UMOUNT is not set
+# CONFIG_CMD_CAT is not set
+# CONFIG_CMD_CD is not set
+# CONFIG_CMD_CP is not set
+# CONFIG_CMD_LS is not set
+# CONFIG_CMD_MKDIR is not set
+# CONFIG_CMD_PWD is not set
+# CONFIG_CMD_RM is not set
+# CONFIG_CMD_RMDIR is not set
+# CONFIG_CMD_FALSE is not set
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
+# CONFIG_CMD_TEST is not set
+# CONFIG_CMD_TRUE is not set
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_TIME=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_DRIVER_SERIAL_STM32=y
+# CONFIG_SPI is not set
+CONFIG_CLOCKSOURCE_DUMMY_RATE=15000
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index f7f9c30415..5b00d21185 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -1,10 +1,10 @@
-obj-y += cpu.o
+#obj-y += cpu.o
 
 obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions$(S64).o interrupts$(S64).o
 obj-$(CONFIG_MMU) += mmu$(S64).o mmu-common.o
-obj-pbl-y += lowlevel$(S64).o
+#obj-pbl-y += lowlevel$(S64).o
 obj-pbl-$(CONFIG_MMU) += mmu-early$(S64).o
-obj-pbl-$(CONFIG_CPU_32v7) += hyp.o
+#obj-pbl-$(CONFIG_CPU_32v7) += hyp.o
 AFLAGS_hyp.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
 AFLAGS_hyp.pbl.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
 
@@ -30,7 +30,7 @@ endif
 
 obj-$(CONFIG_ARM_PSCI) += psci.o
 obj-$(CONFIG_ARM_PSCI_OF) += psci-of.o
-obj-pbl-$(CONFIG_ARM_SMCCC) += smccc-call$(S64).o
+#obj-pbl-$(CONFIG_ARM_SMCCC) += smccc-call$(S64).o
 AFLAGS_smccc-call$(S64).o :=-Wa,-march=armv$(if $(S64),8,7)-a
 AFLAGS_smccc-call$(S64).pbl.o :=-Wa,-march=armv$(if $(S64),8,7)-a
 obj-$(CONFIG_ARM_SECURE_MONITOR) += sm.o sm_as.o
diff --git a/arch/arm/cpu/no-mmu.c b/arch/arm/cpu/no-mmu.c
index be3cfaf12b..64c1bf4fb6 100644
--- a/arch/arm/cpu/no-mmu.c
+++ b/arch/arm/cpu/no-mmu.c
@@ -48,4 +48,4 @@ static int nommu_v7_vectors_init(void)
 
 	return 0;
 }
-mmu_initcall(nommu_v7_vectors_init);
+//mmu_initcall(nommu_v7_vectors_init);
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index aeca459cb1..3c33692e8b 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -145,13 +145,18 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 							   endmem,
 							   barebox_size);
 
-	if (IS_ENABLED(CONFIG_CPU_V7))
-		armv7_hyp_install();
+	puts_ll("barebox_non_pbl_start\n");
+
+//	if (IS_ENABLED(CONFIG_CPU_V7))
+//		armv7_hyp_install();
 
 	if (IS_ENABLED(CONFIG_RELOCATABLE))
 		relocate_to_adr(barebox_base);
 
-	setup_c();
+	//setup_c();
+	memset(__bss_start, 0x00, __bss_stop - __bss_start);
+	/* can't use pr_err before memset(__bss_start* !!! */
+	pr_err("bss at 0x%08lx, size 0x%08lx\n", __bss_start, __bss_stop - __bss_start);
 
 	barrier();
 
@@ -160,9 +165,12 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
 
 	arm_endmem = endmem;
-	arm_stack_top = arm_mem_stack_top(membase, endmem);
+	//arm_stack_top = arm_mem_stack_top(membase, endmem);
+	arm_stack_top = CONFIG_STACK_BASE + CONFIG_STACK_SIZE;
 	arm_barebox_size = barebox_size;
-	malloc_end = barebox_base;
+	malloc_end = MALLOC_BASE + MALLOC_SIZE;
+
+	pr_err("arm stack top 0x%08lx\n", arm_stack_top);
 
 	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
 		unsigned long ttb = arm_mem_ttb(membase, endmem);
@@ -209,8 +217,11 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 							      totalsize);
 			pr_debug("found %s in boarddata, copying to 0x%08lx\n",
 				 name, mem);
+			#if 0
 			barebox_boarddata = memcpy((void *)mem, boarddata,
 						   totalsize);
+#endif
+			barebox_boarddata = boarddata;
 			barebox_boarddata_size = totalsize;
 			malloc_end = mem;
 		}
@@ -230,7 +241,10 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 			malloc_start = malloc_end - SZ_1G;
 	}
 
-	pr_debug("initializing malloc pool at 0x%08lx (size 0x%08lx)\n",
+	malloc_start = MALLOC_BASE;
+	malloc_end = MALLOC_BASE + MALLOC_SIZE;
+
+	pr_err("initializing malloc pool at 0x%08lx (size 0x%08lx)\n",
 			malloc_start, malloc_end - malloc_start);
 
 	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
@@ -254,6 +268,294 @@ void NAKED __section(.text_entry) start(void)
 
 #else
 
+
+/* Set the default clock frequencies after reset. */
+uint32_t rcc_apb1_frequency = 16000000;
+uint32_t rcc_apb2_frequency = 16000000;
+
+#define MMIO32(addr)		(*(volatile uint32_t *)(addr))
+
+#define PERIPH_BASE	(0x40000000U)
+#define PERIPH_BASE_AHB1	(PERIPH_BASE + 0x20000)
+#define PERIPH_BASE_APB2		(PERIPH_BASE + 0x10000)
+#define RCC_BASE	(PERIPH_BASE_AHB1 + 0x3800)
+#define GPIO_PORT_A_BASE		(PERIPH_BASE_AHB1 + 0x0000)
+#define GPIO_PORT_G_BASE		(PERIPH_BASE_AHB1 + 0x1800)
+#define USART1_BASE			(PERIPH_BASE_APB2 + 0x1000)
+
+#define _REG_BIT(base, bit)		(((base) << 5) + (bit))
+
+enum rcc_periph_clken {
+	RCC_GPIOA	= _REG_BIT(0x30, 0),
+	RCC_GPIOG	= _REG_BIT(0x30, 6),
+	RCC_USART1	= _REG_BIT(0x44, 4),
+};
+
+#define RCC_REG(i)	MMIO32(RCC_BASE + ((i) >> 5))
+#define RCC_BIT(i)	(1 << ((i) & 0x1f))
+
+static inline void barebox_rcc_periph_clock_enable(enum rcc_periph_clken clken)
+{
+	RCC_REG(clken) |= RCC_BIT(clken);
+}
+
+static inline void clock_setup(void)
+{
+	/* Enable GPIOG clock for LED & USARTs. */
+	barebox_rcc_periph_clock_enable(RCC_GPIOG);
+	barebox_rcc_periph_clock_enable(RCC_GPIOA);
+
+	/* Enable clocks for USART1. */
+	barebox_rcc_periph_clock_enable(RCC_USART1);
+}
+
+#define USART1				USART1_BASE
+
+#define USART_BRR(usart_base)		MMIO32((usart_base) + 0x08)
+#define USART_CR1(usart_base)		MMIO32((usart_base) + 0x0c)
+#define USART_CR2(usart_base)		MMIO32((usart_base) + 0x10)
+#define USART_CR3(usart_base)		MMIO32((usart_base) + 0x14)
+
+#define USART_CR2_STOPBITS_1		(0x00 << 12)     /* 1 stop bit */
+#define USART_CR2_STOPBITS_MASK		(0x03 << 12)
+
+#define USART_STOPBITS_1		USART_CR2_STOPBITS_1   /* 1 stop bit */
+#define USART_SR_TXE			(1 << 7)
+#define USART_CR1_RE			(1 << 2)
+#define USART_CR1_TE			(1 << 3)
+#define USART_CR1_M			(1 << 12)
+#define USART_CR1_UE			(1 << 13)
+#define USART_MODE_TX		        USART_CR1_TE
+#define USART_PARITY_NONE		0x00
+#define USART_FLOWCONTROL_NONE	        0x00
+#define USART_MODE_MASK		        (USART_CR1_RE | USART_CR1_TE)
+
+static inline void usart_set_baudrate(uint32_t usart, uint32_t baud)
+{
+	uint32_t clock = rcc_apb1_frequency;
+
+#if defined USART1
+	if ((usart == USART1)
+#if defined USART6
+		|| (usart == USART6)
+#endif
+		) {
+		clock = rcc_apb2_frequency;
+	}
+#endif
+
+	/*
+	 * Yes it is as simple as that. The reference manual is
+	 * talking about fractional calculation but it seems to be only
+	 * marketing babble to sound awesome. It is nothing else but a
+	 * simple divider to generate the correct baudrate.
+	 *
+	 * Note: We round() the value rather than floor()ing it, for more
+	 * accurate divisor selection.
+	 */
+#ifdef LPUART1
+	if (usart == LPUART1) {
+		USART_BRR(usart) = (clock / baud) * 256
+			+ ((clock % baud) * 256 + baud / 2) / baud;
+		return;
+	}
+#endif
+
+	USART_BRR(usart) = (clock + baud / 2) / baud;
+}
+
+static inline void usart_set_databits(uint32_t usart, uint32_t bits)
+{
+	if (bits == 8) {
+		USART_CR1(usart) &= ~USART_CR1_M; /* 8 data bits */
+	} else {
+		USART_CR1(usart) |= USART_CR1_M;  /* 9 data bits */
+	}
+}
+
+static inline void usart_set_stopbits(uint32_t usart, uint32_t stopbits)
+{
+	uint32_t reg32;
+
+	reg32 = USART_CR2(usart);
+	reg32 = (reg32 & ~USART_CR2_STOPBITS_MASK) | stopbits;
+	USART_CR2(usart) = reg32;
+}
+
+static inline void usart_set_mode(uint32_t usart, uint32_t mode)
+{
+	uint32_t reg32;
+
+	reg32 = USART_CR1(usart);
+	reg32 = (reg32 & ~USART_MODE_MASK) | mode;
+	USART_CR1(usart) = reg32;
+}
+
+#define USART_CR3_CTSE			(1 << 9)
+#define USART_CR3_RTSE			(1 << 8)
+
+#define USART_FLOWCONTROL_MASK	        (USART_CR3_RTSE | USART_CR3_CTSE)
+
+static inline void usart_set_flow_control(uint32_t usart, uint32_t flowcontrol)
+{
+	uint32_t reg32;
+
+	reg32 = USART_CR3(usart);
+	reg32 = (reg32 & ~USART_FLOWCONTROL_MASK) | flowcontrol;
+	USART_CR3(usart) = reg32;
+}
+
+static inline void usart_enable(uint32_t usart)
+{
+	USART_CR1(usart) |= USART_CR1_UE;
+}
+
+#define USART_CR1_PS			(1 << 9)
+#define USART_CR1_PCE			(1 << 10)
+#define USART_PARITY_MASK		(USART_CR1_PS | USART_CR1_PCE)
+
+static inline void usart_set_parity(uint32_t usart, uint32_t parity)
+{
+	uint32_t reg32;
+
+	reg32 = USART_CR1(usart);
+	reg32 = (reg32 & ~USART_PARITY_MASK) | parity;
+	USART_CR1(usart) = reg32;
+}
+
+static inline void usart_setup(void)
+{
+	/* Setup USART2 parameters. */
+	usart_set_baudrate(USART1, 115200);
+	usart_set_databits(USART1, 8);
+	usart_set_stopbits(USART1, USART_STOPBITS_1);
+	usart_set_mode(USART1, USART_MODE_TX);
+	usart_set_parity(USART1, USART_PARITY_NONE);
+	usart_set_flow_control(USART1, USART_FLOWCONTROL_NONE);
+
+	/* Finally enable the USART. */
+	usart_enable(USART1);
+}
+
+#define GPIOA				GPIO_PORT_A_BASE
+#define GPIOG				GPIO_PORT_G_BASE
+
+#define GPIO_MODER(port)		MMIO32((port) + 0x00)
+#define GPIO_MODE(n, mode)		((mode) << (2 * (n)))
+#define GPIO_MODE_MASK(n)		(0x3 << (2 * (n)))
+#define GPIO_MODE_INPUT			0x0
+#define GPIO_MODE_OUTPUT		0x1
+#define GPIO_MODE_AF			0x2
+#define GPIO_MODE_ANALOG		0x3
+#define GPIO_PUPD(n, pupd)		((pupd) << (2 * (n)))
+#define GPIO_PUPD_MASK(n)		(0x3 << (2 * (n)))
+#define GPIO_PUPD_NONE			0x0
+#define GPIO_PUPD_PULLUP		0x1
+#define GPIO_PUPD_PULLDOWN		0x2
+#define GPIO_PUPDR(port)		MMIO32((port) + 0x0c)
+
+#define GPIO9				(1 << 9)
+#define GPIO10				(1 << 10)
+#define GPIO13				(1 << 13)
+
+static inline void barebox_gpio_mode_setup(uint32_t gpioport, uint8_t mode, uint8_t pull_up_down,
+		     uint16_t gpios)
+{
+	uint16_t i;
+	uint32_t moder, pupd;
+
+	/*
+	 * We want to set the config only for the pins mentioned in gpios,
+	 * but keeping the others, so read out the actual config first.
+	 */
+	moder = GPIO_MODER(gpioport);
+	pupd = GPIO_PUPDR(gpioport);
+
+	for (i = 0; i < 16; i++) {
+		if (!((1 << i) & gpios)) {
+			continue;
+		}
+
+		moder &= ~GPIO_MODE_MASK(i);
+		moder |= GPIO_MODE(i, mode);
+		pupd &= ~GPIO_PUPD_MASK(i);
+		pupd |= GPIO_PUPD(i, pull_up_down);
+	}
+
+	/* Set mode and pull up/down control registers. */
+	GPIO_MODER(gpioport) = moder;
+	GPIO_PUPDR(gpioport) = pupd;
+}
+
+#define GPIO_ODR(port)			MMIO32((port) + 0x14)
+#define GPIO_BSRR(port)			MMIO32((port) + 0x18)
+
+static inline void barebox_gpio_toggle(uint32_t gpioport, uint16_t gpios)
+{
+	uint32_t port = GPIO_ODR(gpioport);
+	GPIO_BSRR(gpioport) = ((port & gpios) << 16) | (~port & gpios);
+}
+
+#define GPIO_AFRL(port)			MMIO32((port) + 0x20)
+#define GPIO_AFRH(port)			MMIO32((port) + 0x24)
+#define GPIO_AFR(n, af)			((af) << ((n) * 4))
+#define GPIO_AFR_MASK(n)		(0xf << ((n) * 4))
+
+static inline void barebox_gpio_set_af(uint32_t gpioport, uint8_t alt_func_num, uint16_t gpios)
+{
+	uint16_t i;
+	uint32_t afrl, afrh;
+
+	afrl = GPIO_AFRL(gpioport);
+	afrh = GPIO_AFRH(gpioport);
+
+	for (i = 0; i < 8; i++) {
+		if (!((1 << i) & gpios)) {
+			continue;
+		}
+		afrl &= ~GPIO_AFR_MASK(i);
+		afrl |= GPIO_AFR(i, alt_func_num);
+	}
+
+	for (i = 8; i < 16; i++) {
+		if (!((1 << i) & gpios)) {
+			continue;
+		}
+		afrh &= ~GPIO_AFR_MASK(i - 8);
+		afrh |= GPIO_AFR(i - 8, alt_func_num);
+	}
+
+	GPIO_AFRL(gpioport) = afrl;
+	GPIO_AFRH(gpioport) = afrh;
+}
+
+#define GPIO_AF7			0x7
+
+static inline void gpio_setup(void)
+{
+	/* Setup GPIO pin GPIO13 on GPIO port G for LED. */
+	barebox_gpio_mode_setup(GPIOG, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, GPIO13);
+	barebox_gpio_mode_setup(GPIOG, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, GPIO13);
+
+	/* Setup GPIO pins for USART1 transmit. */
+	barebox_gpio_mode_setup(GPIOA, GPIO_MODE_AF, GPIO_PUPD_NONE, GPIO9);
+	barebox_gpio_mode_setup(GPIOA, GPIO_MODE_AF, GPIO_PUPD_PULLUP, GPIO10);
+
+	/* Setup USART1 TX and RX pins as alternate function. */
+	barebox_gpio_set_af(GPIOA, GPIO_AF7, GPIO9);
+	barebox_gpio_set_af(GPIOA, GPIO_AF7, GPIO10);
+}
+
+static inline void stm32_setup(void)
+{
+	int i, j = 0, c = 0;
+
+	clock_setup();
+	gpio_setup();
+	usart_setup();
+}
+
+
 void start(unsigned long membase, unsigned long memsize, void *boarddata);
 /*
  * First function in the uncompressed image. We get here from
@@ -262,6 +564,15 @@ void start(unsigned long membase, unsigned long memsize, void *boarddata);
 void NAKED __section(.text_entry) start(unsigned long membase,
 		unsigned long memsize, void *boarddata)
 {
-	barebox_non_pbl_start(membase, memsize, boarddata);
+	extern struct of_device_id __clk_of_table_end;
+
+	stm32_setup();
+
+	puts_ll("\n\nstart()\n");
+
+	barebox_non_pbl_start(/* membase */ 0x20000000,
+				/* memsize */ 0x10000 * 3,
+				&__clk_of_table_end /* alias for dtb_stm32f429_disco_start */
+				);
 }
 #endif
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index af061bd292..0ec32391a0 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -1,3 +1,5 @@
+obj-$(CONFIG_BOARD_STM32F429I_DISC1) += stm32f429-disco.dtb.o
+
 # just to build a built-in.o. Otherwise compilation fails when no devicetree is
 # created.
 obj- += dummy.o
diff --git a/arch/arm/dts/stm32f429-disco.dts b/arch/arm/dts/stm32f429-disco.dts
new file mode 100644
index 0000000000..7e0036799e
--- /dev/null
+++ b/arch/arm/dts/stm32f429-disco.dts
@@ -0,0 +1,72 @@
+/*
+ * Copyright 2015 - Maxime Coquelin <mcoquelin.stm32@gmail.com>
+ *
+ * This file is dual-licensed: you can use it either under the terms
+ * of the GPL or the X11 license, at your option. Note that this dual
+ * licensing only applies to this file, and not this project as a
+ * whole.
+ *
+ *  a) This file is free software; you can redistribute it and/or
+ *     modify it under the terms of the GNU General Public License as
+ *     published by the Free Software Foundation; either version 2 of the
+ *     License, or (at your option) any later version.
+ *
+ *     This file is distributed in the hope that it will be useful,
+ *     but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *     GNU General Public License for more details.
+ *
+ *     You should have received a copy of the GNU General Public
+ *     License along with this file; if not, write to the Free
+ *     Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,
+ *     MA 02110-1301 USA
+ *
+ * Or, alternatively,
+ *
+ *  b) Permission is hereby granted, free of charge, to any person
+ *     obtaining a copy of this software and associated documentation
+ *     files (the "Software"), to deal in the Software without
+ *     restriction, including without limitation the rights to use,
+ *     copy, modify, merge, publish, distribute, sublicense, and/or
+ *     sell copies of the Software, and to permit persons to whom the
+ *     Software is furnished to do so, subject to the following
+ *     conditions:
+ *
+ *     The above copyright notice and this permission notice shall be
+ *     included in all copies or substantial portions of the Software.
+ *
+ *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
+ *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
+ *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
+ *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
+ *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
+ *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+ *     OTHER DEALINGS IN THE SOFTWARE.
+ */
+
+/dts-v1/;
+#include "stm32f429.dtsi"
+
+/ {
+	model = "STMicroelectronics STM32F429i-DISCO board";
+	compatible = "st,stm32f429i-disco", "st,stm32f429";
+
+	memory@10000000 {
+		device_type = "memory";
+		reg = <0x10000000 0x10000>;
+	};
+
+	memory@20000000 {
+		device_type = "memory";
+		reg = <0x20000000 0x30000>;
+	};
+
+	aliases {
+		serial0 = &usart1;
+	};
+};
+
+&usart1 {
+	status = "okay";
+};
diff --git a/arch/arm/dts/stm32f429.dtsi b/arch/arm/dts/stm32f429.dtsi
new file mode 100644
index 0000000000..e9bc09a1a7
--- /dev/null
+++ b/arch/arm/dts/stm32f429.dtsi
@@ -0,0 +1,68 @@
+/*
+ * Copyright 2015 - Maxime Coquelin <mcoquelin.stm32@gmail.com>
+ *
+ * This file is dual-licensed: you can use it either under the terms
+ * of the GPL or the X11 license, at your option. Note that this dual
+ * licensing only applies to this file, and not this project as a
+ * whole.
+ *
+ *  a) This file is free software; you can redistribute it and/or
+ *     modify it under the terms of the GNU General Public License as
+ *     published by the Free Software Foundation; either version 2 of the
+ *     License, or (at your option) any later version.
+ *
+ *     This file is distributed in the hope that it will be useful,
+ *     but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *     GNU General Public License for more details.
+ *
+ *     You should have received a copy of the GNU General Public
+ *     License along with this file; if not, write to the Free
+ *     Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,
+ *     MA 02110-1301 USA
+ *
+ * Or, alternatively,
+ *
+ *  b) Permission is hereby granted, free of charge, to any person
+ *     obtaining a copy of this software and associated documentation
+ *     files (the "Software"), to deal in the Software without
+ *     restriction, including without limitation the rights to use,
+ *     copy, modify, merge, publish, distribute, sublicense, and/or
+ *     sell copies of the Software, and to permit persons to whom the
+ *     Software is furnished to do so, subject to the following
+ *     conditions:
+ *
+ *     The above copyright notice and this permission notice shall be
+ *     included in all copies or substantial portions of the Software.
+ *
+ *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
+ *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
+ *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
+ *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
+ *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
+ *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+ *     OTHER DEALINGS IN THE SOFTWARE.
+ */
+
+#include <arm/armv7-m.dtsi>
+
+/ {
+	clocks {
+		rcc_apb2: rcc_apb2 {
+			#clock-cells = <0>;
+			compatible = "fixed-clock";
+			clock-frequency = <16000000>;
+		};
+	};
+
+	soc {
+		usart1: serial@40011000 {
+			compatible = "st,stm32-uart";
+			reg = <0x40011000 0x400>;
+			/* clocks = <&rcc 0 STM32F4_APB2_CLOCK(USART1)>; */
+			clocks = <&rcc_apb2>;
+			status = "disabled";
+		};
+	};
+};
diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
index f064a38088..3f00db8887 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -1,5 +1,8 @@
 if ARCH_STM32MP
 
+config BOARD_STM32F429I_DISC1
+	bool "STM32F429I-DISC1 Development Board"
+
 config ARCH_NR_GPIO
 	int
 	default 416
diff --git a/arch/arm/mach-stm32mp/Makefile b/arch/arm/mach-stm32mp/Makefile
index 8e14b22535..1a878db436 100644
--- a/arch/arm/mach-stm32mp/Makefile
+++ b/arch/arm/mach-stm32mp/Makefile
@@ -1,3 +1,3 @@
-obj-y := init.o
-obj-pbl-y := ddrctrl.o
+#obj-y := init.o
+#obj-pbl-y := ddrctrl.o
 obj-$(CONFIG_BOOTM) += stm32image.o
diff --git a/arch/arm/mach-stm32mp/include/mach/debug_ll.h b/arch/arm/mach-stm32mp/include/mach/debug_ll.h
index 99fedb91fe..52db4f8234 100644
--- a/arch/arm/mach-stm32mp/include/mach/debug_ll.h
+++ b/arch/arm/mach-stm32mp/include/mach/debug_ll.h
@@ -16,13 +16,34 @@
 
 #define USART_ISR_TXE	BIT(7)
 
+
+#define PERIPH_BASE	(0x40000000U)
+#define PERIPH_BASE_APB2		(PERIPH_BASE + 0x10000)
+#define USART1_BASE			(PERIPH_BASE_APB2 + 0x1000)
+#define USART1				USART1_BASE
+
+#define MMIO32(addr)		(*(volatile uint32_t *)(addr))
+#define USART_SR(usart_base)		MMIO32((usart_base) + 0x00)
+#define USART_SR_TXE			(1 << 7)
+#define USART_DR(usart_base)		MMIO32((usart_base) + 0x04)
+#define USART_DR_MASK                   0x1FF
+
 static inline void PUTC_LL(int c)
 {
+	void __iomem *usart = (void *)USART1;
+
+	while ((USART_SR(usart) & USART_SR_TXE) == 0);
+
+	/* Send data. */
+	USART_DR(usart) = (c & USART_DR_MASK);
+
+#if 0
 	void __iomem *base = IOMEM(DEBUG_LL_UART_ADDR);
 
 	writel(c, base + TDR_OFFSET);
 
 	while ((readl(base + ISR_OFFSET) & USART_ISR_TXE) == 0);
+#endif
 }
 
 #endif /* __MACH_STM32MP1_DEBUG_LL_H */
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index b4607f787f..76b6796722 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -12,7 +12,7 @@ obj-$(CONFIG_CLOCKSOURCE_ORION)   += orion.o
 obj-$(CONFIG_CLOCKSOURCE_UEMD)    += uemd.o
 obj-$(CONFIG_CLOCKSOURCE_ROCKCHIP)+= rk_timer.o
 obj-$(CONFIG_CLOCKSOURCE_ATMEL_PIT) += timer-atmel-pit.o
-obj-$(CONFIG_CLOCKSOURCE_ARM_ARCHITECTED_TIMER) += arm_architected_timer.o
+#obj-$(CONFIG_CLOCKSOURCE_ARM_ARCHITECTED_TIMER) += arm_architected_timer.o
 ifneq ($(CONFIG_CPU_V8),y)
 CFLAGS_arm_architected_timer.o := -march=armv7-a
 endif
diff --git a/gdb.conf b/gdb.conf
new file mode 100644
index 0000000000..66ebc17afd
--- /dev/null
+++ b/gdb.conf
@@ -0,0 +1,7 @@
+file barebox
+target remote :3333
+monitor reset halt
+load barebox
+set $sp = 0x2002FFF0
+set $msp = 0x2002FFF0
+continue
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
