Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahz9-0006iH-Uh
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:11 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahz8-0006u0-5I
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:06 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:14:33 +0100
Message-Id: <20191129151505.23946-8-l.stach@pengutronix.de>
In-Reply-To: <20191129151505.23946-1-l.stach@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 07/39] commands: keystore: use correct type for s_len
To: barebox@lists.infradead.org

Fixes the follwing warning: "passing argument 2 of 'read_file_2'
from incompatible pointer type".

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 commands/keystore.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/keystore.c b/commands/keystore.c
index 52c4be263974..4f6a7ef190ea 100644
--- a/commands/keystore.c
+++ b/commands/keystore.c
@@ -15,7 +15,7 @@ static int do_keystore(int argc, char *argv[])
 	const char *file = NULL;
 	char *secret_str = NULL;
 	void *secret;
-	int s_len;
+	size_t s_len;
 
 	while ((opt = getopt(argc, argv, "rs:f:")) > 0) {
 		switch (opt) {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
