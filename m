Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo68.mail-out.ovh.net ([46.105.74.219])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ciIJT-0006AR-UV
 for barebox@lists.infradead.org; Mon, 27 Feb 2017 10:13:53 +0000
Received: from player763.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id 45ACA3F792
 for <barebox@lists.infradead.org>; Mon, 27 Feb 2017 11:13:30 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 27 Feb 2017 11:19:24 +0100
Message-Id: <1488190770-4034-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1488190770-4034-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170227101416.GB12475@mail.ovh.net>
 <1488190770-4034-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/8] efi: add prototype and definition for setting timer
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/efi.h | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/include/efi.h b/include/efi.h
index f65980687..e1fc134ee 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -171,6 +171,12 @@ struct efi_open_protocol_information_entry {
 	u32 open_count;
 };
 
+typedef enum {
+	EFI_TIMER_CANCEL = 0,
+	EFI_TIMER_PERIODIC = 1,
+	EFI_TIMER_RELATIVE = 2
+} efi_timer_delay_t;
+
 /*
  * EFI Boot Services table
  */
@@ -199,7 +205,7 @@ typedef struct {
 	efi_status_t(EFIAPI *create_event)(u32 type , unsigned long tpl,
 			void (*fn) (void *event, void *ctx),
 			void *ctx, void **event);
-	void *set_timer;
+	efi_status_t(EFIAPI *set_timer)(void *event, efi_timer_delay_t type, uint64_t time);
 	efi_status_t(EFIAPI *wait_for_event)(unsigned long number_of_events, void *event,
 			unsigned long *index);
 	void *signal_event;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
