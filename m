Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo4.mail-out.ovh.net ([178.32.228.4])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VKovu-0002zn-OT
 for barebox@lists.infradead.org; Sat, 14 Sep 2013 12:26:39 +0000
Received: from mail408.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id C16401068DDE
 for <barebox@lists.infradead.org>; Sat, 14 Sep 2013 14:26:17 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 14 Sep 2013 14:27:19 +0200
Message-Id: <1379161639-27488-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1379161639-27488-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130914120725.GB21829@ns203013.ovh.net>
 <1379161639-27488-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] ARM: PBL: fix binary size
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/pbl/Makefile | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
index f4b3471..f89c56b 100644
--- a/arch/arm/pbl/Makefile
+++ b/arch/arm/pbl/Makefile
@@ -13,9 +13,17 @@ targets := zbarebox.lds zbarebox zbarebox.bin zbarebox.S \
 # Make sure files are removed during clean
 extra-y       += piggy.gzip piggy.lz4 piggy.lzo piggy.lzma piggy.xzkern piggy.shipped zbarebox.map
 
+ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
+FIX_SIZE=-b
+else
+FIX_SIZE=
+endif
+
 $(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
 	$(call if_changed,objcopy)
 	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
+	$(Q)$(kecho) '  Barebox: fix size'
+	$(Q)$(objtree)/scripts/fix_size -f $(objtree)/$@ -o 0x2c $(FIX_SIZE)
 	$(Q)$(kecho) '  Barebox: $@ is ready'
 
 $(obj)/zbarebox.S: $(obj)/zbarebox FORCE
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
