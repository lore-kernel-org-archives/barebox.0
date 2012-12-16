Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp32.i.mail.ru ([94.100.177.92])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tk8sJ-0004M3-5M
 for barebox@lists.infradead.org; Sun, 16 Dec 2012 07:43:04 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 16 Dec 2012 11:42:54 +0400
Message-Id: <1355643775-4981-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1355643775-4981-1-git-send-email-shc_work@mail.ru>
References: <1355643775-4981-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/3] lib: Add formal Kconfig parameter "BCH_CONST_PARAMS"
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 lib/Kconfig |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/lib/Kconfig b/lib/Kconfig
index 5966386..febb434 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -20,6 +20,9 @@ config GENERIC_FIND_NEXT_BIT
 config PROCESS_ESCAPE_SEQUENCE
 	def_bool n
 
+config BCH_CONST_PARAMS
+	bool
+
 source lib/lzo/Kconfig
 
 config FDT
-- 
1.7.8.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
