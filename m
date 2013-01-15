Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f50.google.com ([74.125.83.50])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tv6sg-0003vJ-Oa
 for barebox@lists.infradead.org; Tue, 15 Jan 2013 13:48:50 +0000
Received: by mail-ee0-f50.google.com with SMTP id e51so64471eek.9
 for <barebox@lists.infradead.org>; Tue, 15 Jan 2013 05:48:45 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Tue, 15 Jan 2013 14:48:46 +0100
Message-Id: <1358257730-20579-5-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1358257730-20579-1-git-send-email-alex.aring@gmail.com>
References: <1358257730-20579-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 4/8] common: add PAGE_ALIGN_DOWN macro
To: barebox@lists.infradead.org

Add PAGE_ALIGN_DOWN macro, which is like PAGE_ALIGN macro but
returns the lower page boundary of address.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 include/common.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/common.h b/include/common.h
index 9533344..3e67164 100644
--- a/include/common.h
+++ b/include/common.h
@@ -226,6 +226,7 @@ int run_shell(void);
 #define PAGE_SIZE	4096
 #define PAGE_SHIFT	12
 #define PAGE_ALIGN(s) (((s) + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1))
+#define PAGE_ALIGN_DOWN(x) ((x) & ~(PAGE_SIZE - 1))
 
 int memory_display(char *addr, loff_t offs, ulong nbytes, int size, int swab);
 
-- 
1.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
