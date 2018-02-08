Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ejmAd-0002MB-3m
 for barebox@lists.infradead.org; Thu, 08 Feb 2018 13:23:25 +0000
Received: by mail-wm0-x242.google.com with SMTP id v71so9924917wmv.2
 for <barebox@lists.infradead.org>; Thu, 08 Feb 2018 05:23:11 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Thu,  8 Feb 2018 14:22:53 +0100
Message-Id: <20180208132301.24921-1-aleksander@aleksander.es>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC PATCH v2 0/8] ratp: new generic RATP command support
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

This updated patchset doesn't break the RATP API. It keeps the separate IDs for requests and responses, and doesn't try to flag responses or indications in a different way.

The command definition logic is also updated so that the request and response IDs associated to each command are defined in the body of the command, instead of magically constructing the id fields with macro glues.

All the RATP specific commands are now implemented in files completely separated from the console commands, and they are all kept in common/ratp, along with the core ratp implementation itself.

As additional changes w.r.t. v1, this patchset also includes a change to make it possible building the RATP logic without full console support (e.g. making it possible to enable CONFIG_RATP with CONFIG_CONSOLE_RATP disabled).

The new commands were tested with the libratp-barebox library
(wip2/md-mw branch) in https://github.com/aleksander0m/libratp-barebox

Aleksander Morgado (8):
  ratp: implement generic command support
  ratp: moved logic to its own subdirectory
  ratp: allow building without full console support
  ratp: implement ping as a standard ratp command
  ratp: implement getenv as a standard ratp command
  ratp: use xstrndup() instead of a custom xmemdup_add_zero()
  ratp: new md and mw commands
  ratp: new reset command

 arch/arm/lib32/barebox.lds.S              |   4 +
 arch/arm/lib64/barebox.lds.S              |   4 +
 arch/blackfin/boards/ipe337/barebox.lds.S |   5 +-
 arch/mips/lib/barebox.lds.S               |   4 +
 arch/nios2/cpu/barebox.lds.S              |   5 +-
 arch/openrisc/cpu/barebox.lds.S           |   4 +
 arch/ppc/boards/pcm030/barebox.lds.S      |   4 +
 arch/ppc/mach-mpc85xx/barebox.lds.S       |   4 +
 arch/sandbox/board/barebox.lds.S          |   5 +
 arch/x86/lib/barebox.lds.S                |   7 ++
 arch/x86/mach-efi/elf_ia32_efi.lds.S      |   5 +
 arch/x86/mach-efi/elf_x86_64_efi.lds.S    |   5 +
 common/Kconfig                            |  13 +-
 common/Makefile                           |   3 +-
 common/module.lds.S                       |   2 +
 common/ratp/Kconfig                       |  14 +++
 common/ratp/Makefile                      |   6 +
 common/ratp/getenv.c                      |  51 ++++++++
 common/ratp/md.c                          | 202 ++++++++++++++++++++++++++++++
 common/ratp/mw.c                          | 173 +++++++++++++++++++++++++
 common/ratp/ping.c                        |  40 ++++++
 common/{ => ratp}/ratp.c                  | 156 +++++++++++------------
 common/ratp/reset.c                       |  55 ++++++++
 fs/Kconfig                                |   2 +-
 include/asm-generic/barebox.lds.h         |   2 +
 include/ratp_bb.h                         |  52 ++++++++
 lib/Kconfig                               |   2 +-
 lib/readline.c                            |   2 +-
 28 files changed, 728 insertions(+), 103 deletions(-)
 create mode 100644 common/ratp/Kconfig
 create mode 100644 common/ratp/Makefile
 create mode 100644 common/ratp/getenv.c
 create mode 100644 common/ratp/md.c
 create mode 100644 common/ratp/mw.c
 create mode 100644 common/ratp/ping.c
 rename common/{ => ratp}/ratp.c (81%)
 create mode 100644 common/ratp/reset.c

--
2.15.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
