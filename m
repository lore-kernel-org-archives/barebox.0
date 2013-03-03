Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eso.teric.us ([69.164.192.171])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UBxde-0006yZ-9n
 for barebox@lists.infradead.org; Sun, 03 Mar 2013 01:22:55 +0000
Message-Id: <bd191ce9722d99b8cc53eade80a9db75c29b0364.1362273612.git.joshc@eso.teric.us>
In-Reply-To: <cover.1362273612.git.joshc@eso.teric.us>
References: <cover.1362273612.git.joshc@eso.teric.us>
From: Josh Cartwright <joshc@eso.teric.us>
Date: Sat, 2 Mar 2013 18:48:17 -0600
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
Subject: [PATCH 1/5] trivial: doc: fix typos in mach-arm.dox
To: barebox@lists.infradead.org
Cc: Michal Simek <monstr@monstr.eu>

Signed-off-by: Josh Cartwright <joshc@eso.teric.us>
---
 arch/arm/mach-arm.dox | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-arm.dox b/arch/arm/mach-arm.dox
index 758df3f..03e39ea 100644
--- a/arch/arm/mach-arm.dox
+++ b/arch/arm/mach-arm.dox
@@ -12,7 +12,7 @@ FIXME
       to: "runtime address != link address". You should only use branches and
       do not refer to fixed data. This implies the use of assembler code only.
 
-The ARM CPU starts at lable \<reset\> in one of the corresponding start-*.S
+The ARM CPU starts at label \<reset\> in one of the corresponding start-*.S
 files. After some basic hardware setup it can call a function
 \<arch_init_lowlevel\> if not disabled. This call is intended to give all
 developers a chance to use a standard reset vector file, but also do some
@@ -47,7 +47,7 @@ Lets call the new MACH new_cpu.
  - add /arch/arm/mach-new_cpu/Makfile
  - add other CPU specific code into /arch/arm/mach-new_cpu/
  - modify /arch/arm/Kconfig
- - modify /arch/arm/Makfile
+ - modify /arch/arm/Makefile
 
 @section mach_arm_architecures Architectures using ARM processors
 For details on specific architectures:
-- 
1.8.1.2



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
