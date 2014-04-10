Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ie0-x232.google.com ([2607:f8b0:4001:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WYLeg-0007Fv-VX
 for barebox@lists.infradead.org; Thu, 10 Apr 2014 20:33:03 +0000
Received: by mail-ie0-f178.google.com with SMTP id lx4so4552354iec.9
 for <barebox@lists.infradead.org>; Thu, 10 Apr 2014 13:32:40 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 10 Apr 2014 16:32:38 -0400
Message-ID: <CAO6XYUtDt5eACQ8+X+KfEW5_BgN-fuJWxTO3Sa=-vRCGiw73qg@mail.gmail.com>
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
Subject: [PATCH 1/1 - Corrected] Fix bug in export 64 bit unsigned environment
 variable.
To: barebox@lists.infradead.org

The first time I sent this I apparently typed a character into the
wrong window before I sent it and didn't notice it.

-------------------------------------------------------------------------

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
