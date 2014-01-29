Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp38.i.mail.ru ([94.100.177.98])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8ZmE-0005BC-6p
 for barebox@lists.infradead.org; Wed, 29 Jan 2014 18:22:20 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 29 Jan 2014 22:21:49 +0400
Message-Id: <1391019709-30606-4-git-send-email-shc_work@mail.ru>
In-Reply-To: <1391019709-30606-1-git-send-email-shc_work@mail.ru>
References: <1391019709-30606-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 4/4] scripts: imx-usb-loader: Fix memory leak
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 scripts/imx/imx-usb-loader.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 12a89f5..475917b 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -1334,7 +1334,7 @@ static void usage(const char *prgname)
 
 int main(int argc, char *argv[])
 {
-	struct usb_id *p_id;
+	struct usb_id *p_id = NULL;
 	struct mach_id *mach;
 	libusb_device **devs;
 	libusb_device *dev;
@@ -1432,6 +1432,9 @@ int main(int argc, char *argv[])
 
 	ret = 0;
 out:
+	if (p_id)
+		free(p_id);
+
 	if (h)
 		libusb_close(h);
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
