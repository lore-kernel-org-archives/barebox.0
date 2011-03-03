Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUB-0003Oo-Fq
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:10 +0000
Received: by mail-wy0-f177.google.com with SMTP id 23so1676087wyf.36
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:07 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:30 +0100
Message-Id: <4d701d3a.9009d80a.2cd3.5e81@mx.google.com>
In-Reply-To: <n>
References: <n>
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
Subject: [PATCH 16/54] Add arch/nios2/boards/generic/Makefile
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/boards/generic/Makefile

---
 arch/nios2/boards/generic/Makefile |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/boards/generic/Makefile

diff --git a/arch/nios2/boards/generic/Makefile b/arch/nios2/boards/generic/Makefile
new file mode 100644
index 0000000..28dd481
--- /dev/null
+++ b/arch/nios2/boards/generic/Makefile
@@ -0,0 +1,2 @@
+obj-y += generic.o
+extra-y += barebox.lds
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
