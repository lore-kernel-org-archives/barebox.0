Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PdpgX-0006G7-6H
	for barebox@lists.infradead.org; Fri, 14 Jan 2011 19:51:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Jan 2011 20:51:37 +0100
Message-Id: <1295034699-18863-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295034699-18863-1-git-send-email-s.hauer@pengutronix.de>
References: <1295034699-18863-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] provide real barebox end variable
To: barebox@lists.infradead.org

Sometimes it's useful to have the memory end address barebox uses.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/reloc.h |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/include/reloc.h b/include/reloc.h
index 22cb886..a0bf15f 100644
--- a/include/reloc.h
+++ b/include/reloc.h
@@ -1,7 +1,7 @@
 #ifndef __RELOC_H
 #define __RELOC_H
 
-extern unsigned long _barebox_start, _bss_start, _bss_end, _text_base;
+extern unsigned long _barebox_start, _bss_start, _bss_end, _text_base, _end;
 
 #ifdef CONFIG_HAS_EARLY_INIT
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
