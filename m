Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tf.think-future.de ([193.7.177.246] helo=think-future.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g0PeV-0006dz-Ot
 for barebox@lists.infradead.org; Thu, 13 Sep 2018 11:19:17 +0000
From: perachet7@gmail.com
Date: Thu, 13 Sep 2018 13:18:54 +0200
Message-Id: <1597963.4YffofffW7@think-future.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: perachet7@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: rk3188 (radxa rock pro) boot failure w/ barebox 2018-04 and later
To: barebox@lists.infradead.org

Hey list,

Between 2018-04 and 2018-05 tar release, barebox stops booting on rk3188 
(radxa rock pro).

A git bisect reveals (see end of mail for commit detail): 
	first bad commit: [2a94e821ba2e64890ac47b9ba177c7b6585b23be] ARM: For 
relocatable image force TEXT_BASE 0x0.

As was suggested on #barebox, I tried setting TEXT_BASE=0x10 at this commit 
but it's a no fix. 

It is however booting even later releases if the trailing "if !RELOCATABLE" is 
removed. I have yet to have a deeper look at the code modified by 
HAVE_CONFIGURABLE_TEXT_BASE and RELOCATABLE.

Furthermore, it seems the commit itself is only triggering a boot failure. The 
proper code causing it is probably hiding someplace else.

Any direction, ideas or hints given is appreciated.

Thanks.

cheers

S.



Following said commit:

git show 2a94e821ba2e64890ac47b9ba177c7b6585b23be
commit 2a94e821ba2e64890ac47b9ba177c7b6585b23be
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Fri Mar 9 09:12:08 2018 +0100

    ARM: For relocatable image force TEXT_BASE 0x0
    
    Nothing else should be used for the relocatable image case, so
    force TEXT_BASE to 0x0 and do not show it in the menu.
    
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index e7edc2ad4..563475205 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -2,7 +2,7 @@ config ARM
        bool
        select HAS_KALLSYMS
        select HAS_CACHE
-       select HAVE_CONFIGURABLE_TEXT_BASE
+       select HAVE_CONFIGURABLE_TEXT_BASE if !RELOCATABLE
        select HAVE_IMAGE_COMPRESSION
        default y
 
@@ -19,6 +19,10 @@ config ARM_USE_COMPRESSED_DTB
        select UNCOMPRESS
        select LZO_DECOMPRESS
 
+config TEXT_BASE
+       hex
+       default 0x0
+
 menu "System Type"
 
 config BUILTIN_DTB



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
