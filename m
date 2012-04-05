Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFgZz-0002rB-3s
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 06:54:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Apr 2012 08:53:49 +0200
Message-Id: <1333608829-13213-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1333608829-13213-1-git-send-email-s.hauer@pengutronix.de>
References: <1333608829-13213-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] x86 linker script: Add missing _text
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/x86/lib/barebox.lds.S |    1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/lib/barebox.lds.S b/arch/x86/lib/barebox.lds.S
index 9798ed5..3315be2 100644
--- a/arch/x86/lib/barebox.lds.S
+++ b/arch/x86/lib/barebox.lds.S
@@ -144,6 +144,7 @@ SECTIONS
 	.text : AT ( LOADADDR(.bootstrapping) + SIZEOF(.bootstrapping) ) {
 		/* do not align here! It may fails with the LOADADDR! */
 		_stext = .;
+		_text = .;
 		*(.text_entry*)
 		__bare_init_start = .;
 		*(.text_bare_init*)
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
