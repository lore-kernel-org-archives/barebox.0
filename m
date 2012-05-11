Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og104.obsmtp.com ([64.18.0.178])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSnYB-0000cC-L3
 for barebox@lists.infradead.org; Fri, 11 May 2012 10:58:39 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Fri, 11 May 2012 11:58:13 +0100
Message-Id: <1336733893-9907-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 1/1] linux/types.h: define phys_size_t
To: barebox@lists.infradead.org

Add this definition in preparation for the introduction of the
mpc85xx support.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 include/linux/types.h |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/include/linux/types.h b/include/linux/types.h
index 16cc3ce..76c6b67 100644
--- a/include/linux/types.h
+++ b/include/linux/types.h
@@ -144,8 +144,10 @@ typedef __u32 __bitwise __wsum;
 
 #ifdef CONFIG_PHYS_ADDR_T_64BIT
 typedef u64 phys_addr_t;
+typedef u64 phys_size_t;
 #else
 typedef u32 phys_addr_t;
+typedef u32 phys_size_t;
 #endif
 
 typedef phys_addr_t resource_size_t;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
