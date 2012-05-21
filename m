Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWUvr-0003Li-N1
 for barebox@lists.infradead.org; Mon, 21 May 2012 15:54:03 +0000
Received: from compute6.internal (compute6.nyi.mail.srv.osa [10.202.2.46])
 by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 7559020D92
 for <barebox@lists.infradead.org>; Mon, 21 May 2012 11:54:03 -0400 (EDT)
From: Alan Ott <alan@signal11.us>
Date: Mon, 21 May 2012 11:54:01 -0400
Message-Id: <1337615641-7246-1-git-send-email-alan@signal11.us>
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
Subject: [PATCH] README: change path to sandbox environment
To: barebox@lists.infradead.org
Cc: Alan Ott <alan@signal11.us>

The path to the sandbox environment is now arch/sandbox/board/env .

Signed-off-by: Alan Ott <alan@signal11.us>
---
 README |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/README b/README
index c875b7d..cec9ccb 100644
--- a/README
+++ b/README
@@ -110,7 +110,7 @@ Barebox usually needs an environment for storing the configuration data.
 You can generate an environment using the example environment contained
 in board/sandbox/env:
 
-  # ./scripts/bareboxenv -s -p 0x10000 board/sandbox/env/ env.bin
+  # ./scripts/bareboxenv -s -p 0x10000 arch/sandbox/board/env env.bin
 
 To get some files to play with you can generate a cramfs image:
   # mkcramfs somedir/ cramfs.bin
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
