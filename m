Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo4.mail-out.ovh.net ([178.32.228.4])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SSWH7-0003hx-BF
 for barebox@lists.infradead.org; Thu, 10 May 2012 16:31:35 +0000
Received: from mail413.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 91FAB104E0F6
 for <barebox@lists.infradead.org>; Thu, 10 May 2012 18:33:10 +0200 (CEST)
Date: Thu, 10 May 2012 18:31:32 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120510163132.GD13709@game.jcrosoft.org>
References: <1336642330-23675-1-git-send-email-antonynpavlov@gmail.com>
 <1336642330-23675-5-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1336642330-23675-5-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 4/5] MIPS: XBurst: add Ritmix RZX-50 board support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

> diff --git a/arch/mips/boards/rzx50/Makefile b/arch/mips/boards/rzx50/Makefile
> new file mode 100644
> index 0000000..ff1a655
> --- /dev/null
> +++ b/arch/mips/boards/rzx50/Makefile
> @@ -0,0 +1 @@
> +obj-$(CONFIG_DRIVER_SERIAL_NS16550) += serial.o
> diff --git a/arch/mips/boards/rzx50/config.h b/arch/mips/boards/rzx50/config.h
> new file mode 100644
> index 0000000..eb4ab08
> --- /dev/null
> +++ b/arch/mips/boards/rzx50/config.h
> @@ -0,0 +1,19 @@
> +/*
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + *
> + */
> +
> +/* nothing special yet */
> diff --git a/arch/mips/boards/rzx50/rzx50.dox b/arch/mips/boards/rzx50/rzx50.dox
> new file mode 100644
> index 0000000..9f0d600
> --- /dev/null
> +++ b/arch/mips/boards/rzx50/rzx50.dox
> @@ -0,0 +1,20 @@
> +/** @page rzx50 Ritmix RZX-50 game console
> +
> +The portable game console has
> +@li JZ4755 SoC;
> +@li 64 MiB SDRAM;
> +@li 4 MiB microSDHC card / 4 MiB NAND type Flash Memory;
4 MiB? of 4 BiG?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
