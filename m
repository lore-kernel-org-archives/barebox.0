Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22c.google.com ([2a00:1450:4013:c00::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZRSF-0004BF-Tc
 for barebox@lists.infradead.org; Thu, 24 Oct 2013 20:24:29 +0000
Received: by mail-ee0-f44.google.com with SMTP id c4so903003eek.31
 for <barebox@lists.infradead.org>; Thu, 24 Oct 2013 13:24:06 -0700 (PDT)
Received: from mamamia.internal (a89-182-11-81.net-htp.de. [89.182.11.81])
 by mx.google.com with ESMTPSA id bn13sm8547646eeb.11.2013.10.24.13.24.04
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Thu, 24 Oct 2013 13:24:05 -0700 (PDT)
From: Andre Heider <a.heider@gmail.com>
Date: Thu, 24 Oct 2013 22:23:45 +0200
Message-Id: <1382646226-24871-6-git-send-email-a.heider@gmail.com>
In-Reply-To: <1382646226-24871-1-git-send-email-a.heider@gmail.com>
References: <1382646226-24871-1-git-send-email-a.heider@gmail.com>
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
Subject: [PATCH 5/6] ARM: bcm2835: add missing mbox overscan response field
To: barebox@lists.infradead.org

Add the missing "right" field to struct bcm2835_mbox_tag_overscan.

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 arch/arm/mach-bcm2835/include/mach/mbox.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-bcm2835/include/mach/mbox.h b/arch/arm/mach-bcm2835/include/mach/mbox.h
index 6c36389..fb8a9bf 100644
--- a/arch/arm/mach-bcm2835/include/mach/mbox.h
+++ b/arch/arm/mach-bcm2835/include/mach/mbox.h
@@ -355,6 +355,7 @@ struct bcm2835_mbox_tag_overscan {
 			u32 top;
 			u32 bottom;
 			u32 left;
+			u32 right;
 		} resp;
 	} body;
 };
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
