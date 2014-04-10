Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x22c.google.com ([2607:f8b0:4001:c05::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WYLOe-0003HE-TH
 for barebox@lists.infradead.org; Thu, 10 Apr 2014 20:16:29 +0000
Received: by mail-ig0-f172.google.com with SMTP id hn18so8268620igb.11
 for <barebox@lists.infradead.org>; Thu, 10 Apr 2014 13:16:06 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 10 Apr 2014 16:16:03 -0400
Message-ID: <CAO6XYUtP6uWHoc4GBD9ixt+s-nNJqb12CFRD10aqhiCi+c+Lmw@mail.gmail.com>
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

(As this is the first patch I'm posting directly to the list rather
than through Sascha, feel free to yell at me if my format is wrong.)

This fixes a fairly major, trivial bug in the export_env_ull function
-- it is currently converting values to signed when it exports them.
As the import function doesn't handle signed values, this means that
any values with the msb set cannot be read back in -- which breaks
some things like passing serial # ATAG's to the kernel.

This simple (one character!) fix solves the problem.

Michael D. Burkey

-------------------------------------------------------------------------

--- a/common/env.c
+++ b/common.env.c
@@ -258,7 +258,7 @@

 void export_env_ull(const char *name, unsigned long long val)
 {
-	char *valstr = asprintf("%lld", val);
+	char *valstr = asprintf("%llu", val);

 	setenv(name, valstr);
 	export(name);

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
