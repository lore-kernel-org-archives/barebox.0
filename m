Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UB9WM-00005I-SM
 for barebox@lists.infradead.org; Thu, 28 Feb 2013 19:52:03 +0000
Received: by mail-la0-f45.google.com with SMTP id er20so2211302lab.32
 for <barebox@lists.infradead.org>; Thu, 28 Feb 2013 11:51:59 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  1 Mar 2013 00:05:02 +0400
Message-Id: <1362081902-13822-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] usb: fix build for big-endian platform
To: barebox@lists.infradead.org

The problem was introduced in

    commit 51885a7d7321c3e6395c36bc4fe8dde7e78cf562
    Author: Sascha Hauer <s.hauer@pengutronix.de>
    Date:   Thu Jun 28 09:56:23 2012 +0200

    Change byte order detection mechanism to kernel style

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/usb/usb.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/usb/usb.h b/include/usb/usb.h
index 4649ee2..afccf70 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -270,7 +270,7 @@ void usb_rescan(void);
 #ifdef __LITTLE_ENDIAN
 # define swap_16(x) (x)
 # define swap_32(x) (x)
-#elif defined BIG_ENDIAN
+#elif defined __BIG_ENDIAN
 # define swap_16(x) __swap_16(x)
 # define swap_32(x) __swap_32(x)
 #else
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
