Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f169.google.com ([209.85.212.169])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TI9cd-00027P-Q7
 for barebox@lists.infradead.org; Sun, 30 Sep 2012 02:51:13 +0000
Received: by mail-wi0-f169.google.com with SMTP id hq4so906139wib.0
 for <barebox@lists.infradead.org>; Sat, 29 Sep 2012 19:51:08 -0700 (PDT)
From: vj <vicencb@gmail.com>
Date: Sun, 30 Sep 2012 04:50:29 +0200
Message-Id: <1348973437-31132-2-git-send-email-vicencb@gmail.com>
In-Reply-To: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
References: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 1/9] ARM: set rev instead of returning it
To: barebox@lists.infradead.org
Cc: vj <vicencb@gmail.com>

---
 arch/arm/lib/armlinux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 191274e..74d59a9 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -80,7 +80,7 @@ void armlinux_set_revision(unsigned int rev)
 #ifdef CONFIG_ENVIRONMENT_VARIABLES
 	export_env_ull("armlinux_system_rev", rev);
 #else
-	return armlinux_system_rev;
+	armlinux_system_rev = rev;
 #endif
 }
 
-- 
1.7.12.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
