Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo69.mail-out.ovh.net ([46.105.43.105])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YaOZx-0000wV-ES
 for barebox@lists.infradead.org; Tue, 24 Mar 2015 13:09:10 +0000
Received: from mail182.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo69.mail-out.ovh.net (Postfix) with SMTP id D329D1004271
 for <barebox@lists.infradead.org>; Tue, 24 Mar 2015 14:08:46 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 24 Mar 2015 14:08:33 +0100
Message-Id: <1427202519-15224-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20150324130035.GB8125@ns203013.ovh.net>
References: <20150324130035.GB8125@ns203013.ovh.net>
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
Subject: [PATCH 1/7] command: digest: only set the key when specified
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/digest.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/commands/digest.c b/commands/digest.c
index 876c37a..90e68a1 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -147,10 +147,12 @@ static int do_digest(int argc, char *argv[])
 		}
 	}
 
-	ret = digest_set_key(d, key, keylen);
-	free(tmp_key);
-	if (ret)
-		goto err;
+	if (key) {
+		ret = digest_set_key(d, key, keylen);
+		free(tmp_key);
+		if (ret)
+			goto err;
+	}
 
 	if (sigfile) {
 		sig = tmp_sig = read_file(sigfile, &siglen);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
