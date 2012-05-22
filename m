Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWekR-0005IA-Fq
 for barebox@lists.infradead.org; Tue, 22 May 2012 02:22:56 +0000
From: Alan Ott <alan@signal11.us>
Date: Mon, 21 May 2012 22:22:44 -0400
Message-Id: <1337653364-31191-1-git-send-email-alan@signal11.us>
In-Reply-To: <20120521224429.GD28084@game.jcrosoft.org>
References: <20120521224429.GD28084@game.jcrosoft.org>
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
Subject: [PATCH] common: Make HUSH_SHELL select PROCESS_ESCAPE_SEQUENCE
To: plagnioj@jcrosoft.com
Cc: barebox@lists.infradead.org, Alan Ott <alan@signal11.us>

Possibly among other things, print_menu_entry() in common/menu.c calls on
process_escape_sequence() when HUSH_SHELL is selected.

Signed-off-by: Alan Ott <alan@signal11.us>
---
 common/Kconfig |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 73d620a..7aa50b6 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -280,6 +280,7 @@ choice
 		select COMMAND_SUPPORT
 		select PARAMETER
 		select BINFMT
+		select PROCESS_ESCAPE_SEQUENCE
 		help
 		  Enable hush support. This is the most advanced shell available
 		  for barebox.
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
