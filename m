Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo68.mail-out.ovh.net ([46.105.79.203])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ciIJT-0006AO-RH
 for barebox@lists.infradead.org; Mon, 27 Feb 2017 10:13:53 +0000
Received: from player763.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id 1246F3ED1B
 for <barebox@lists.infradead.org>; Mon, 27 Feb 2017 11:13:29 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 27 Feb 2017 11:19:23 +0100
Message-Id: <1488190770-4034-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20170227101416.GB12475@mail.ovh.net>
References: <20170227101416.GB12475@mail.ovh.net>
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
Subject: [PATCH 1/8] efi: add prototype and definition for creating and
 closing event
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/efi.h | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/include/efi.h b/include/efi.h
index 5691f4e8f..f65980687 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -185,12 +185,25 @@ typedef struct {
 				       unsigned long *, u32 *);
 	efi_status_t (EFIAPI *allocate_pool)(int, unsigned long, void **);
 	efi_status_t (EFIAPI *free_pool)(void *);
-	void *create_event;
+#define EFI_EVT_TIMER				0x80000000
+#define EFI_EVT_RUNTIME				0x40000000
+#define EFI_EVT_NOTIFY_WAIT			0x00000100
+#define EFI_EVT_NOTIFY_SIGNAL			0x00000200
+#define EFI_EVT_SIGNAL_EXIT_BOOT_SERVICES	0x00000201
+#define EFI_EVT_SIGNAL_VIRTUAL_ADDRESS_CHANGE	0x60000202
+
+#define EFI_TPL_APPLICATION	4
+#define EFI_TPL_CALLBACK	8
+#define EFI_TPL_NOTIFY		16
+#define EFI_TPL_HIGH_LEVEL	31
+	efi_status_t(EFIAPI *create_event)(u32 type , unsigned long tpl,
+			void (*fn) (void *event, void *ctx),
+			void *ctx, void **event);
 	void *set_timer;
 	efi_status_t(EFIAPI *wait_for_event)(unsigned long number_of_events, void *event,
 			unsigned long *index);
 	void *signal_event;
-	void *close_event;
+	efi_status_t(EFIAPI *close_event)(void *event);
 	void *check_event;
 	void *install_protocol_interface;
 	void *reinstall_protocol_interface;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
