Delivery-date: Mon, 27 Jul 2026 15:29:06 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1woLOE-003RZW-0J
	for lore@lore.pengutronix.de;
	Mon, 27 Jul 2026 15:29:06 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 29F572002FE
	for <lore@pengutronix.de>; Mon, 27 Jul 2026 15:29:06 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=t5bb1Ah8;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=B4GOenYbgVsQtHcI/Qefgq7SZf952Ee1ZNRImvRIBic=; b=t5bb1Ah8jRt/D66gnHsWOnrgbu
	aQ9TzszBPSra8Gh7fqKWkfOxybh1AgqUq3xRGNjRxmN0/pKxrULskV3hx38pxZm3t02clITyCwctl
	wzoG4zXh7vHg6kVtK/nNVyrQXiPiltbaZd3uK22m6MG33fng3uymLpE9S72g+XkJ27VdWmVy7Z3fu
	Dj4oye6gbAjsTem+BregYoYaJrMfJ4KlXEX6iIJQj1B7lxk0kW0aPUPUWctovBeJXkX+TJhtTDXUP
	qnCXOpGsRUDpKBW2z4GpedzzIG4srhzEvWAa9Rvqe9daUJaLMBJl5tInBRqO0kUXIgkd5k0hHJvuR
	M8o5Bj+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woLN5-00000002rJo-2j7B;
	Mon, 27 Jul 2026 13:27:55 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woLN2-00000002rJH-1HCb
	for barebox@lists.infradead.org;
	Mon, 27 Jul 2026 13:27:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0A83620192C;
	Mon, 27 Jul 2026 15:27:49 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1woLMy-001Yip-34;
	Mon, 27 Jul 2026 15:27:48 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1woLMy-00000007IYS-3bLs;
	Mon, 27 Jul 2026 15:27:48 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 01/19] ARM: mvebu: add board support for Netgear RN102
To: "Luca Lauro via B4 Relay" <devnull+famlauro93l.gmail.com@kernel.org>
In-Reply-To: <20260723-rn102-rn104-series-v1-1-7698d25df866@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Jul 2026 13:27:48 +0000
Message-Id: <E1woLMy-00000007IYS-3bLs@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_062752_642502_333C0D72 
X-CRM114-Status: GOOD (  35.42  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Luca, Thanks for the series. Support for more consumer
   devices is greatly appreciated. On 2026-07-23 15:57, Luca Lauro via B4 Relay
    wrote: > From: Luca Lauro <famlauro93l@gmail.com> 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: =?utf-8?b?b3BlbiBsaXN0OkJB?= =?utf-8?b?UkVCT1g=?= <barebox@lists.infradead.org>, Luca Lauro <famlauro93l@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-2.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	CC_EXCESS_BASE64(1.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+famlauro93l.gmail.com@kernel.org,m:barebox@lists.infradead.org,m:famlauro93l@gmail.com,m:devnull@kernel.org,s:lore@pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[famlauro93l.gmail.com];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:c01:1d::a2:received];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 29F572002FE
X-Rspamd-Server: mx1
X-Stat-Signature: acann4r3d4sesregdkmkgq1kazhqp8nn

Hi Luca,

Thanks for the series. Support for more consumer devices is greatly
appreciated.

On 2026-07-23 15:57, Luca Lauro via B4 Relay wrote:
> From: Luca Lauro <famlauro93l@gmail.com>

Signed-off-by is missing, see https://barebox.org/doc/latest/devel/contribu=
ting.html#license-and-dco

>=20
> ---
>  arch/arm/boards/Makefile               |   1 +
>  arch/arm/boards/netgear-rn102/Makefile |   4 +
>  arch/arm/boards/netgear-rn102/board.c  | 243 +++++++++++++++++++++++++++=
++++++
>  rebuild-series.sh                      |  39 ++++++
>  4 files changed, 287 insertions(+)
>=20
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index dd2f2c324e..aca1b45a81 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -64,6 +64,7 @@ obj-$(CONFIG_MACH_MARVELL_ARMADA_XP_DB)		+=3D marvell-a=
rmada-xp-db/
>  obj-$(CONFIG_MACH_MX23EVK)			+=3D freescale-mx23-evk/
>  obj-$(CONFIG_MACH_MX28EVK)			+=3D freescale-mx28-evk/
>  obj-$(CONFIG_MACH_MYIRTECH_X335X)		+=3D myirtech-x335x/
> +obj-$(CONFIG_MACH_NETGEAR_RN102)		+=3D netgear-rn102/
>  obj-$(CONFIG_MACH_NETGEAR_RN104)		+=3D netgear-rn104/
>  obj-$(CONFIG_MACH_NETGEAR_RN2120)		+=3D netgear-rn2120/
>  obj-$(CONFIG_MACH_NVIDIA_BEAVER)		+=3D nvidia-beaver/
> diff --git a/arch/arm/boards/netgear-rn102/Makefile b/arch/arm/boards/net=
gear-rn102/Makefile
> new file mode 100644
> index 0000000000..da63d2625f
> --- /dev/null
> +++ b/arch/arm/boards/netgear-rn102/Makefile
> @@ -0,0 +1,4 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +obj-y +=3D board.o
> +lwl-y +=3D lowlevel.o
> diff --git a/arch/arm/boards/netgear-rn102/board.c b/arch/arm/boards/netg=
ear-rn102/board.c
> new file mode 100644
> index 0000000000..c6673e9356
> --- /dev/null
> +++ b/arch/arm/boards/netgear-rn102/board.c
> @@ -0,0 +1,243 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <common.h>
> +#include <init.h>
> +#include <gpio.h>
> +#include <driver.h>
> +#include <linux/device.h>
> +#include <linux/mbus.h>
> +#include <mach/mvebu/armada-370-xp-regs.h>
> +#include <bbu.h>
> +
> +/*
> + *  Early GPIO0 MMIO
> + *
> + * GPIO driver arrives too late for the disks to be
> + * ready in time for AHCI driver probe.
> + * So we use GPIO0 direct access for:
> + *   - reading disk presence monitoring pins
> + *   - enable powerup for bays that detect disk presence
> + *   - display bay status with dedicated LEDs
> + */
> +#define GPIO0_BASE           (ARMADA_370_XP_INT_REGS_BASE + 0x18100)
> +#define GPIO_OUT             0x00
> +#define GPIO_OUT_EN          0x04
> +#define GPIO_BLINK_EN        0x08
> +#define GPIO_IN              0x10
> +#define GPIO_BLINK_CNT_SEL   0x20
> +#define GPIO_BLINK_CNT_A_ON  0xc0
> +#define GPIO_BLINK_CNT_A_OFF 0xc4
> +
> +static inline void gpio0_set_output(int pin)
> +{
> +    u32 v =3D readl(GPIO0_BASE + GPIO_OUT_EN);

Please use Kernel coding style for barebox. Means, use tabs instead of
spaces and likely more stuff ./scripts/checkpatch.pl mourns about.

These functions seem to duplicate GPIO support. We already have a GPIO
driver, so these could likely be dropped in favour for regular
gpio_set_value and friends.

> +
> +    v &=3D ~(1 << pin);
> +    writel(v, GPIO0_BASE + GPIO_OUT_EN);
> +}
> +
> +static inline void gpio0_set_input(int pin)
> +{
> +    u32 v =3D readl(GPIO0_BASE + GPIO_OUT_EN);
> +
> +    v |=3D (1 << pin);
> +    writel(v, GPIO0_BASE + GPIO_OUT_EN);
> +}
> +
> +static inline void gpio0_write(int pin, int val)
> +{
> +    u32 v =3D readl(GPIO0_BASE + GPIO_OUT);
> +
> +    if (val)
> +        v |=3D (1 << pin);
> +    else
> +        v &=3D ~(1 << pin);
> +
> +    writel(v, GPIO0_BASE + GPIO_OUT);
> +}
> +
> +static inline int gpio0_read(int pin)
> +{
> +    return !!(readl(GPIO0_BASE + GPIO_IN) & (1 << pin));
> +}
> +
> +static void gpio0_blink(int pin, int on_ms, int off_ms)
> +{
> +    u32 v;
> +
> +    gpio0_set_output(pin);
> +
> +    /* set blink counter A on and off time in core clok cycles */
> +    writel(10*on_ms, GPIO0_BASE + GPIO_BLINK_CNT_A_ON);
> +    writel(10*off_ms, GPIO0_BASE + GPIO_BLINK_CNT_A_OFF);
> +
> +    /* use blink counter A for selected pin */
> +    v =3D readl(GPIO0_BASE + GPIO_BLINK_CNT_SEL);
> +    v &=3D ~(1 << pin);
> +    writel(v, GPIO0_BASE + GPIO_BLINK_CNT_SEL);
> +
> +    /* enable blink for selected pin */
> +    v =3D readl(GPIO0_BASE + GPIO_BLINK_EN);
> +    v |=3D (1 << pin);
> +    writel(v, GPIO0_BASE + GPIO_BLINK_EN);
> +}
> +
> +static void gpio0_blink_disable(int pin)
> +{
> +    u32 v;
> +
> +    v =3D readl(GPIO0_BASE + GPIO_BLINK_EN);
> +    v &=3D ~(1 << pin);
> +    writel(v, GPIO0_BASE + GPIO_BLINK_EN);
> +}
> +
> +/* HDD bays description */
> +
> +enum disk_state {
> +    DISK_ABSENT =3D 0,
> +    DISK_PRESENT,
> +    DISK_READY,
> +};
> +
> +struct rn102_disk_bay {
> +    int gpio_detect;        /* input, active-low */
> +    int gpio_power;         /* output */
> +    int gpio_led;           /* output, active-low */
> +    enum disk_state state;
> +};
> +
> +#define RN102_NUM_DISK_BAYS 2
> +
> +static struct rn102_disk_bay rn102_bays[RN102_NUM_DISK_BAYS] =3D {
> +    { 12, 13, 15, DISK_ABSENT }, /* Bay 1, default to disk absent */
> +    { 10, 11, 14, DISK_ABSENT }, /* Bay 2, default to disk absent */
> +};
> +
> +static void setup_bays(void) {
> +    pr_info("Early disk power-on...\n");
> +
> +    for (int i =3D 0; i < RN102_NUM_DISK_BAYS; i++) {
> +        int present;
> +
> +        gpio0_set_input(rn102_bays[i].gpio_detect);
> +        present =3D (gpio0_read(rn102_bays[i].gpio_detect) =3D=3D 0);
> +
> +        gpio0_set_output(rn102_bays[i].gpio_power);
> +
> +        if (present) {
> +            pr_info("Bay %d: disk detected, powering on\n", i + 1);
> +            gpio0_blink(rn102_bays[i].gpio_led, 500, 500);
> +            gpio0_write(rn102_bays[i].gpio_power, 1);
> +            rn102_bays[i].state =3D DISK_PRESENT;
> +        } else {
> +            pr_info("Bay %d empty\n", i + 1);
> +            gpio0_write(rn102_bays[i].gpio_led, 0);
> +            gpio0_write(rn102_bays[i].gpio_power, 0);
> +            rn102_bays[i].state =3D DISK_ABSENT;
> +        }
> +    }
> +}
> +
> +/*
> + * After waiting for present disks spinup,
> + * we ask explicitly for corresponding ATA devices probe.
> + */
> +static void init_disks(void) {
> +    pr_info("Waiting for disks spinup...\n");
> +    mdelay(8000);
> +
> +    pr_info("Detecting ATA devices:\n");
> +    for (int i =3D 0; i < RN102_NUM_DISK_BAYS; i++) {
> +        char name[8];
> +        struct device *dev;
> +
> +        if (rn102_bays[i].state !=3D DISK_PRESENT) {
> +            gpio0_write(rn102_bays[i].gpio_power, 0);
> +            gpio0_blink_disable(rn102_bays[i].gpio_led);
> +            gpio0_write(rn102_bays[i].gpio_led, 0);
> +            continue;
> +        }
> +
> +        snprintf(name, sizeof(name), "ata%d", i);
> +
> +        dev =3D get_device_by_name(name);
> +        if (!dev) {
> +            pr_warn("%s not found\n", name);
> +            gpio0_write(rn102_bays[i].gpio_power, 0);
> +            gpio0_blink(rn102_bays[i].gpio_led, 1000, 1000);
> +            continue;
> +        }
> +
> +        pr_info("Connecting %s to disk %d\n", name, i + 1);
> +        device_detect(dev);
> +        gpio0_blink_disable(rn102_bays[i].gpio_led);
> +        gpio0_write(rn102_bays[i].gpio_led, 1);
> +        rn102_bays[i].state =3D DISK_READY;
> +    }
> +}
> +
> +/*
> + *  USB0 =E2=86=92 DRAM MBUS windows
> + *
> + * frontal USB 2.0 port of RN102 is connected to the SoC usb0.
> + * Here we enable MBUS windows toward all the DRAM using
> + * informations already gathered by mvebu_mbus_dram_info().
> + */
> +// #define USB0_BRIDGE_BASE   (ARMADA_370_XP_USB_BASE + 0x300)
> +// #define USB_WIN_CTRL(n)    (USB0_BRIDGE_BASE + 0x20 + (n) * 0x10)
> +// #define USB_WIN_BASE(n)    (USB0_BRIDGE_BASE + 0x24 + (n) * 0x10)
> +
> +static void setup_usb0(void) {
> +    // /* Window0: 512MB @ 0x00000000 */
> +    // writel(0x00000000, USB_WIN_BASE(0));
> +    // writel(0x1FFF0E01, USB_WIN_CTRL(0));
> +
> +    // /* Window1: 512MB @ 0xB0000000 (placeholder) */
> +    // writel(0xB0000000, USB_WIN_BASE(1));
> +    // writel(0x1FFE841, USB_WIN_CTRL(1));
> +
> +    writel(0x2, 0xf1051404);    /* enable force suspend */
> +    u32 pwr =3D readl(0xf1051400);
> +    pwr &=3D ~BIT(2);
> +    writel(pwr, 0xf1051400);    /* force SUSPENDM=3D0 */
> +}
> +
> +
> +/* Early init: setup specific hardware without blocking initialization. =
*/
> +static int rn102_early_poweron(void)
> +{
> +    writel(0xC6, 0xf1020228); /* CFU configuration */
> +    setup_usb0();
> +    setup_bays();
> +
> +    return 0;
> +}
> +postcore_initcall(rn102_early_poweron);

A single barebox image can be compiled for multiple boards/SoCs, so
such an initcall will be executed on other boards once this board is
compiled in. You either have to protect them with some

        if (!of_machine_is_compatible("foo"))
                return 0;

Preferred way is to write the board specific code as a platform driver
which of-matches against the root node of the device tree, see other
boards following this pattern.

> +
> +static int rn102_init(void)
> +{
> +    init_disks();
> +
> +    return 0;
> +}
> +device_initcall(rn102_init);
> +
> +
> +/* BareBox Update handlers */
> +static int rn102_register_bbu(void)
> +{
> +    bbu_register_std_file_update("bootloader", 0,
> +                     "/dev/nand0.bootloader",
> +                     filetype_kwbimage_v1);
> +
> +    bbu_register_std_file_update("kernel", 0,
> +                     "/dev/nand0.kernel",
> +                     filetype_arm_zimage);
> +
> +    bbu_register_std_file_update("minirootfs", 0,
> +                     "/dev/nand0.minirootfs",
> +                     filetype_gzip);
> +
> +    return 0;
> +}
> +late_initcall(rn102_register_bbu);
> diff --git a/rebuild-series.sh b/rebuild-series.sh

This shouldn't be part of the series.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


