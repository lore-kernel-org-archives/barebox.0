Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ZUz4k-0006fK-LR
 for barebox@lists.infradead.org; Thu, 27 Aug 2015 15:26:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Aug 2015 17:26:12 +0200
Message-Id: <1440689174-731-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1440689174-731-1-git-send-email-s.hauer@pengutronix.de>
References: <1440689174-731-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] login: check return value of digest_alloc
To: Barebox List <barebox@lists.infradead.org>

digest_alloc can fail, check the return value.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/password.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/common/password.c b/common/password.c
index 0cb79b8..43c5e0c 100644
--- a/common/password.c
+++ b/common/password.c
@@ -288,6 +288,10 @@ static int check_passwd(unsigned char *passwd, size_t length)
 		hash_len = PBKDF2_LENGTH;
 	} else {
 		d = digest_alloc(PASSWD_SUM);
+		if (!d) {
+			pr_err("No such digest: %s\n", PASSWD_SUM);
+			return -ENOENT;
+		}
 
 		hash_len = digest_length(d);
 	}
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
