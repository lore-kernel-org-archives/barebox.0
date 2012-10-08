Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f177.google.com ([209.85.212.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLLUX-00048m-Nz
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 22:08:02 +0000
Received: by mail-wi0-f177.google.com with SMTP id hj13so3097819wib.0
 for <barebox@lists.infradead.org>; Mon, 08 Oct 2012 15:07:58 -0700 (PDT)
From: Carlo Caione <carlo.caione@gmail.com>
Date: Tue,  9 Oct 2012 00:07:37 +0200
Message-Id: <1349734061-32339-2-git-send-email-carlo.caione@gmail.com>
In-Reply-To: <1349734061-32339-1-git-send-email-carlo.caione@gmail.com>
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
Subject: [PATCH 1/5] Add support for ARM1176
References: <1349734061-32339-1-git-send-email-carlo.caione@gmail.com>
To: barebox@lists.infradead.org

Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
---
 arch/arm/cpu/Kconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 2ed6789..d8a5fb1 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -8,6 +8,11 @@ config CPU_32
 # which CPUs we support in the kernel image, and the compiler instruction
 # optimiser behaviour.
 
+# ARM1176
+config CPU_ARM1176
+	bool
+	select CPU_V6
+
 # ARM920T
 config CPU_ARM920T
 	bool
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
