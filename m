Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKGSo-0005O3-Kf
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 22:33:47 +0000
Received: by mail-we0-f177.google.com with SMTP id u50so1385046wey.36
 for <barebox@lists.infradead.org>; Fri, 05 Oct 2012 15:33:46 -0700 (PDT)
From: vj <vicencb@gmail.com>
Date: Sat,  6 Oct 2012 00:33:12 +0200
Message-Id: <1349476393-25520-11-git-send-email-vicencb@gmail.com>
In-Reply-To: <1349476393-25520-1-git-send-email-vicencb@gmail.com>
References: <1349476393-25520-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 10/11] mach-types: add ID for Archos G9 tablet
To: barebox@lists.infradead.org
Cc: vj <vicencb@gmail.com>


Signed-off-by: vj <vicencb@gmail.com>
---
 arch/arm/tools/mach-types | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/tools/mach-types b/arch/arm/tools/mach-types
index 325513f..a21da3b 100644
--- a/arch/arm/tools/mach-types
+++ b/arch/arm/tools/mach-types
@@ -4148,3 +4148,4 @@ msm8625_evt		MACH_MSM8625_EVT	MSM8625_EVT		4193
 mx53_sellwood		MACH_MX53_SELLWOOD	MX53_SELLWOOD		4194
 somiq_am35		MACH_SOMIQ_AM35		SOMIQ_AM35		4195
 somiq_am37		MACH_SOMIQ_AM37		SOMIQ_AM37		4196
+omap4_archosg9		MACH_OMAP4_ARCHOSG9	OMAP4_ARCHOSG9		5032
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
