Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vw0-f49.google.com ([209.85.212.49])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1OAYvE-00082L-Cj
	for barebox@lists.infradead.org; Sat, 08 May 2010 01:33:41 +0000
Received: by mail-vw0-f49.google.com with SMTP id 4so615183vws.36
	for <barebox@lists.infradead.org>; Fri, 07 May 2010 18:33:40 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Sat,  8 May 2010 12:09:23 +1000
Message-Id: <1273284563-28645-4-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1273284563-28645-3-git-send-email-marc@cpdesign.com.au>
References: <1273284563-28645-1-git-send-email-marc@cpdesign.com.au>
	<1273284563-28645-2-git-send-email-marc@cpdesign.com.au>
	<1273284563-28645-3-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH 3/3] mx35-3stack: fix Pad selection for CONTRAST pin.
To: barebox@lists.infradead.org
Cc: Marc Reilly <marc@susedev1.rulztime>

From: Marc Reilly <marc@susedev1.rulztime>

On the Rev2 board the GPIO1_1 triggers an interrupt signal for one of the external devices (can't remember which one off the top of my head).
This change stops the endless interrupts.
---
 board/freescale-mx35-3-stack/3stack.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/board/freescale-mx35-3-stack/3stack.c b/board/freescale-mx35-3-stack/3stack.c
index cee0e75..74baae0 100644
--- a/board/freescale-mx35-3-stack/3stack.c
+++ b/board/freescale-mx35-3-stack/3stack.c
@@ -325,10 +325,11 @@ static struct pad_desc f3s_pads[] = {
 	MX35_PAD_D3_HSYNC__IPU_DISPB_D3_HSYNC,
 	MX35_PAD_D3_FPSHIFT__IPU_DISPB_D3_CLK,
 	MX35_PAD_D3_DRDY__IPU_DISPB_D3_DRDY,
-	MX35_PAD_CONTRAST__GPIO1_1,
+	MX35_PAD_CONTRAST__IPU_DISPB_CONTR,
 	MX35_PAD_D3_VSYNC__IPU_DISPB_D3_VSYNC,
 	MX35_PAD_D3_REV__IPU_DISPB_D3_REV,
 	MX35_PAD_D3_CLS__IPU_DISPB_D3_CLS,
+	
 };
 
 static int f3s_console_init(void)
-- 
1.6.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
