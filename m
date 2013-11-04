Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22b.google.com ([2a00:1450:4013:c00::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdT9T-0000qJ-1c
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 23:01:43 +0000
Received: by mail-ee0-f43.google.com with SMTP id b47so1446098eek.30
 for <barebox@lists.infradead.org>; Mon, 04 Nov 2013 15:01:20 -0800 (PST)
Received: from mamamia.internal (a89-182-17-100.net-htp.de. [89.182.17.100])
 by mx.google.com with ESMTPSA id s3sm52362808eeo.3.2013.11.04.15.01.18
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Mon, 04 Nov 2013 15:01:19 -0800 (PST)
From: Andre Heider <a.heider@gmail.com>
Date: Tue,  5 Nov 2013 00:01:02 +0100
Message-Id: <1383606064-30494-5-git-send-email-a.heider@gmail.com>
In-Reply-To: <1383606064-30494-1-git-send-email-a.heider@gmail.com>
References: <1383606064-30494-1-git-send-email-a.heider@gmail.com>
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
Subject: [PATCH v2 4/6] ARM: bcm2835: add missing mbox overscan response field
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
