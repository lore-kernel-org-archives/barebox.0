Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R4FFb-0000zV-9z
	for barebox@lists.infradead.org; Thu, 15 Sep 2011 16:57:24 +0000
Received: by mail-fx0-f49.google.com with SMTP id 7so1005358fxg.36
	for <barebox@lists.infradead.org>; Thu, 15 Sep 2011 09:57:23 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Thu, 15 Sep 2011 18:57:07 +0200
Message-Id: <1316105827-3495-3-git-send-email-h.feurstein@gmail.com>
In-Reply-To: <1316105827-3495-1-git-send-email-h.feurstein@gmail.com>
References: <1316105827-3495-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH 3/3] at91sam9260ek: fix broken defconfig
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 arch/arm/configs/at91sam9260ek_defconfig |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
index 6038aec..2d04206 100644
--- a/arch/arm/configs/at91sam9260ek_defconfig
+++ b/arch/arm/configs/at91sam9260ek_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91SAM9260=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
