Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og108.obsmtp.com ([64.18.0.186])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SV3tw-0004RP-Mg
 for barebox@lists.infradead.org; Thu, 17 May 2012 16:50:10 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 17 May 2012 17:49:49 +0100
Message-Id: <1337273391-20858-8-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1337273391-20858-1-git-send-email-renaud.barbier@ge.com>
References: <1337273391-20858-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH V5 7/9] Set _text_base to the firmware relocation address
To: barebox@lists.infradead.org

_text_base assignment has been removed earlier from lib/board.c
for the mpc5xxx.
For the 85xx, _text_base is set to where the firmware relocates
in memory as passed by the function input variable.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/lib/board.c |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/arch/ppc/lib/board.c b/arch/ppc/lib/board.c
index a840c75..6b6268f 100644
--- a/arch/ppc/lib/board.c
+++ b/arch/ppc/lib/board.c
@@ -46,6 +46,10 @@ void board_init_r (ulong end_of_ram)
 
 	asm ("sync ; isync");
 
+#ifdef CONFIG_MPC85xx
+	_text_base = end_of_ram;
+#endif
+
 	/*
 	 * FIXME: 128k stack size. Is this enough? should
 	 *        it be configurable?
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
