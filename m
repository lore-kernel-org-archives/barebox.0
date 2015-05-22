Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YvgBD-0003Gh-QJ
 for barebox@lists.infradead.org; Fri, 22 May 2015 06:11:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 May 2015 08:11:02 +0200
Message-Id: <1432275071-28554-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1432275071-28554-1-git-send-email-s.hauer@pengutronix.de>
References: <1432275071-28554-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/14] remove unused nlink_t
To: Barebox List <barebox@lists.infradead.org>

The nlink_t type is unused in barebox, so drop it. This prevents
compile failures when architectures use the generic posix_types.h
which no longer has __kernel_nlink_t defined.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/types.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/linux/types.h b/include/linux/types.h
index 9871a66..ce1a0ec 100644
--- a/include/linux/types.h
+++ b/include/linux/types.h
@@ -15,7 +15,6 @@ typedef __kernel_fd_set		fd_set;
 typedef __kernel_dev_t		dev_t;
 typedef __kernel_ino_t		ino_t;
 typedef __kernel_mode_t		mode_t;
-typedef __kernel_nlink_t	nlink_t;
 typedef __kernel_off_t		off_t;
 typedef __kernel_pid_t		pid_t;
 typedef __kernel_daddr_t	daddr_t;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
