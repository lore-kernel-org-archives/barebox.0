Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp33.i.mail.ru ([94.100.177.93])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VeqYm-00024B-1C
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 18:13:37 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  8 Nov 2013 22:12:59 +0400
Message-Id: <1383934379-27100-8-git-send-email-shc_work@mail.ru>
In-Reply-To: <1383934379-27100-1-git-send-email-shc_work@mail.ru>
References: <1383934379-27100-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 6/6] imx-usb-loader: Fix signed/unsigned arguments for printf
To: barebox@lists.infradead.org

"%i" in format string requires a signed integer.
"%d" in format string requires a signed integer.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 scripts/imx/imx-usb-loader.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 7ccfc99..a2da579 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -319,7 +319,7 @@ static int transfer(struct libusb_device_handle *h, int report, unsigned char *p
 						memcpy(p, &tmp[1], *last_trans);
 					}
 				} else {
-					printf("Unexpected report %i err=%i, cnt=%i, last_trans=%i, %02x %02x %02x %02x\n",
+					printf("Unexpected report %i err=%i, cnt=%u, last_trans=%i, %02x %02x %02x %02x\n",
 						tmp[0], err, cnt, *last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
 					err = 0;
 				}
@@ -468,7 +468,7 @@ static int read_memory(struct libusb_device_handle *h, struct usb_id *p_id,
 		tmp[0] = tmp[1] = tmp[2] = tmp[3] = 0;
 		err = transfer(h, 4, tmp, 64, &last_trans, p_id);
 		if (err) {
-			printf("r4 in err=%i, last_trans=%i  %02x %02x %02x %02x cnt=%d rem=%d\n",
+			printf("r4 in err=%i, last_trans=%i  %02x %02x %02x %02x cnt=%u rem=%d\n",
 					err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3], cnt, rem);
 			break;
 		}
@@ -476,7 +476,7 @@ static int read_memory(struct libusb_device_handle *h, struct usb_id *p_id,
 			if ((last_trans == 64) && (cnt == rem)) {
 				/* Last transfer is expected to be too large for HID */
 			} else {
-				printf("err: %02x %02x %02x %02x cnt=%d rem=%d last_trans=%i\n",
+				printf("err: %02x %02x %02x %02x cnt=%u rem=%d last_trans=%i\n",
 						tmp[0], tmp[1], tmp[2], tmp[3], cnt, rem, last_trans);
 			}
 			last_trans = rem;
@@ -1240,7 +1240,7 @@ static int do_irom_download(struct libusb_device_handle *h, struct usb_id *p_id,
 		}
 	}
 
-	printf("loading binary file(%s) to %08x, skip=0x%x, fsize=%d type=%d...\n",
+	printf("loading binary file(%s) to %08x, skip=0x%x, fsize=%u type=%d...\n",
 			curr->filename, dladdr, skip, fsize, type);
 
 	ret = load_file(h, p_id, p, cnt, buf, BUF_SIZE,
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
