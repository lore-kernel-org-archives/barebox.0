Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFgZw-0001rN-Uq
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 06:53:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Apr 2012 08:53:48 +0200
Message-Id: <1333608829-13213-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1333608829-13213-1-git-send-email-s.hauer@pengutronix.de>
References: <1333608829-13213-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] mips: Fix compiler warnings
To: barebox@lists.infradead.org

Fixes:

arch/mips/lib/lshrdi3.c:6: warning: no previous prototype for '__lshrdi3'
arch/mips/lib/ashrdi3.c:6: warning: no previous prototype for '__ashrdi3'
arch/mips/lib/ashldi3.c:6: warning: no previous prototype for '__ashldi3'

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/mips/lib/libgcc.h |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/mips/lib/libgcc.h b/arch/mips/lib/libgcc.h
index 05909d5..593e598 100644
--- a/arch/mips/lib/libgcc.h
+++ b/arch/mips/lib/libgcc.h
@@ -22,4 +22,8 @@ typedef union {
 	long long ll;
 } DWunion;
 
+long long __lshrdi3(long long u, word_type b);
+long long __ashldi3(long long u, word_type b);
+long long __ashrdi3(long long u, word_type b);
+
 #endif /* __ASM_LIBGCC_H */
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
