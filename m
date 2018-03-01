Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1erJtB-00017J-GA
 for barebox@lists.infradead.org; Thu, 01 Mar 2018 08:48:35 +0000
Date: Thu, 1 Mar 2018 09:48:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180301084821.3aznzoovyik254uj@pengutronix.de>
References: <20180224150121.28309-1-aleksander@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180224150121.28309-1-aleksander@aleksander.es>
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
Subject: Re: [PATCH v3 0/9] ratp: new generic RATP command support
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Sat, Feb 24, 2018 at 04:01:12PM +0100, Aleksander Morgado wrote:
> This v3 series includes new md, mw and reset operations in bbremote, using the new binary API interface. The actual commits including the new RATP commands include the bbremote changes as well.
> 
> An additional patch is also included to add a reference to the third-party libratp-barebox and ratp-barebox-cli tools.
> 
> Aleksander Morgado (9):
>   ratp: implement generic command support
>   ratp: moved logic to its own subdirectory
>   ratp: allow building without full console support
>   ratp: implement ping as a standard ratp command
>   ratp: implement getenv as a standard ratp command
>   ratp: use xstrndup() instead of a custom xmemdup_add_zero()
>   ratp: new md and mw commands
>   ratp: new reset command
>   docs: add reference to libratp-barebox in the remote-control docs

Applied, thanks

Sascha

> 
>  Documentation/user/remote-control.rst     |   7 ++
>  arch/arm/lib32/barebox.lds.S              |   4 +
>  arch/arm/lib64/barebox.lds.S              |   4 +
>  arch/blackfin/boards/ipe337/barebox.lds.S |   5 +-
>  arch/mips/lib/barebox.lds.S               |   4 +
>  arch/nios2/cpu/barebox.lds.S              |   5 +-
>  arch/openrisc/cpu/barebox.lds.S           |   4 +
>  arch/ppc/boards/pcm030/barebox.lds.S      |   4 +
>  arch/ppc/mach-mpc85xx/barebox.lds.S       |   4 +
>  arch/sandbox/board/barebox.lds.S          |   5 +
>  arch/x86/lib/barebox.lds.S                |   7 ++
>  arch/x86/mach-efi/elf_ia32_efi.lds.S      |   5 +
>  arch/x86/mach-efi/elf_x86_64_efi.lds.S    |   5 +
>  common/Kconfig                            |  13 +-
>  common/Makefile                           |   3 +-
>  common/module.lds.S                       |   2 +
>  common/ratp/Kconfig                       |  14 +++
>  common/ratp/Makefile                      |   6 +
>  common/ratp/getenv.c                      |  51 ++++++++
>  common/ratp/md.c                          | 202 ++++++++++++++++++++++++++++++
>  common/ratp/mw.c                          | 173 +++++++++++++++++++++++++
>  common/ratp/ping.c                        |  40 ++++++
>  common/{ => ratp}/ratp.c                  | 156 +++++++++++------------
>  common/ratp/reset.c                       |  55 ++++++++
>  fs/Kconfig                                |   2 +-
>  include/asm-generic/barebox.lds.h         |   2 +
>  include/ratp_bb.h                         |  52 ++++++++
>  lib/Kconfig                               |   2 +-
>  lib/readline.c                            |   2 +-
>  scripts/remote/controller.py              |  27 ++++
>  scripts/remote/main.py                    |  51 ++++++++
>  scripts/remote/messages.py                | 105 ++++++++++++++++
>  32 files changed, 918 insertions(+), 103 deletions(-)
>  create mode 100644 common/ratp/Kconfig
>  create mode 100644 common/ratp/Makefile
>  create mode 100644 common/ratp/getenv.c
>  create mode 100644 common/ratp/md.c
>  create mode 100644 common/ratp/mw.c
>  create mode 100644 common/ratp/ping.c
>  rename common/{ => ratp}/ratp.c (81%)
>  create mode 100644 common/ratp/reset.c
> 
> --
> 2.15.1
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
