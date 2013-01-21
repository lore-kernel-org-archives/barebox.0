Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo5.mail-out.ovh.net ([178.32.116.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TxEcU-0003NO-P8
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 10:28:56 +0000
Received: from mail609.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 4C9FDFFA8B8
 for <barebox@lists.infradead.org>; Mon, 21 Jan 2013 11:38:29 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 21 Jan 2013 11:27:12 +0100
Message-Id: <1358764040-10690-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1358764040-10690-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130121102319.GE26329@game.jcrosoft.org>
 <1358764040-10690-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 02/10] filetype: add is_barebox_head
To: barebox@lists.infradead.org

to detect if it's a barebox for the current running arch

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/filetype.h |    5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/filetype.h b/include/filetype.h
index c2af917..a5de4f7 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -66,4 +66,9 @@ static inline int is_barebox_mips_head(const char *head)
 }
 #endif
 
+static inline int is_barebox_head(const char *head)
+{
+	return is_barebox_arm_head(head) || is_barebox_mips_head(head);
+}
+
 #endif /* __FILE_TYPE_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
