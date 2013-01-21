Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TxIUb-0005aw-Ue
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 14:36:58 +0000
Received: from mail178.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 14406FFAD8E
 for <barebox@lists.infradead.org>; Mon, 21 Jan 2013 15:44:36 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 21 Jan 2013 15:33:16 +0100
Message-Id: <1358778804-31067-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1358778804-31067-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130121142836.GI26329@game.jcrosoft.org>
 <1358778804-31067-1-git-send-email-plagnioj@jcrosoft.com>
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
