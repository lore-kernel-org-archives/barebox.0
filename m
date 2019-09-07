Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6kXo-00034v-Aa
 for barebox@lists.infradead.org; Sat, 07 Sep 2019 23:55:05 +0000
Received: by mail-pf1-x444.google.com with SMTP id q21so6831670pfn.11
 for <barebox@lists.infradead.org>; Sat, 07 Sep 2019 16:55:03 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  7 Sep 2019 16:54:53 -0700
Message-Id: <20190907235456.21535-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/4] ratp: Mark struct ratp_bb as packed
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Mark struct ratp_bb as packed to make sure that it has the same
alignment as struct ratp_bb_md_response and struct ratp_bb_mw_response
where it's used. GCC9 catches this mismatch and generates a
-Waddress-of-packed-member warning

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/ratp_bb.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/ratp_bb.h b/include/ratp_bb.h
index b6699979b6..9162e7cbe5 100644
--- a/include/ratp_bb.h
+++ b/include/ratp_bb.h
@@ -32,7 +32,7 @@ struct ratp_bb {
 	uint16_t type;
 	uint16_t flags;
 	uint8_t data[];
-};
+} __packed;
 
 struct ratp_bb_pkt {
 	unsigned int len;
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
