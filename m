Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gx0-f177.google.com ([209.85.161.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ROFra-000362-4p
 for barebox@lists.infradead.org; Wed, 09 Nov 2011 21:39:18 +0000
Received: by ggno1 with SMTP id o1so1718299ggn.36
 for <barebox@lists.infradead.org>; Wed, 09 Nov 2011 13:39:16 -0800 (PST)
From: Lucas De Marchi <lucas.demarchi@profusion.mobi>
Date: Wed,  9 Nov 2011 19:39:53 -0200
Message-Id: <1320874797-14270-1-git-send-email-lucas.demarchi@profusion.mobi>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/4] Fixes for x86
To: barebox@lists.infradead.org

The following patches are fixes for x86 in order to be able to build barebox
with ARCH=x86 and generic_defconfig. Patch 3 fixes build for any version of gcc
while the last one is specific to gcc 4.6 (I'm not sure about gcc 4.5).

With gcc 4.6 there's still an error, but when it's linking barebox, that I
didn't find out how to fix. I thought the problem was in the linker or linker
script but they seem to be ok since it works when compiled with gcc 4.4. The
error is the following:

  LD      barebox
ld: section .eh_frame loaded at [0000000000011a54,0000000000018ac3] overlaps section .barebox_initcalls loaded at [0000000000011a54,0000000000011a9b]
make: *** [barebox] Error 1


Regards,
Lucas De Marchi



Lucas De Marchi (4):
  Make fprintf return number of bytes written
  Add setupmbr to gitignore
  x86: fix build error because of missing header
  x86: fix symbol size calculation

 arch/x86/boot/pmjump.S           |    3 ++-
 arch/x86/include/asm/types.h     |    2 ++
 arch/x86/include/asm/unaligned.h |   14 ++++++++++++++
 arch/x86/lib/traveler.S          |   11 +++++++----
 common/console.c                 |    4 +++-
 common/console_simple.c          |    4 +++-
 include/stdio.h                  |    2 +-
 scripts/setupmbr/.gitignore      |    1 +
 8 files changed, 33 insertions(+), 8 deletions(-)
 create mode 100644 arch/x86/include/asm/unaligned.h
 create mode 100644 scripts/setupmbr/.gitignore

-- 
1.7.7.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
