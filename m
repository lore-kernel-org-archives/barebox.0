Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YxDBY-0006Gb-Q7
 for barebox@lists.infradead.org; Tue, 26 May 2015 11:38:19 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 26 May 2015 13:37:53 +0200
Message-Id: <1432640273-3895-10-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1432640273-3895-1-git-send-email-mkl@pengutronix.de>
References: <1432640273-3895-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 9/9] state: backend_raw: update documentation of struct
 state_backend_raw members
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/state.c b/common/state.c
index 4a1e935a3b86..edbfb95fbb5f 100644
--- a/common/state.c
+++ b/common/state.c
@@ -1030,8 +1030,8 @@ int state_backend_dtb_file(struct state *state, const char *of_path, const char
  */
 struct state_backend_raw {
 	struct state_backend backend;
-	unsigned long size_data; /* The raw data size (without magic and crc) */
-	unsigned long size_full;
+	unsigned long size_data; /* The raw data size (without header) */
+	unsigned long size_full; /* The size header + raw data */
 	unsigned long stride; /* The stride size in bytes of the copies */
 	off_t offset; /* offset in the storage file */
 	size_t size; /* size of the storage area */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
