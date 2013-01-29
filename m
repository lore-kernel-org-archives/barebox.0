Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U06pD-0005Xk-Tl
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 08:45:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Jan 2013 09:45:41 +0100
Message-Id: <1359449147-30145-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359449147-30145-1-git-send-email-s.hauer@pengutronix.de>
References: <1359449147-30145-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/12] blackfin: Use unsigned long for __kernel_size_t
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/blackfin/include/asm/posix_types.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/blackfin/include/asm/posix_types.h b/arch/blackfin/include/asm/posix_types.h
index b1bf245..9992929 100644
--- a/arch/blackfin/include/asm/posix_types.h
+++ b/arch/blackfin/include/asm/posix_types.h
@@ -38,7 +38,7 @@ typedef int __kernel_pid_t;
 typedef unsigned short __kernel_ipc_pid_t;
 typedef unsigned short __kernel_uid_t;
 typedef unsigned short __kernel_gid_t;
-typedef unsigned int __kernel_size_t;
+typedef unsigned long __kernel_size_t;
 typedef int __kernel_ssize_t;
 typedef int __kernel_ptrdiff_t;
 typedef long __kernel_time_t;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
