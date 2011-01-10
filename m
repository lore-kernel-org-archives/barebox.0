Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PcRLy-0005N4-BS
	for barebox@lists.infradead.org; Mon, 10 Jan 2011 23:40:51 +0000
Received: by iyj21 with SMTP id 21so19611420iyj.36
	for <barebox@lists.infradead.org>; Mon, 10 Jan 2011 15:40:41 -0800 (PST)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Tue, 11 Jan 2011 10:40:14 +1100
Message-Id: <1294702816-21612-2-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1294702816-21612-1-git-send-email-marc@cpdesign.com.au>
References: <1294702816-21612-1-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH v2 1/3] Init env context a bit earlier in initalization
	sequence.
To: barebox@lists.infradead.org

Ensures subsequent init functions to export environment variables during
init without having to rely on linking order being correct.

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 common/env.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/common/env.c b/common/env.c
index f81bd46..b72b5d1 100644
--- a/common/env.c
+++ b/common/env.c
@@ -81,7 +81,7 @@ int env_push_context(void)
 	return 0;
 }
 
-late_initcall(env_push_context);
+device_initcall(env_push_context);
 
 /**
  * FIXME
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
