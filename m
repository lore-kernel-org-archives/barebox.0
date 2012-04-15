Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJPTG-0006KD-P7
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 13:26:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 15 Apr 2012 15:26:15 +0200
Message-Id: <1334496380-4091-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334496380-4091-1-git-send-email-s.hauer@pengutronix.de>
References: <1334496380-4091-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] net dns: remove debug code
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/dns.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/dns.c b/net/dns.c
index fb1178a..0d6c337 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -97,7 +97,7 @@ static int dns_send(char *name)
 		dotptr = s;
 	} while (*(dotptr + 1));
 	*dotptr = 0;
-//memory_display(fullname, 0, strlen(fullname), 1);
+
 	strcpy(header->data, fullname);
 
 	p = header->data + strlen(fullname);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
