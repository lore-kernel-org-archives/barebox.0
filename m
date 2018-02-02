Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x243.google.com ([2a00:1450:400c:c0c::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ehZJ8-0004s5-2z
 for barebox@lists.infradead.org; Fri, 02 Feb 2018 11:15:04 +0000
Received: by mail-wr0-x243.google.com with SMTP id 41so20803551wrc.9
 for <barebox@lists.infradead.org>; Fri, 02 Feb 2018 03:14:50 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Fri,  2 Feb 2018 12:14:32 +0100
Message-Id: <20180202111442.12444-1-aleksander@aleksander.es>
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
Subject: [RFC PATCH 00/10] ratp: new generic RATP command support
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

Until now, the barebox-specific RATP commands were all defined and
implemented in common/ratp.c. This series of patches allow ratp
commands to be defined in a similar way to console commands.

The first patches (1-5) break the current RATP API, by introducing
the concept of requests, responses and indications:
 * Requests sent to one endpoint are expected to be replied with
   a response by the peer endpoint.
 * Indications are messages sent from one endpoint to another which
   are not expected to be replied.

The current RATP operations are reformatted using this approach, by
specifying the message type in the until now unused 'flags' field of
the RATP barebox message, and making all messages of the same
operation share the same command id.

The next patches (6-8) add support to specifying RATP commands in
separate implementation files, defined with some new helper
BAREBOX_RATP_CMD_START/BAREBOX_RATP_CMD_END macros. The getenv and
ping commands are updated to use this new approach.

The last patches (9-10) implement three new commands via RATP: reset,
md and mw. Both md and mw operations are defined by a binary API, and
allow reading/writing memory without needing to do any kind of
parsing (as it was the case when e.g. running the md or mw console
commands).

The new commands were tested with the libratp-barebox library
(wip/md-mw branch) in https://github.com/aleksander0m/libratp-barebox

What do you think of these changes? The initial RATP API break is bad
but not sure how many other RATP API users are around except for
bbremote (ported along with the changes) and the libratp-barebox I'm
writing.

Aleksander Morgado (10):
  ratp: define message type flags
  ratp: port command operation to req/rsp/ind format
  ratp: port ping operation to req/rsp format
  ratp: port getenv operation to req/rsp format
  ratp: port filesystem operation to req/rsp format
  ratp: implement generic command support
  ratp: implement ping as a standard ratp command
  ratp: implement getenv as a standard ratp command
  ratp: new reset command
  ratp: new md and mw commands

 arch/arm/lib32/barebox.lds.S              |   4 +
 arch/arm/lib64/barebox.lds.S              |   4 +
 arch/blackfin/boards/ipe337/barebox.lds.S |   5 +-
 arch/mips/lib/barebox.lds.S               |   4 +
 arch/nios2/cpu/barebox.lds.S              |   5 +-
 arch/openrisc/cpu/barebox.lds.S           |   4 +
 arch/ppc/boards/pcm030/barebox.lds.S      |   4 +
 arch/ppc/mach-mpc85xx/barebox.lds.S       |   4 +
 arch/sandbox/board/barebox.lds.S          |   5 +
 arch/x86/lib/barebox.lds.S                |   7 +
 arch/x86/mach-efi/elf_ia32_efi.lds.S      |   5 +
 arch/x86/mach-efi/elf_x86_64_efi.lds.S    |   5 +
 commands/Makefile                         |   2 +
 commands/md.c                             | 209 ++++++++++++++++++----
 commands/mw.c                             | 150 +++++++++++++++-
 commands/ratp-getenv.c                    |  50 ++++++
 commands/ratp-ping.c                      |  38 ++++
 commands/reset.c                          |  48 ++++-
 common/module.lds.S                       |   2 +
 common/ratp.c                             | 283 +++++++++++++++---------------
 include/asm-generic/barebox.lds.h         |   2 +
 include/ratp_bb.h                         |  49 ++++++
 scripts/remote/controller.py              |  71 ++++----
 scripts/remote/messages.py                |  90 ++++++----
 scripts/remote/ratpfs.py                  |   6 +-
 25 files changed, 800 insertions(+), 256 deletions(-)
 create mode 100644 commands/ratp-getenv.c
 create mode 100644 commands/ratp-ping.c

-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
