Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uue2M-0000bY-Fo
 for barebox@lists.infradead.org; Thu, 04 Jul 2013 07:33:07 +0000
Date: Thu, 4 Jul 2013 09:32:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130704073240.GT516@pengutronix.de>
References: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372789849-12194-11-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372789849-12194-11-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH v2 10/10] ARM: mvebu: import DT files for Dove SoC and
 SolidRun CuBox
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Tue, Jul 02, 2013 at 08:30:49PM +0200, Sebastian Hesselbarth wrote:
> This imports dove.dtsi and dove-cubox.dts from Linux kernel with timer
> node added.
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

Applied with two small changes

First I added dove-cubox.dtb to the Makefile

> diff --git a/arch/arm/dts/dove-cubox.dts b/arch/arm/dts/dove-cubox.dts
> +
> +	chosen {
> +		bootargs = "console=ttyS0,115200n8 earlyprintk";
> +		linux,stdoutpath = "/soc@f1000000/serial@12000";
> +	};

Then I learned something about dtc. The above can be written as

	linux,stdoutpath = &uart0;

Which expands to the nodes full path.

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
