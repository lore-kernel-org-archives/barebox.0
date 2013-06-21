Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uq3aC-00077o-0y
 for barebox@lists.infradead.org; Fri, 21 Jun 2013 15:49:05 +0000
Date: Fri, 21 Jun 2013 17:48:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130621154840.GF32299@pengutronix.de>
References: <1371633093-23179-1-git-send-email-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1371633093-23179-1-git-send-email-linux@rempel-privat.de>
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
Subject: Re: [PATCH 0/8] low level initialisation for ar2313
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 19, 2013 at 11:11:25AM +0200, Oleksij Rempel wrote:
> this patch set add low level initialisation for Atheros ar2313
> and board based on this chip - Netgear wg102.
> 
> Antony Pavlov (2):
>   MIPS: pbl: add mips_barebox_10h asm macro
>   MIPS: mach-ar231x: enable DEBUG_LL
> 
> Oleksij Rempel (6):
>   MIPS: pbl: add pbl_sleep macro
>   MIPS: pbl: add pbl_probe_mem macro
>   MIPS: mach-ar231x: add lowlevel init pbl macros
>   MIPS: netgear-wg102: add pbl support
>   MIPS: netgear-wg102: add debug_ll
>   netgear-wg102: pbl, add extra check for mem config

Applied, thanks

Sascha

> 
>  arch/mips/Kconfig                                  |   1 +
>  .../netgear-wg102/include/board/board_pbl_start.h  |  77 +++++++++
>  .../boards/netgear-wg102/include/board/debug_ll.h  |  33 ++++
>  arch/mips/include/asm/pbl_macros.h                 |  38 +++++
>  arch/mips/mach-ar231x/Kconfig                      |   2 +
>  arch/mips/mach-ar231x/include/mach/debug_ll.h      |  27 ++++
>  arch/mips/mach-ar231x/include/mach/pbl_macros.h    | 177 +++++++++++++++++++++
>  7 files changed, 355 insertions(+)
>  create mode 100644 arch/mips/boards/netgear-wg102/include/board/board_pbl_start.h
>  create mode 100644 arch/mips/boards/netgear-wg102/include/board/debug_ll.h
>  create mode 100644 arch/mips/mach-ar231x/include/mach/debug_ll.h
>  create mode 100644 arch/mips/mach-ar231x/include/mach/pbl_macros.h
> 
> -- 
> 1.8.1.2
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
