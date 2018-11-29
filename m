Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSKXB-0003ir-Tb
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 11:31:09 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWy-0001wz-B9
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:52 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWx-0000AJ-Ux
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:51 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 29 Nov 2018 12:30:35 +0100
Message-Id: <20181129113048.31857-3-s.trumtrar@pengutronix.de>
In-Reply-To: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
References: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 02/15] Makefile: Correctly deal with make options which
 contain an "s"
To: Barebox List <barebox@lists.infradead.org>

Based on linux v3.2 patch: e6ac89fabd030704eac691dab7783ebe06e6b2c1

    kbuild: Correctly deal with make options which contain an "s"

    When using remake, which is based on gnumake, if you invoke
    an example build as shown below, the build will become silent
    due to the top level make file incorrectly guessing that
    the end user wants a silent build because an argument that
    contained an "s" was used.  Here are two examples one with remake
    and one with straight gnumake.

    remake --no-extended-errors
    make --warn-undefined-variables

    Fix up the top level Makefile to use filter to parse the options
    that mean silent instead of findstring catching other random
    arguments containing an "s".

    Signed-off-by: Jason Wessel <jason.wessel@windriver.com>
    CC: Michal Marek <mmarek@suse.cz>
    CC: Andrew Morton <akpm@linux-foundation.org>
    CC: linux-kbuild@vger.kernel.org
    Signed-off-by: Michal Marek <mmarek@suse.cz>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index dedb16d60069..cddff1267972 100644
--- a/Makefile
+++ b/Makefile
@@ -252,7 +252,7 @@ endif
 # If the user is running make -s (silent mode), suppress echoing of
 # commands
 
-ifneq ($(findstring s,$(MAKEFLAGS)),)
+ifneq ($(filter s% -s%,$(MAKEFLAGS)),)
   quiet=silent_
 endif
 
-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
