Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ie0-x233.google.com ([2607:f8b0:4001:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WfDVw-0001Qu-Mq
 for barebox@lists.infradead.org; Tue, 29 Apr 2014 19:16:25 +0000
Received: by mail-ie0-f179.google.com with SMTP id lx4so744476iec.10
 for <barebox@lists.infradead.org>; Tue, 29 Apr 2014 12:16:02 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 29 Apr 2014 15:16:02 -0400
Message-ID: <CAO6XYUsjR_GdrkFHT2wy=4Lg-yosH8hKb3d2_Euoz8uY+3kQpQ@mail.gmail.com>
From: "Michael D. Burkey" <mdburkey@gmail.com>
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
Subject: [PATCH 1/1] Fix bug in export 64 bit unsigned environment variable.
To: barebox@lists.infradead.org

This patch corrects exporting unsigned 64-bit environment variables.
I had left out a signed off line before.

Signed-off-by: Michael Burkey <mdburkey at gmail.com>
---


--- a/common/env.c
+++ b/common/env.c
@@ -258,7 +258,7 @@

 void export_env_ull(const char *name, unsigned long long val)
 {
-       char *valstr = asprintf("%lld", val);
+       char *valstr = asprintf("%llu", val);

        setenv(name, valstr);
        export(name);

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
