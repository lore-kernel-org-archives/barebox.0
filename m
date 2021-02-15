Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBbJZ-0005TL-GU
 for barebox@lists.infradead.org; Mon, 15 Feb 2021 10:41:14 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1lBbJY-00056o-4n
 for barebox@lists.infradead.org; Mon, 15 Feb 2021 11:41:12 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1lBbJV-0001ul-KE
 for barebox@lists.infradead.org; Mon, 15 Feb 2021 11:41:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Feb 2021 11:36:53 +0100
Message-Id: <20210215103704.32537-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 00/12] poller: run pollers as proper coroutines (green threads)
To: barebox@lists.infradead.org

barebox pollers were so far very limited coroutines that only yield at
the end of the function. This series leverages setjmp/longjmp to allow
pollers to yield at any point of their execution. The motivation behind
this is that it finally becomes feasible to port threaded code to barebox with
minimal modification: If your thread has a delay, just stick in a
poller_yield() and give other threads as well as the main thread a chance
to run before resuming execution again.

How that can look like is showing in "usbgadget: ums: run gadget loop in a
background coroutine if possible", which turns a blocking loop very
naturally into a thread.

The implementation is basically: setjmp() to store the original place of
execution, longjmp() to jump back on a context switch, initjmp() to start
a new poller the very first time. The reason why we need an extra initjmp()
beyond standard C setjmp and longjmp is because those two only save a
stack pointer, so coroutines can clobber each other's stack.
With initjmp, the new coroutine starts directly executing on a disjoint stack.
initjmp, like setjmp and longjmp should be implemented in assembly, but it
should be fairly straight forward.  e.g. the ARM implementation for initjmp is
a mere 4 instructions long.

For now, I only implemented this for ARM and sandbox. If this is accepted and
becomes available for other architectures as well, it'll likely result in
changes to other parts of barebox:

  - Workqueues will become obsolete. This series already has pollers
    doing file system access yielding until they can be run in command context

  - Slices will become obsolete. They are equivalent to a mutex_try_lock
    and we can implement blocking mutexes now

  - Functions calling poller_call can be changed to call poller_reschedule()
    to become available from calling from any context

  - Backtraces should indicate which coroutine is currently running

The execution tax on context switching is that for an idle i.MX8MM system
30% less pollers can be executed in a given time frame. The extra accounting
overhead for a yielding poller is in the range of a 100 byte or so, which
is negligible compared to the stack newly allocated on poller creation, which
is CONFIG_STACK_SIZE bytes long, usually 32K. Pollers probably don't need that
much stack space, but for now, we just use the same stack size everywhere.

This is series is based on:
 - <20210215102442.28731-1-a.fatoum@pengutronix.de> to avoid a conflict
 - <20210215102740.30418-1-a.fatoum@pengutronix.de> which adds blocking
   usb mass storage, which is made non-blocing here

Note: Despite the name green threads (or fibers), this is wholly cooperative.
There is no preemption and thus no new extra precautions that need to be taken
when writing pollers. On the contrary, if we make this available everywhere,
you can basically do anything in a poller.

Looking forward to feedback,
Ahmad Fatoum (12):
  common: add coroutine support
  poller: run pollers as proper coroutines if architecture supports it
  ARM: asm: setjmp: annotate setjmp/longjmp for GCC
  ARM: asm: setjmp: implement coroutine dependency initjmp()
  sandbox: asm: implement setjmp/longjmp/initjmp
  poller: command: add new coroutine check
  slice: have assert_command_context() yield until true if possible
  poller: implement basic Linux-like completion API
  include: add kthread wrappers for pollers
  usbgadget: ums: run gadget loop in a background coroutine if possible
  usbgadget: refactor usbgadget_register to accept array
  usbgadget: multi: wire mass storage gadget into composite gadget

 Documentation/user/usb.rst          |   2 +
 arch/arm/Kconfig                    |   1 +
 arch/arm/include/asm/setjmp.h       |   6 +-
 arch/arm/lib32/setjmp.S             |   8 ++
 arch/arm/lib64/setjmp.S             |   9 ++
 arch/sandbox/Kconfig                |   1 +
 arch/sandbox/Makefile               |   5 +-
 arch/sandbox/include/asm/setjmp.h   |  17 +++
 arch/sandbox/os/Makefile            |   5 +-
 arch/sandbox/os/setjmp.c            | 180 ++++++++++++++++++++++++++++
 commands/Kconfig                    |  10 ++
 commands/Makefile                   |   2 +-
 commands/usbgadget.c                |  29 +++--
 common/Kconfig                      |  17 +++
 common/Makefile                     |   1 +
 common/coroutine.c                  | 178 +++++++++++++++++++++++++++
 common/poller.c                     | 111 ++++++++++++++---
 common/usbgadget.c                  |  55 +++++++--
 drivers/usb/gadget/Kconfig          |  12 +-
 drivers/usb/gadget/f_mass_storage.c |  14 +++
 drivers/usb/gadget/multi.c          |  36 ++++++
 include/coroutine.h                 |  43 +++++++
 include/linux/completion.h          |  61 ++++++++++
 include/linux/kthread.h             |  72 +++++++++++
 include/poller.h                    |  16 ++-
 include/slice.h                     |  14 ++-
 include/usb/gadget-multi.h          |  19 ++-
 27 files changed, 869 insertions(+), 55 deletions(-)
 create mode 100644 arch/sandbox/include/asm/setjmp.h
 create mode 100644 arch/sandbox/os/setjmp.c
 create mode 100644 common/coroutine.c
 create mode 100644 include/coroutine.h
 create mode 100644 include/linux/completion.h
 create mode 100644 include/linux/kthread.h

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
