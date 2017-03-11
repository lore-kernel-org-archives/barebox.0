Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmjoN-0004iE-PV
 for barebox@lists.infradead.org; Sat, 11 Mar 2017 16:24:11 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <mol@pengutronix.de>) id 1cmjo1-0000sE-V6
 for barebox@lists.infradead.org; Sat, 11 Mar 2017 17:23:45 +0100
Received: from mol by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <mol@pengutronix.de>) id 1cmjo1-0000Zj-OC
 for barebox@lists.infradead.org; Sat, 11 Mar 2017 17:23:45 +0100
Date: Sat, 11 Mar 2017 17:23:45 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20170311162345.6uorq55jzjzjoa7f@pengutronix.de>
References: <1488776651-7555-2-git-send-email-plagnioj@jcrosoft.com>
 <1488792887-8715-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1488792887-8715-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/2 v2] efi: add serial driver support
To: barebox@lists.infradead.org

On Mon, Mar 06, 2017 at 10:34:47AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> So now we can stop to use the efi-stdio as this driver
> print on the Framebuffer and the serial at the same time.
> 
> This is specially usefull if we want to use the framebuffer via efi-gop for
> something else.
> 
> Do not forget to disable the efi-stdio device before enabling the console
> otherwise you will get double printing.

Works nicely here (with a unrelated fix). However, it might be better to
implement this as a console_platform_driver. The efi drivers are loaded
rather late during startup and this makes early debugging impossible.

Michael

> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> Fix copyright
> 
>  drivers/serial/Kconfig      |   4 +
>  drivers/serial/Makefile     |   1 +
>  drivers/serial/serial_efi.c | 221 ++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 226 insertions(+)
>  create mode 100644 drivers/serial/serial_efi.c
> 
> diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> index ced30530a..cfddc2ee9 100644
> --- a/drivers/serial/Kconfig
> +++ b/drivers/serial/Kconfig
> @@ -21,6 +21,10 @@ config DRIVER_SERIAL_AR933X
>  	  If you have an Atheros AR933X SOC based board and want to use the
>  	  built-in UART of the SoC, say Y to this option.
>  
> +config DRIVER_SERIAL_EFI
> +	bool "EFI serial"
> +	depends on EFI_BOOTUP
> +
>  config DRIVER_SERIAL_IMX
>  	depends on ARCH_IMX
>  	default y
> diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
> index 7d1bae195..3d9f735ed 100644
> --- a/drivers/serial/Makefile
> +++ b/drivers/serial/Makefile
> @@ -1,6 +1,7 @@
>  obj-$(CONFIG_DRIVER_SERIAL_ARM_DCC)		+= arm_dcc.o
>  obj-$(CONFIG_SERIAL_AMBA_PL011)			+= amba-pl011.o
>  obj-$(CONFIG_DRIVER_SERIAL_AR933X)		+= serial_ar933x.o
> +obj-$(CONFIG_DRIVER_SERIAL_EFI)			+= serial_efi.o
>  obj-$(CONFIG_DRIVER_SERIAL_IMX)			+= serial_imx.o
>  obj-$(CONFIG_DRIVER_SERIAL_STM378X)		+= stm-serial.o
>  obj-$(CONFIG_DRIVER_SERIAL_ATMEL)		+= atmel.o
> diff --git a/drivers/serial/serial_efi.c b/drivers/serial/serial_efi.c
> new file mode 100644
> index 000000000..f0a2b22c2
> --- /dev/null
> +++ b/drivers/serial/serial_efi.c
> @@ -0,0 +1,221 @@
> +/*
> + * Copyright (C) 2017 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> + *
> + * Under GPLv2 Only
> + */
> +
> +#include <common.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <malloc.h>
> +#include <efi.h>
> +#include <efi/efi.h>
> +#include <efi/efi-device.h>
> +
> +/*
> + * define for Control bits, grouped by read only, write only, and read write
> + *
> + * Read Only
> + */
> +#define EFI_SERIAL_CLEAR_TO_SEND        0x00000010
> +#define EFI_SERIAL_DATA_SET_READY       0x00000020
> +#define EFI_SERIAL_RING_INDICATE        0x00000040
> +#define EFI_SERIAL_CARRIER_DETECT       0x00000080
> +#define EFI_SERIAL_INPUT_BUFFER_EMPTY   0x00000100
> +#define EFI_SERIAL_OUTPUT_BUFFER_EMPTY  0x00000200
> +
> +/*
> + * Write Only
> + */
> +#define EFI_SERIAL_REQUEST_TO_SEND      0x00000002
> +#define EFI_SERIAL_DATA_TERMINAL_READY  0x00000001
> +
> +/*
> + * Read Write
> + */
> +#define EFI_SERIAL_HARDWARE_LOOPBACK_ENABLE     0x00001000
> +#define EFI_SERIAL_SOFTWARE_LOOPBACK_ENABLE     0x00002000
> +#define EFI_SERIAL_HARDWARE_FLOW_CONTROL_ENABLE 0x00004000
> +
> +typedef enum {
> +	DefaultParity,
> +	NoParity,
> +	EvenParity,
> +	OddParity,
> +	MarkParity,
> +	SpaceParity
> +} efi_parity_type;
> +
> +typedef enum {
> +	DefaultStopBits,
> +	OneStopBit,
> +	OneFiveStopBits,
> +	TwoStopBits
> +} efi_stop_bits_type;
> +
> +struct efi_serial_io_mode {
> +	uint32_t controlmask;
> +	uint32_t timeout;
> +	uint64_t baudrate;
> +	uint32_t receivefifodepth;
> +	uint32_t databits;
> +	uint32_t parity;
> +	uint32_t stopbits;
> +};
> +
> +struct efi_serial_io_protocol {
> +	uint32_t revision;
> +
> +	efi_status_t (EFIAPI *reset) (struct efi_serial_io_protocol *This);
> +	efi_status_t (EFIAPI *set_attributes) (struct efi_serial_io_protocol *This,
> +			uint64_t baudrate, uint32_t receivefifodepth,
> +			uint32_t timeout, efi_parity_type parity,
> +			uint8_t databits, efi_stop_bits_type stopbits);
> +	efi_status_t (EFIAPI *setcontrol) (struct efi_serial_io_protocol *This,
> +			uint32_t control);
> +	efi_status_t (EFIAPI *getcontrol) (struct efi_serial_io_protocol *This,
> +			uint32_t *control);
> +	efi_status_t (EFIAPI *write) (struct efi_serial_io_protocol *This,
> +			unsigned long *buffersize, void *buffer);
> +	efi_status_t (EFIAPI *read) (struct efi_serial_io_protocol *This,
> +			unsigned long *buffersize, void *buffer);
> +
> +	struct efi_serial_io_mode *mode;
> +};
> +
> +/*
> + * We wrap our port structure around the generic console_device.
> + */
> +struct efi_serial_port {
> +	struct efi_serial_io_protocol *serial;
> +	struct console_device	uart;		/* uart */
> +	struct efi_device *efidev;
> +};
> +
> +static inline struct efi_serial_port *
> +to_efi_serial_port(struct console_device *uart)
> +{
> +	return container_of(uart, struct efi_serial_port, uart);
> +}
> +
> +static int efi_serial_setbaudrate(struct console_device *cdev, int baudrate)
> +{
> +	struct efi_serial_port *uart = to_efi_serial_port(cdev);
> +	struct efi_serial_io_protocol *serial = uart->serial;
> +	efi_status_t efiret;
> +
> +	efiret = serial->set_attributes(serial, baudrate, 0, 0, NoParity, 8,
> +					OneStopBit);
> +	if (EFI_ERROR(efiret))
> +		return -efi_errno(efiret);
> +
> +	return 0;
> +}
> +
> +static void efi_serial_putc(struct console_device *cdev, char c)
> +{
> +	struct efi_serial_port *uart = to_efi_serial_port(cdev);
> +	struct efi_serial_io_protocol *serial = uart->serial;
> +	uint32_t control;
> +	efi_status_t efiret;
> +	unsigned long buffersize = sizeof(char);
> +
> +	do {
> +		efiret = serial->getcontrol(serial, &control);
> +		if (EFI_ERROR(efiret))
> +			return;
> +
> +	} while(!(control & EFI_SERIAL_CLEAR_TO_SEND));
> +
> +	serial->write(serial, &buffersize, &c);
> +}
> +
> +static int efi_serial_puts(struct console_device *cdev, const char *s)
> +{
> +	struct efi_serial_port *uart = to_efi_serial_port(cdev);
> +	struct efi_serial_io_protocol *serial = uart->serial;
> +	uint32_t control;
> +	efi_status_t efiret;
> +	unsigned long buffersize = strlen(s) * sizeof(char);
> +
> +	do {
> +		efiret = serial->getcontrol(serial, &control);
> +		if (EFI_ERROR(efiret))
> +			return 0;
> +
> +	} while(!(control & EFI_SERIAL_CLEAR_TO_SEND));
> +
> +	serial->write(serial, &buffersize, (void*)s);
> +
> +	return strlen(s);
> +}
> +
> +static int efi_serial_getc(struct console_device *cdev)
> +{
> +	struct efi_serial_port *uart = to_efi_serial_port(cdev);
> +	struct efi_serial_io_protocol *serial = uart->serial;
> +	uint32_t control;
> +	efi_status_t efiret;
> +	unsigned long buffersize = sizeof(char);
> +	char c;
> +
> +	do {
> +		efiret = serial->getcontrol(serial, &control);
> +		if (EFI_ERROR(efiret))
> +			return (int)-1;
> +
> +	} while(!(control & EFI_SERIAL_DATA_SET_READY));
> +
> +	serial->read(serial, &buffersize, &c);
> +
> +	return (int)c;
> +}
> +
> +static int efi_serial_tstc(struct console_device *cdev)
> +{
> +	struct efi_serial_port *uart = to_efi_serial_port(cdev);
> +	struct efi_serial_io_protocol *serial = uart->serial;
> +	uint32_t control;
> +	efi_status_t efiret;
> +
> +	efiret = serial->getcontrol(serial, &control);
> +	if (EFI_ERROR(efiret))
> +		return 0;
> +
> +	return !(control & EFI_SERIAL_INPUT_BUFFER_EMPTY);
> +}
> +
> +static int efi_serial_probe(struct efi_device *efidev)
> +{
> +	struct efi_serial_port *uart;
> +	struct console_device *cdev;
> +
> +	uart = xzalloc(sizeof(struct efi_serial_port));
> +
> +	cdev = &uart->uart;
> +	cdev->dev = &efidev->dev;
> +	cdev->tstc = efi_serial_tstc;
> +	cdev->putc = efi_serial_putc;
> +	cdev->puts = efi_serial_puts;
> +	cdev->getc = efi_serial_getc;
> +	cdev->setbrg = efi_serial_setbaudrate;
> +
> +	uart->serial = efidev->protocol;
> +
> +	uart->serial->reset(uart->serial);
> +
> +	/* Enable UART */
> +
> +	console_register(cdev);
> +
> +	return 0;
> +}
> +
> +static struct efi_driver efi_serial_driver = {
> +        .driver = {
> +		.name  = "efi-serial",
> +	},
> +        .probe = efi_serial_probe,
> +	.guid = EFI_SERIAL_IO_PROTOCOL_GUID,
> +};
> +device_efi_driver(efi_serial_driver);
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
