Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QstAR-0006Tt-Oa
	for barebox@lists.infradead.org; Mon, 15 Aug 2011 09:09:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Aug 2011 11:09:02 +0200
Message-Id: <1313399344-21259-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1313399344-21259-1-git-send-email-s.hauer@pengutronix.de>
References: <1313399344-21259-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] put env_push_context into postcore_initcall
To: barebox@lists.infradead.org

env_push_context only needs malloc, so initialize it earlier.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/env.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/common/env.c b/common/env.c
index 47cef05..defb26b 100644
--- a/common/env.c
+++ b/common/env.c
@@ -81,7 +81,7 @@ int env_push_context(void)
 	return 0;
 }
 
-device_initcall(env_push_context);
+postcore_initcall(env_push_context);
 
 /**
  * FIXME
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
