Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTHpW-00025V-B1
 for barebox@lists.infradead.org; Thu, 27 Mar 2014 21:27:19 +0000
Received: by mail-lb0-f177.google.com with SMTP id z11so3021426lbi.22
 for <barebox@lists.infradead.org>; Thu, 27 Mar 2014 14:26:55 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Mar 2014 01:26:36 +0400
Message-Id: <1395955604-12826-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1395955604-12826-1-git-send-email-antonynpavlov@gmail.com>
References: <1395955604-12826-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/9] MIPS: lib: add BAREBOX_CLK_TABLE to linker script
To: barebox@lists.infradead.org

This commit is based on
    commit fa1a406f7245c5482a17014d5b97e8948352e5a5
    Author: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
    Date:   Sat Nov 9 14:24:18 2013 +0100

        ARM: lib: add BAREBOX_CLK_TABLE to linker script

        This adds an .oftables section right before .dtb section with
        BAREBOX_CLK_TABLE to ARM linker script.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/lib/barebox.lds.S | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index bc78d2b..4ee4252 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -69,6 +69,8 @@ SECTIONS
 	__usymtab : { BAREBOX_SYMS }
 	__usymtab_end = .;
 
+	.oftables : { BAREBOX_CLK_TABLE() }
+
 	.dtb : { BAREBOX_DTB() }
 
 	_edata = .;
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
