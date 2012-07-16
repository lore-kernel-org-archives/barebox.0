Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.126.187])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Sqi0G-0006Ox-Vc
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 09:54:10 +0000
From: Christian Kapeller <christian.kapeller@cmotion.eu>
Date: Mon, 16 Jul 2012 11:53:59 +0200
Message-Id: <1342432439-27455-3-git-send-email-christian.kapeller@cmotion.eu>
In-Reply-To: <1342432439-27455-1-git-send-email-christian.kapeller@cmotion.eu>
References: <1342432439-27455-1-git-send-email-christian.kapeller@cmotion.eu>
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
Subject: [PATCH 2/2] tx51: Disable kallsyms. It prevents the board from
 booting.
To: barebox@lists.infradead.org


diff --git a/arch/arm/configs/tx51stk5_defconfig b/arch/arm/configs/tx51stk5_defconfig
index 7fff0f0..e1796b9 100644
--- a/arch/arm/configs/tx51stk5_defconfig
+++ b/arch/arm/configs/tx51stk5_defconfig
@@ -32,7 +32,6 @@ CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
 CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
 CONFIG_MEMORY_LAYOUT_DEFAULT=y
 CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
 CONFIG_LONGHELP=y
 CONFIG_SHELL_HUSH=y
 CONFIG_GLOB=y
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
