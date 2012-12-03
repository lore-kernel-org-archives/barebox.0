Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m15-113.126.com ([220.181.15.113])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TfSgw-0001AQ-C1
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 09:52:04 +0000
Date: Mon, 3 Dec 2012 17:51:50 +0800
From: =?utf-8?B?5byg5b+g5bGx?= <zzs213@126.com>
Message-ID: <20121203095150.GA20812@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: kbuild can't build foo/xxx.o
To: barebox <barebox@lists.infradead.org>

kbuild in barebox can't built when

obj-y += foo/xxx.o

But in kernel, It's OK

Maybe it should:

----------------------------------------------------------
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index cb46db2..14e471d 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -55,10 +55,10 @@ multi-objs-y := $(foreach m, $(multi-used-y), $($(m:.o=-objs)) $($(m:.o=-y)))
 multi-objs-m := $(foreach m, $(multi-used-m), $($(m:.o=-objs)) $($(m:.o=-y)))
 multi-objs   := $(multi-objs-y) $(multi-objs-m)

-# $(subdir-obj-y) is the list of objects in $(obj-y) which do not live
-# in the local directory
-__subdir-obj-y := $(foreach o,$(pbl-y),$(if $(filter-out $(o),$(notdir $(o))),$(o)))
-subdir-obj-y := $(foreach o,$(obj-y),$(if $(filter-out $(o),$(notdir $(o))),$(o)))
+# $(subdir-obj-y) is the list of objects in $(obj-y) which uses dir/ to
+# tell kbuild to descend
+__subdir-obj-y := $(filter %/built-in-pbl.o, $(pbl-y))
+subdir-obj-y := $(filter %/built-in.o, $(obj-y))
 subdir-obj-y += $(__subdir-obj-y)

 # $(obj-dirs) is a list of directories that contain object files
----------------------------------------------------------


-- 
Best Regards,
zzs



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
