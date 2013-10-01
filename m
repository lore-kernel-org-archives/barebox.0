Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x232.google.com ([2a00:1450:4013:c01::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VR7c1-0006ne-Ni
 for barebox@lists.infradead.org; Tue, 01 Oct 2013 21:36:10 +0000
Received: by mail-ea0-f178.google.com with SMTP id a15so3663868eae.23
 for <barebox@lists.infradead.org>; Tue, 01 Oct 2013 14:35:45 -0700 (PDT)
From: Rostislav Lisovy <lisovy@gmail.com>
Date: Tue,  1 Oct 2013 23:35:19 +0200
Message-Id: <1380663322-25733-2-git-send-email-lisovy@gmail.com>
In-Reply-To: <1380663322-25733-1-git-send-email-lisovy@gmail.com>
References: <1380663322-25733-1-git-send-email-lisovy@gmail.com>
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
Subject: [PATCH 1/4] i.mx53: voipac: Change machine type identifier
To: barebox@lists.infradead.org
Cc: Rostislav Lisovy <lisovy@gmail.com>, pisa@cmp.felk.cvut.cz

Signed-off-by: Rostislav Lisovy <lisovy@gmail.com>


diff --git a/arch/arm/tools/mach-types b/arch/arm/tools/mach-types
index 325513f..b4c8228 100644
--- a/arch/arm/tools/mach-types
+++ b/arch/arm/tools/mach-types
@@ -3314,7 +3314,7 @@ dimm_imx28		MACH_DIMM_IMX28		DIMM_IMX28		3355
 amk_a4			MACH_AMK_A4		AMK_A4			3356
 gnet_sgme		MACH_GNET_SGME		GNET_SGME		3357
 shooter_u		MACH_SHOOTER_U		SHOOTER_U		3358
-vmx53			MACH_VMX53		VMX53			3359
+voipac			MACH_MX53_VOIPAC	MX53_VOIPAC		3359
 rhino			MACH_RHINO		RHINO			3360
 armlex4210		MACH_ARMLEX4210		ARMLEX4210		3361
 swarcoextmodem		MACH_SWARCOEXTMODEM	SWARCOEXTMODEM		3362
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
