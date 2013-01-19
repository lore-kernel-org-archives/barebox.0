Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo3.mail-out.ovh.net ([188.165.43.98]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TwbRS-0003q6-6C
 for barebox@lists.infradead.org; Sat, 19 Jan 2013 16:38:50 +0000
Received: from mail412.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 24770FF863D
 for <barebox@lists.infradead.org>; Sat, 19 Jan 2013 17:52:27 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 19 Jan 2013 17:37:19 +0100
Message-Id: <1358613446-1168-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1358613446-1168-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130119163524.GC26329@game.jcrosoft.org>
 <1358613446-1168-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/9] filetype: add is_barebox_head
To: barebox@lists.infradead.org

to detect if it's a barebox for the current running arch

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/filetype.h |    5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/filetype.h b/include/filetype.h
index c2af917..05b0f5c 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -66,4 +66,9 @@ static inline int is_barebox_mips_head(const char *head)
 }
 #endif
 
+static inline int is_barebox_head(const char *head)
+{
+	return is_barebox_mips_head(head) || is_barebox_mips_head(head);
+}
+
 #endif /* __FILE_TYPE_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
