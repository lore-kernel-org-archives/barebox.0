Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NtgQB-0007PS-V8
	for barebox@lists.infradead.org; Mon, 22 Mar 2010 12:07:58 +0000
Received: by wwd20 with SMTP id 20so1687330wwd.36
	for <barebox@lists.infradead.org>; Mon, 22 Mar 2010 05:07:49 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20100319110340.GK19843@pengutronix.de>
References: <ba216b431003190349n1d2c05e3i54c78520680ebce1@mail.gmail.com>
	<20100319110340.GK19843@pengutronix.de>
Date: Mon, 22 Mar 2010 13:07:48 +0100
Message-ID: <ba216b431003220507w69646363l212495ada7e3b965@mail.gmail.com>
From: Ivo Clarysse <ivo.clarysse@gmail.com>
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
Subject: Re: [RFC] imx21ads nand boot
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Mar 19, 2010 at 12:03 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Do you know how far you get? Do you have a JTAG debugger? If not,
> switching a gpio might help.

I used the CLKO pin to track down how far the booting from NAND gets.

It hangs in nand_imx.c:wait_op_done, after having sent the first
NAND_CMD_READ0 command from nand_imx.c:imx_nand_load_image. (Weird,
since that routine has a timeout)

So SDRAM init appears to be ok; I also checked barebox.S, and
everything needed to complete imx_nand_load_image is in the first
2KiB.

I'll hook up a BDI2000 and see if that helps.

Best regards,

Ivo.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
