Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SxBip-0008Kg-UT
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 06:50:56 +0000
Date: Fri, 3 Aug 2012 08:50:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120803065053.GJ1451@pengutronix.de>
References: <20120730100022.GD19759@game.jcrosoft.org>
 <1343642565-32257-1-git-send-email-plagnioj@jcrosoft.com>
 <1343642565-32257-3-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343642565-32257-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 03/12] Add pre-bootloader (pbl) image support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 30, 2012 at 12:02:36PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This allows for creating a pre-bootloader binary for
>  - nand boot
>  - mmc boot
>  - compressed image
> 
> The pbl will be incharge of the lowlevel init if needed.
> The barebox will skip it.
> 
> Import string functions from linux 3.4 (arch/arm/boot/compressed/string.c) and
> implement a dummy panic.
> 
> For now on introduce dummy zbarebox* targets and c code that will contain later
> the decompressor. This only implemeted on ARM.
> 
> This patch is based on Sascha Hauer <s.hauer@pengutronix.de>
> Add compressed image support patch
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  Makefile                                           |    6 +-
>  arch/arm/Kconfig                                   |    1 +
>  arch/arm/Makefile                                  |    4 +
>  arch/arm/cpu/Makefile                              |    1 +

In this file the following must be added to make 'make clean' work in
the pbl directory:

archclean:
	$(MAKE) $(clean)=$(pbl)

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
