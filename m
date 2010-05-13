Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-px0-f177.google.com ([209.85.212.177])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1OCNvw-0003sk-EF
	for barebox@lists.infradead.org; Thu, 13 May 2010 02:13:57 +0000
Received: by pxi1 with SMTP id 1so418794pxi.36
	for <barebox@lists.infradead.org>; Wed, 12 May 2010 19:13:54 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Thu, 13 May 2010 12:46:58 +1000
Message-Id: <1273718822-16800-3-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1273718822-16800-2-git-send-email-marc@cpdesign.com.au>
References: <1273718822-16800-1-git-send-email-marc@cpdesign.com.au>
	<1273718822-16800-2-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH 2/6] arm boot: Formatting
To: barebox@lists.infradead.org

Changed to be consistent with surrounding code.
---
 arch/arm/lib/armlinux.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 1c39045..e0af838 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -110,7 +110,7 @@ static void setup_commandline_tag(const char *commandline)
 
 static void setup_revision_tag(void)
 {
-	if( system_rev) {
+	if (system_rev) {
 		params->hdr.tag = ATAG_REVISION;
 		params->hdr.size = tag_size(tag_revision);
 		
-- 
1.6.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
