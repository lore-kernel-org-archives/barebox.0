Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f176.google.com ([209.85.215.176])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3Oxq-00059T-UU
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 10:44:23 +0000
Received: by mail-ea0-f176.google.com with SMTP id a13so1114611eaa.21
 for <barebox@lists.infradead.org>; Thu, 07 Feb 2013 02:44:21 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Thu,  7 Feb 2013 11:44:54 +0100
Message-Id: <1360233900-26486-1-git-send-email-alex.aring@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 0/6] add new memtest command
To: barebox@lists.infradead.org

The new memtest command supports to enable or disable
caching during testing(only arm architecture) and
skipping barebox regions for avoid a barebox killing,
if you want to write on barebox allocated regions.

If you run memtest without a argument, memtest will
run on all registered memory banks.

The new memtest command has these arguments:
        -s #ADDRESS [for start address]
        -e #ADDRESS [for end address]
        -i #ITER [for numbers of iterations]
        -c [don't disable caching]
        -b [do bus testing only]

v2:
        - change stdout of memtest to make it more beautiful

v3:
	- fix testing of address bus <-- this never worked before
	- put mem_test function into common/memory_test.c
	- fix some comment issues
	- align quietly start and end address
	- fix some newline issues

Alexander Aring (6):
  common: fix codestyle in ALIGN macros
  common: add ALIGN_DOWN macro
  memory: add function address_in_sdram_regions
  memtest: remove memtest command
  common: add mem_test routine
  commands: add new memtest command

 commands/Kconfig      |  17 +-
 commands/Makefile     |   2 +-
 commands/memtest.c    | 573 +++++++++++++++++++++++++-------------------------
 common/Kconfig        |   7 +
 common/Makefile       |   1 +
 common/memory.c       |  16 ++
 common/memory_test.c  | 399 +++++++++++++++++++++++++++++++++++
 include/common.h      |   5 +-
 include/memory.h      |   6 +
 include/memory_test.h |  13 ++
 10 files changed, 747 insertions(+), 292 deletions(-)
 create mode 100644 common/memory_test.c
 create mode 100644 include/memory_test.h

-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
