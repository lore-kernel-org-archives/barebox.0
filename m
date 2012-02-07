Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bear.ext.ti.com ([192.94.94.41])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Runzo-0000K3-0W
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 16:34:20 +0000
From: "Premi, Sanjeev" <premi@ti.com>
Date: Tue, 7 Feb 2012 16:34:12 +0000
Message-ID: <E28AAFD00EFAA646AE3DF9B89CD24A89318342F9@DBDE01.ent.ti.com>
References: <alpine.DEB.2.02.1202070816090.3550@oneiric>
In-Reply-To: <alpine.DEB.2.02.1202070816090.3550@oneiric>
Content-Language: en-US
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: "make distclean" doesn't remove generated MLO file
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

> -----Original Message-----
> From: barebox-bounces@lists.infradead.org 
> [mailto:barebox-bounces@lists.infradead.org] On Behalf Of 
> Robert P. J. Day
> Sent: Tuesday, February 07, 2012 6:49 PM
> To: U-Boot Version 2 (barebox)
> Subject: "make distclean" doesn't remove generated MLO file
> 
> 
>   i see that the latest barebox now automatically renames
> barebox.bin.ift to MLO -- cool.  but a subsequent "make distclean"
> doesn't remove that generated MLO, which it should, no?
> 
>   where would that removal properly belong?  in "archmrproper"?  it's
> architecture specific, right?
> 
[snip]

This patch should help.
If you confirm, I can submit it formally.

~sanjeev

From 072ef5dd7022877fc1470b6dc14a0ec309eb68a0 Mon Sep 17 00:00:00 2001
From: Sanjeev Premi <premi@ti.com>
Date: Tue, 7 Feb 2012 21:58:50 +0530
Subject: [PATCH] omap: Remove MLO with distclean


Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 Makefile |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/Makefile b/Makefile
index 5cf49da..5a03b32 100644
--- a/Makefile
+++ b/Makefile
@@ -1008,7 +1008,7 @@ MRPROPER_DIRS  += include/config include2 usr/include
 MRPROPER_FILES += .config .config.old include/asm .version .old_version \
                   include/generated/autoconf.h include/generated/version.h      \
                   include/generated/utsrelease.h include/config.h           \
-		  Module.symvers tags TAGS cscope*
+		  Module.symvers tags TAGS cscope* MLO
 
 # clean - Delete most, but leave enough to build external modules
 #
-- 
1.7.0.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
