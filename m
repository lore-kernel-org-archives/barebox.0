Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QlBc6-0000g3-Ay
	for barebox@lists.infradead.org; Mon, 25 Jul 2011 03:13:51 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 4F27A10048FD
	for <barebox@lists.infradead.org>;
	Mon, 25 Jul 2011 05:14:38 +0200 (CEST)
Date: Mon, 25 Jul 2011 04:56:33 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110725025633.GB10295@game.jcrosoft.org>
References: <1311535336-4534-1-git-send-email-antonynpavlov@gmail.com>
	<1311535336-4534-5-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1311535336-4534-5-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 06/10] MIPS: add qemu malta board support to barebox
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

> +
> +NS16550_READ_WRITE_UART_FUNC(malta, 0, 0)
> +
> +static struct NS16550_plat serial_plat = {
> +	.clock = 1843200, /* no matter */
> +	.f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR,
> +	.reg_read = malta_uart_read,
> +	.reg_write = malta_uart_write,
> +};
> +
> +/* we are expecting always one serial interface */
> +static struct device_d generic_malta_serial_device = {
> +	.name = "serial_ns16550",
> +	.map_base = DEBUG_LL_UART_ADDR,
> +	.size = 8,
> +	.platform_data = (void *)&serial_plat,
> +};
please rebase this against next branch

map_base and size are depricated

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
