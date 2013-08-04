Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V5xwg-0000JM-Lv
 for barebox@lists.infradead.org; Sun, 04 Aug 2013 13:02:03 +0000
Received: by mail-lb0-f177.google.com with SMTP id r11so1444800lbv.36
 for <barebox@lists.infradead.org>; Sun, 04 Aug 2013 06:01:38 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun,  4 Aug 2013 16:59:27 +0400
Message-Id: <1375621167-625-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] pbl: add generated file piggy.lz4 to .gitignore
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/pbl/.gitignore  | 1 +
 arch/mips/pbl/.gitignore | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/pbl/.gitignore b/arch/arm/pbl/.gitignore
index d71bb7c..1b7f618 100644
--- a/arch/arm/pbl/.gitignore
+++ b/arch/arm/pbl/.gitignore
@@ -1,5 +1,6 @@
 piggy.gzip
 piggy.lzo
+piggy.lz4
 zbarebox
 zbarebox.bin
 zbarebox.lds
diff --git a/arch/mips/pbl/.gitignore b/arch/mips/pbl/.gitignore
index d71bb7c..1b7f618 100644
--- a/arch/mips/pbl/.gitignore
+++ b/arch/mips/pbl/.gitignore
@@ -1,5 +1,6 @@
 piggy.gzip
 piggy.lzo
+piggy.lz4
 zbarebox
 zbarebox.bin
 zbarebox.lds
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
