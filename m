Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMfMT-00028j-Fj
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 10:19:37 +0000
Received: from cpe002129687b04-cm001225dbafb6.cpe.net.cable.rogers.com
	([99.235.241.187] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1NMfMQ-0006GZ-FM
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 05:19:30 -0500
Date: Mon, 21 Dec 2009 05:19:06 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.00.0912210515100.12260@localhost>
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
Subject: [PATCH] scripts: Delete non-barebox content from scripts/.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Remove scripts/ content having nothing to do with barebox:

  - pnmtologo
  - conmakehash
  - unifdef
  - genksyms

---

  if there's anything else that can be added to this patch (that is,
scripts/ content that can be tossed), i can resubmit a more complete
patch.  otherwise, might as well just apply as is.


diff --git a/scripts/Makefile b/scripts/Makefile
index a6829c5..c22a8b6 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -3,14 +3,8 @@
 # the kernel for the build process.
 # ---------------------------------------------------------------------------
 # kallsyms:      Find all symbols in barebox
-# pnmttologo:    Convert pnm files to logo files
-# conmakehash:   Create chartable
-# conmakehash:	 Create arrays for initializing the kernel console tables

 hostprogs-$(CONFIG_KALLSYMS)     += kallsyms
-hostprogs-$(CONFIG_LOGO)         += pnmtologo
-hostprogs-$(CONFIG_VT)           += conmakehash
-hostprogs-$(CONFIG_PROM_CONSOLE) += conmakehash
 hostprogs-y                      += bin2c
 hostprogs-y                      += mkimage
 hostprogs-y                      += bareboxenv
@@ -18,10 +12,6 @@ hostprogs-$(CONFIG_ARCH_NETX)    += gen_netx_image

 always		:= $(hostprogs-y) $(hostprogs-m)

-# The following hostprogs-y programs are only build on demand
-hostprogs-y += unifdef
-
-#subdir-$(CONFIG_MODVERSIONS) += genksyms
 subdir-y                     += mod

 # Let clean descend into subdirs



========================================================================
Robert P. J. Day                               Waterloo, Ontario, CANADA

            Linux Consulting, Training and Kernel Pedantry.

Web page:                                          http://crashcourse.ca
Twitter:                                       http://twitter.com/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
