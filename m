Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZiM-0001a0-7t
 for barebox@lists.infradead.org; Wed, 01 Apr 2020 09:31:15 +0000
Received: from geraet.fritz.box (muedsl-82-207-203-222.citykom.de
 [82.207.203.222]) (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 63B7E1C0014
 for <barebox@lists.infradead.org>; Wed,  1 Apr 2020 09:31:08 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed,  1 Apr 2020 11:31:00 +0200
Message-Id: <20200401093104.959691-1-ahmad@a3f.at>
MIME-Version: 1.0
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
Subject: [RFC PATCH 0/4] ARM: introduce sjlj structured exception handling
To: barebox@lists.infradead.org

We are already using data_abort_mask at a hand full of places to integrate
Hardware exceptions with normal flow control mechanisms.
While cumbersome to use, these few code blocks have a terrific track
record in stability, having so far never crashed due to NULL pointer
exceptions.

Having something like this everywhere in barebox would have been great
for software stability[1][2][3][4][5] in the past.

This patch takes this idea a bit further, by introducing new TRY/CATCH
primitives, inspired by Microsoft Visual C Structured Exception
Handling (SEH), into barebox. These can now be wielded to beat any and all
error conditions into total and utter submission:

    u32 cycles;
    TRY {
        u32 div = readl(NULL);
        cycles = ticks / div;
        cycles = ((void (*)())cycles)();
        if (cycles == 0)
            THROW(RuntimeError);
    } CATCH_3(DataAbortException, UndefinedInstructionException, RuntimerError) {
        cycles = 42;
    }
    ENDTRY;

As a first step, this patch series is introduced as a RFC for ARM.
Other platforms can follow when setjmp/longjump (sjlj) is implemented for them.
This will allow all barebox hackers to benefit from state-of-the-art tooling
in building the same highly robust and crash resistant software that has been
possible since SEH's introduction with Windows 95.

This is of course not only limited to hardware faults, as the example above shows.

By blurring the line between hardware fault handling and software error propagation,
it also allows a more natural control flow than having to deal with arcane UNIX
signals running in restricted contexts or *shudder* check against NULL
before using a pointer.

Hoping you are as hyped as I am.

[1]: dc5100e6b ("state: backend_storage: deal
     gracefully with runtime bucket corruption")
[2]: 09d11c546 ("video/ssd1307fb: fix NULL pointer dereference in probe")
[3]: 671a7d5df ("driver: bail out, don't crash, if drv->name is not set")
[4]: 8a774977b ("mci: dove: fix dereference of nullable pointer")
[5]: bb414a64b ("drivers: video: Fix parsing oftree timings")

Cheers,
Ahmad (4):
  ARM: implement sjlj-based TRY/CATCH exception handling
  startup: wrap barebox startup in TRY/CATCH
  ARM: rethrow CPU exceptions as sjlj-exceptions
  commands: implement except test command

 arch/arm/cpu/interrupts.c |  32 +--
 commands/Kconfig          |   5 +
 commands/Makefile         |   1 +
 commands/except.c         | 130 ++++++++++++
 common/Makefile           |   3 +
 common/except.c           | 282 +++++++++++++++++++++++++
 common/startup.c          |  70 +++++--
 include/except.h          | 156 ++++++++++++++
 include/exceptions.h      | 419 ++++++++++++++++++++++++++++++++++++++
 9 files changed, 1058 insertions(+), 40 deletions(-)
 create mode 100644 commands/except.c
 create mode 100644 common/except.c
 create mode 100644 include/except.h
 create mode 100644 include/exceptions.h

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
