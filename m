Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aTsjv-0005VS-LA
 for barebox@lists.infradead.org; Thu, 11 Feb 2016 15:01:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Feb 2016 16:00:40 +0100
Message-Id: <1455202840-26501-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1455202840-26501-1-git-send-email-s.hauer@pengutronix.de>
References: <1455202840-26501-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] blspec: ignore lines beginning with '#'
To: Barebox List <barebox@lists.infradead.org>

According to the bootloader spec these should be treated as comments.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/blspec.c b/common/blspec.c
index 0f806ca..1800556 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -86,6 +86,9 @@ static struct blspec_entry *blspec_entry_open(struct blspec *blspec,
 			next++;
 		}
 
+		if (*line == '#')
+			continue;
+
 		name = line;
 		end = name;
 
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
