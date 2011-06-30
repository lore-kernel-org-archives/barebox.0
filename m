Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.98.mail-out.ovh.net ([87.98.174.207]
	helo=98.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qc7hP-0000b1-8p
	for barebox@lists.infradead.org; Thu, 30 Jun 2011 03:13:52 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by 98.mail-out.ovh.net (Postfix) with SMTP id D536954E618
	for <barebox@lists.infradead.org>;
	Thu, 30 Jun 2011 05:13:26 +0200 (CEST)
Date: Thu, 30 Jun 2011 04:58:44 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110630025844.GK17355@game.jcrosoft.org>
References: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
	<1309317858-11861-3-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1309317858-11861-3-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 3/4] MIPS: add qemu malta board support to barebox
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

> +
> +/** to work with the 8250 UART driver implementation we need this function */
> +static unsigned int malta_uart_read(unsigned long base, unsigned char reg_idx)
> +{
> +	return readb((char *)base + reg_idx);
> +}
> +
> +/** to work with the 8250 UART driver implementation we need this function */
> +static void malta_uart_write(unsigned int val, unsigned long base, unsigned char reg_idx)
> +{
> +	writeb(val, (char *)base + reg_idx);
> +}
> +
> +static struct NS16550_plat serial_plat = {
> +       .clock = 1843200, /* no matter */
why no matter?
> +       .f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR,
> +       .reg_read = malta_uart_read,
> +       .reg_write = malta_uart_write,
plewase tab for indent
> +};
> +
> +/* we are expecting always one serial interface */
> +static struct device_d generic_malta_serial_device = {
> +       .name = "serial_ns16550",
> +       .map_base = DEBUG_LL_UART_ADDR,
> +       .size = 8,
> +       .platform_data = (void *)&serial_plat,
> +};
> +
> +static int malta_console_init(void)
> +{
> +       /* Register the serial port */
> +       return register_device(&generic_malta_serial_device);
> +}
> +console_initcall(malta_console_init);
> diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
> new file mode 100644
> index 0000000..507df8a
> --- /dev/null
> +++ b/arch/mips/configs/qemu-malta_defconfig
> @@ -0,0 +1,46 @@
> +CONFIG_STACK_SIZE=0x7000
> +CONFIG_BROKEN=y
> +CONFIG_EXPERIMENTAL=y
> +CONFIG_PROMPT="uboot:"
barebox
> +CONFIG_LONGHELP=y
> +CONFIG_HUSH_FANCY_PROMPT=y
> +CONFIG_HUSH_GETOPT=y
> +CONFIG_CMDLINE_EDITING=y
> +CONFIG_AUTO_COMPLETE=y
> +CONFIG_MENU=y
> +CONFIG_PASSWORD=y
> +CONFIG_PARTITION=y
> +# CONFIG_DEFAULT_ENVIRONMENT is not set
Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
