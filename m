Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBJ2n-0004Hj-5S
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 05:29:54 +0000
Received: by weyr3 with SMTP id r3so70225wey.36
 for <barebox@lists.infradead.org>; Mon, 10 Sep 2012 22:29:51 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Tue, 11 Sep 2012 07:30:44 +0200
Message-Id: <1347341445-2476-2-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1347341445-2476-1-git-send-email-alex.aring@gmail.com>
References: <1347341445-2476-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 2/3] sandbox: fix posix_types
To: barebox@lists.infradead.org

Fix setting of size_t ssize_t and ptrdiff_t for 32 bit and
64 bit systems.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 arch/sandbox/include/asm/posix_types.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/sandbox/include/asm/posix_types.h b/arch/sandbox/include/asm/posix_types.h
index 4345141..6985b8e 100644
--- a/arch/sandbox/include/asm/posix_types.h
+++ b/arch/sandbox/include/asm/posix_types.h
@@ -15,9 +15,23 @@ typedef int		__kernel_pid_t;
 typedef unsigned short	__kernel_ipc_pid_t;
 typedef unsigned short	__kernel_uid_t;
 typedef unsigned short	__kernel_gid_t;
+/*
+ * Most 32 bit architectures use "unsigned int" size_t,
+ * and all 64 bit architectures use "unsigned long" size_t.
+ *
+ * TODO: It's not clean to use __x86_64__ here. It's better
+ * to check on __BITS_PER_LONG here. But this is wrong set in
+ * arch/sandbox/include/asm/types.h.
+ */
+#ifdef __x86_64__
 typedef unsigned long	__kernel_size_t;
 typedef long		__kernel_ssize_t;
+typedef long		__kernel_ptrdiff_t;
+#else
+typedef unsigned int	__kernel_size_t;
+typedef int		__kernel_ssize_t;
 typedef int		__kernel_ptrdiff_t;
+#endif
 typedef long		__kernel_time_t;
 typedef long		__kernel_suseconds_t;
 typedef long		__kernel_clock_t;
-- 
1.7.12


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
