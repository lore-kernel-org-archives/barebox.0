Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uiayc-0006mD-Js
 for barebox@lists.infradead.org; Sat, 01 Jun 2013 01:51:27 +0000
Received: by mail-la0-f43.google.com with SMTP id fe20so458437lab.30
 for <barebox@lists.infradead.org>; Fri, 31 May 2013 18:51:03 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 1 Jun 2013 10:51:03 +0900
Message-ID: <CAJBvFxM9zECHftuSLWfLaiN+ZiVRZQjx0zTggUD3KVRttRBTtg@mail.gmail.com>
From: Masaki Muranaka <monaka@monami-ya.jp>
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
Subject: bootm command support for x86
To: barebox@lists.infradead.org

Hello,

It enables to build bootm command on generic_x86.
I'm not sure but I guess we don't need defined(__I386__) check.
I kept it for now.

diff --git a/include/image.h b/include/image.h
index 219419b..0c8a4b1 100644
--- a/include/image.h
+++ b/include/image.h
@@ -89,7 +89,7 @@
 #define IH_ARCH IH_ARCH_PPC
 #elif defined(__ARM__)
 #define IH_ARCH IH_ARCH_ARM
-#elif defined(__I386__) || defined(__x86_64__)
+#elif defined(__I386__) || defined(__x86_64__) || defined(__i386__)
 #define IH_ARCH IH_ARCH_I386
 #elif defined(__mips__)
 #define IH_ARCH IH_ARCH_MIPS


--
--
Masaki Muranaka
Monami-ya LLC, Japan.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
