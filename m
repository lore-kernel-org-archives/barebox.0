Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x236.google.com ([2a00:1450:4010:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XeNvX-0000am-7R
 for barebox@lists.infradead.org; Wed, 15 Oct 2014 12:43:40 +0000
Received: by mail-lb0-f182.google.com with SMTP id z11so951019lbi.13
 for <barebox@lists.infradead.org>; Wed, 15 Oct 2014 05:43:16 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 15 Oct 2014 16:42:13 +0400
Message-Id: <1413376935-2579-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1413376935-2579-1-git-send-email-antonynpavlov@gmail.com>
References: <1413376935-2579-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/3] add .mailmap for proper git-shortlog output
To: barebox@lists.infradead.org
Cc: Stefan Roese <sr@denx.de>, Wolfgang Denk <wd@denx.de>

Based on original u-boot commit by Masahiro Yamada:

  commit 8b90a11f7cf1d06812bc9a02e0bae20cfe40a564
  Author: Masahiro Yamada <yamada.m@jp.panasonic.com>
  Date:   Wed Jul 16 17:49:44 2014 +0900

      add .mailmap for proper git-shortlog output

This is the first version of .mailmap created by hand.
Please see "man git-shortlog" for what this commit is trying to do.

Without this file, for example, "git shortlog -n -s" shows as follows:

  (1)  5428  Sascha Hauer
        968  Jean-Christophe PLAGNIOL-VILLARD
  (2)   811  wdenk
  (2)   525  Wolfgang Denk
        348  Juergen Beisert
           ...
  (3)   154  stroese
  (3)   151  Stefan Roese
           ...
  (1)    48  sascha

And then, with this file, it shows as follows:

  (1)  5476  Sascha Hauer
  (2)  1336  Wolfgang Denk
        968  Jean-Christophe PLAGNIOL-VILLARD
        348  Juergen Beisert
        343  Antony Pavlov
  (3)   305  Stefan Roese

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Masahiro Yamada <yamada.m@jp.panasonic.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Wolfgang Denk <wd@denx.de>
Cc: Stefan Roese <sr@denx.de>
---
 .mailmap | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/.mailmap b/.mailmap
new file mode 100644
index 0000000..8af4375
--- /dev/null
+++ b/.mailmap
@@ -0,0 +1,13 @@
+#
+# This list is used by git-shortlog to fix a few botched name translations
+# in the git archive, either because the author's full name was messed up
+# and/or not always written the same way, making contributions from the
+# same person appearing not to be so or badly displayed.
+#
+# This file can be modified by hand or updated by the following command:
+#  scripts/mailmapper > tmp; mv tmp .mailmap
+#
+
+Sascha Hauer <sascha@nomad.localdomain>
+Stefan Roese <stroese>
+Wolfgang Denk <wdenk>
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
