Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0b-00176a03.pphosted.com ([67.231.157.48])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aoSWy-0002NH-LB
 for barebox@lists.infradead.org; Fri, 08 Apr 2016 09:16:45 +0000
Received: from pps.filterd (m0048204.ppops.net [127.0.0.1])
 by m0048204.ppops.net-00176a03. (8.16.0.11/8.16.0.11) with SMTP id
 u389CUE8007217
 for <barebox@lists.infradead.org>; Fri, 8 Apr 2016 05:16:23 -0400
Received: from alpmlip10.e2k.ad.ge.com (n165-156-000-000.static.ge.com
 [165.156.5.1] (may be forged))
 by m0048204.ppops.net-00176a03. with ESMTP id 225vj1rhj2-1
 (version=TLSv1 cipher=RC4-SHA bits=128 verify=NOT)
 for <barebox@lists.infradead.org>; Fri, 08 Apr 2016 05:16:22 -0400
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Fri,  8 Apr 2016 10:16:10 +0100
Message-Id: <1460106970-23144-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH] lib: declared buffer is too small to hold string
To: barebox@lists.infradead.org

Displaying an unsigned 64-bit integer can be represented by up to 20
characters. The 20 bytes buffer reserved to store the formatted string
"%llu Bytes" is to small: (20 + 6) = 26. Hence, a bigger buffer is reserved
to hold this string.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 lib/display_options.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/lib/display_options.c b/lib/display_options.c
index 2d695e4..0f65f59 100644
--- a/lib/display_options.c
+++ b/lib/display_options.c
@@ -26,7 +26,7 @@
  */
 char *size_human_readable(unsigned long long size)
 {
-	static char buf[20];
+	static char buf[30];
 	unsigned long m = 0, n;
 	unsigned long long f;
 	static const char names[] = {'E', 'P', 'T', 'G', 'M', 'K'};
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
