Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22d.google.com ([2a00:1450:4008:c01::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjduW-0005qy-N7
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 23:11:34 +0000
Received: by mail-bk0-f45.google.com with SMTP id je10so1807950bkc.18
 for <barebox@lists.infradead.org>; Mon, 03 Jun 2013 16:11:01 -0700 (PDT)
From: Alexander Aring <alex.aring@gmail.com>
Date: Tue,  4 Jun 2013 01:13:47 +0200
Message-Id: <1370301232-12962-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH/RFC 0/5] Another try for a new memtest implementation
To: barebox@lists.infradead.org

Hi,

this is a new try to get a new memtest implementation into barebox.

I removed the ADDRESS_IN_REGIONS macro, which was a very ugly solution.
The new memtest command used a list and save all unused sdram_regions
of each bank. Then running the mem_test routine on these regions.
After that the memtest command will release the requested sdram_regions.

I removed the start and stop command arguments to make the implementation
easier/understandable and it's not necessary anyway.

Maybe it's better to remove the silent ALIGN and ALIGN_DOWN from the start
and end address in the common mem_test routine, because addresses are already
align.
It is difficult to explain because a end address has the form of 0xXXXXffff
and a ALIGN_DOWN on it with a mask of 3 we have a calculated end address of
0xXXXXfffA which is wrong. (0xXXXXffff - 4) - 1...

Another question is:
Can someone test it with more than one bank, please? :-)

Regards
Alex

Alexander Aring (5):
  common: fix codestyle in ALIGN macros
  common: add ALIGN_DOWN macro
  memtest: remove memtest command
  common: add memtest.c  with mem_test routine
  commands: add new memtest command

 commands/Kconfig   |  17 +-
 commands/Makefile  |   2 +-
 commands/memtest.c | 489 +++++++++++++++++++++--------------------------------
 common/Makefile    |   1 +
 common/memtest.c   | 313 ++++++++++++++++++++++++++++++++++
 include/common.h   |   5 +-
 include/memtest.h  |  14 ++
 7 files changed, 535 insertions(+), 306 deletions(-)
 create mode 100644 common/memtest.c
 create mode 100644 include/memtest.h

-- 
1.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
