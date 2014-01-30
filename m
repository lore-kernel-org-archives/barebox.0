Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8oCq-0007xu-Ou
 for barebox@lists.infradead.org; Thu, 30 Jan 2014 09:46:45 +0000
Received: from coredoba.hi.pengutronix.de ([2001:6f8:1178:2:219:99ff:fe56:8d7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1W8oCU-0001bD-EB
 for barebox@lists.infradead.org; Thu, 30 Jan 2014 10:46:22 +0100
Received: from jlu by coredoba.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jlu@pengutronix.de>) id 1W8oCV-0008Lv-7B
 for barebox@lists.infradead.org; Thu, 30 Jan 2014 10:46:23 +0100
Message-ID: <1391075183.18253.38.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Thu, 30 Jan 2014 10:46:23 +0100
In-Reply-To: <1391074829-25877-1-git-send-email-s.hauer@pengutronix.de>
References: <1391074829-25877-1-git-send-email-s.hauer@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 1/2] ARM: i.MX: edmqmx6: Copy fdt to SDRAM
To: barebox@lists.infradead.org

On Thu, 2014-01-30 at 10:40 +0100, Sascha Hauer wrote:
> @@ -136,26 +137,37 @@ static void sdram_init(void)
>         writel(0x0000047f, 0x021e80a4);
>         writel(0x0000c34f, 0x021e80a8);
>         writel(0x00000001, 0x021e8080);
> +       putc_ll('>');
>  } 

Some leftover debugging. ;)
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
