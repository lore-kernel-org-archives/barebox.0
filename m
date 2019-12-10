Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iejQl-0002nX-Ay
 for barebox@lists.infradead.org; Tue, 10 Dec 2019 17:36:16 +0000
Received: by mail-wr1-x443.google.com with SMTP id c14so21057140wrn.7
 for <barebox@lists.infradead.org>; Tue, 10 Dec 2019 09:36:15 -0800 (PST)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Tue, 10 Dec 2019 18:36:01 +0100
Message-Id: <20191210173601.26166-1-h.feurstein@gmail.com>
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
Subject: [PATCH] commands: digest: don't be to restrictive with the length of
 verification files
To: barebox@lists.infradead.org
Cc: Hubert Feurstein <h.feurstein@gmail.com>

Otherwise it is not possible to verify against a file created by shaXsum
from linux. Usually there is the filename appended after the hash.

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 commands/digest.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/digest.c b/commands/digest.c
index 99b27dcc2..21a091717 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -164,7 +164,7 @@ static int do_digest(int argc, char *argv[])
 
 	if (sig) {
 		digestlen = digest_length(d);
-		if (siglen == 2 * digestlen) {
+		if (siglen >= 2 * digestlen) {
 			if (!tmp_sig)
 				tmp_sig = xmalloc(digestlen);
 
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
