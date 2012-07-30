Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo1.mail-out.ovh.net ([46.105.43.205]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SvmoR-0001gZ-UA
 for barebox@lists.infradead.org; Mon, 30 Jul 2012 10:02:57 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 98462FF9B34
 for <barebox@lists.infradead.org>; Mon, 30 Jul 2012 12:08:54 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 30 Jul 2012 12:02:45 +0200
Message-Id: <1343642565-32257-12-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343642565-32257-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120730100022.GD19759@game.jcrosoft.org>
 <1343642565-32257-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 12/12] arm: always enable the garbage collector for pbl
To: barebox@lists.infradead.org

This allow to save arround 1KiB on at91

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/pbl/Makefile |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
index 04fdffb..143da8b 100644
--- a/arch/arm/pbl/Makefile
+++ b/arch/arm/pbl/Makefile
@@ -19,7 +19,9 @@ $(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
 $(obj)/zbarebox.S: $(obj)/zbarebox FORCE
 	$(call if_changed,disasm)
 
+PBL_CPPFLAGS		+= -fdata-sections -ffunction-sections
 LDFLAGS_zbarebox	:= -Map zbarebox.map
+LDFLAGS_zbarebox	+= -static --gc-sections
 zbarebox-common := $(barebox-pbl-common) $(obj)/$(piggy_o)
 zbarebox-lds := $(obj)/zbarebox.lds
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
