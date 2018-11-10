Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gLOBk-0001eI-HY
 for barebox@lists.infradead.org; Sat, 10 Nov 2018 08:00:17 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Sat, 10 Nov 2018 08:59:50 +0100
Message-Id: <20181110075954.32746-2-linux@rempel-privat.de>
In-Reply-To: <20181110075954.32746-1-linux@rempel-privat.de>
References: <20181110075954.32746-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 1/5] commands: keystore: init s_len
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

if read_file_2 will fail, s_len will stay uninitialized.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 commands/keystore.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/keystore.c b/commands/keystore.c
index 52c4be263..50a6c8494 100644
--- a/commands/keystore.c
+++ b/commands/keystore.c
@@ -15,7 +15,7 @@ static int do_keystore(int argc, char *argv[])
 	const char *file = NULL;
 	char *secret_str = NULL;
 	void *secret;
-	int s_len;
+	int s_len = 0;
 
 	while ((opt = getopt(argc, argv, "rs:f:")) > 0) {
 		switch (opt) {
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
