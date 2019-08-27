Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2cWq-0000LU-Lg
 for barebox@lists.infradead.org; Tue, 27 Aug 2019 14:33:02 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 7F619E000B
 for <barebox@lists.infradead.org>; Tue, 27 Aug 2019 14:32:47 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 27 Aug 2019 16:32:37 +0200
Message-Id: <20190827143239.15682-5-ahmad@a3f.at>
In-Reply-To: <20190827143239.15682-1-ahmad@a3f.at>
References: <20190827143239.15682-1-ahmad@a3f.at>
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
Subject: [PATCH 4/6] sandbox: compile with symbol -fvisibility=hidden
To: barebox@lists.infradead.org

barebox defines many symbols that are reserved for the C implementation.
This collides with the libc, when building barebox for ARCH=sandbox.

Specify -fvsibility-hidden, so libraries barebox is linked against don't
inadvertently use barebox' functions.

This fixes a heap corruption occurring when issuing fb0.enable=1 on my
system, because X11 used strdup out of barebox, but free out of glibc[1]:

     binding file /lib/x86_64-linux-gnu/libX11.so.6 [0] to
     ./barebox [0]: normal symbol l `strdup' [GLIBC_2.2.5]
     [...]
     binding file /lib/x86_64-linux-gnu/libc.so.6 [0] to
     /lib/x86_64-linux-gnu/libc.so.6 [0]: normal symbol `free' [GLIBC_2.2.5]

[1]: cf. CFLAGS +=-Dfree=barebox_free in arch/sandbox/Makefile

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 2a75b81cf632..780783a1e08c 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -1,6 +1,7 @@
 KBUILD_DEFCONFIG := sandbox_defconfig
 
-CPPFLAGS += -D__SANDBOX__ -fno-strict-aliasing
+CPPFLAGS += -D__SANDBOX__ -fno-strict-aliasing -fvisibility=hidden
+
 
 machine-y := sandbox
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
