Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NsZzR-0000dd-Lj
	for barebox@lists.infradead.org; Fri, 19 Mar 2010 11:03:42 +0000
Date: Fri, 19 Mar 2010 12:03:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100319110340.GK19843@pengutronix.de>
References: <ba216b431003190349n1d2c05e3i54c78520680ebce1@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ba216b431003190349n1d2c05e3i54c78520680ebce1@mail.gmail.com>
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
To: Ivo Clarysse <ivo.clarysse@gmail.com>
Cc: barebox@lists.infradead.org

Hi Ivo,

On Fri, Mar 19, 2010 at 11:49:14AM +0100, Ivo Clarysse wrote:
> Hi all,
> 
> I tried getting barebox MX21ADS to boot from NAND, but I can't get it to work.
> 
> Booting in bootstrap mode (copying the barebox image to RAM, and then
> executing it from RAM) does work, and "nand_boot_test" copies the nand
> image correctly to RAM.
> 
> Any clues, anyone ?

Do you know how far you get? Do you have a JTAG debugger? If not,
switching a gpio might help.

Please check that all code you need is inside the first 2k. You can look
at barebox.S, your code might be to big.

Your code looks good from a first glance, I can't find any obvious
mistake in it.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
