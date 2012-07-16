Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SqZqZ-0004ws-Af
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 01:11:43 +0000
Received: by pbbrq13 with SMTP id rq13so10398216pbb.36
 for <barebox@lists.infradead.org>; Sun, 15 Jul 2012 18:10:13 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Mon, 16 Jul 2012 11:04:56 +1000
Message-Id: <1342400699-6753-3-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1342400699-6753-1-git-send-email-marc@cpdesign.com.au>
References: <1342400699-6753-1-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH 2/5] imx35: 6-bit divider helper
To: barebox@lists.infradead.org

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 arch/arm/mach-imx/speed-imx35.c |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/speed-imx35.c b/arch/arm/mach-imx/speed-imx35.c
index 684dc14..905ab47 100644
--- a/arch/arm/mach-imx/speed-imx35.c
+++ b/arch/arm/mach-imx/speed-imx35.c
@@ -97,6 +97,11 @@ static unsigned long get_3_3_div(unsigned long in)
 	return (((in >> 3) & 0x7) + 1) * ((in & 0x7) + 1);
 }
 
+static unsigned long get_6_div(unsigned long in)
+{
+	return ((in & 0x3f) + 1);
+}
+
 static unsigned long imx_get_ipg_perclk(void)
 {
 	ulong pdr0 = readl(IMX_CCM_BASE + CCM_PDR0);
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
