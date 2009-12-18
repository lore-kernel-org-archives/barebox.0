Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLf4n-0005Cv-Fg
	for barebox@lists.infradead.org; Fri, 18 Dec 2009 15:49:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Dec 2009 16:47:53 +0100
Message-Id: <1261151305-18627-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1261151305-18627-4-git-send-email-s.hauer@pengutronix.de>
References: <1261151305-18627-1-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-2-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-3-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/36] read_key: Use ARRAY_SIZE instead of hardcoded value
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/readkey.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/lib/readkey.c b/lib/readkey.c
index 5937fd0..0464ce4 100644
--- a/lib/readkey.c
+++ b/lib/readkey.c
@@ -70,7 +70,7 @@ char read_key(void)
 			}
 		}
 		esc[i] = 0;
-		for (i = 0; i < 18; i++){
+		for (i = 0; i < ARRAY_SIZE(esccmds); i++){
 			if (!strcmp(esc, esccmds[i].seq))
 				return esccmds[i].val;
 		}
-- 
1.6.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
