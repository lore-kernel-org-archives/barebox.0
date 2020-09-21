Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKG0a-00052e-RO
 for barebox@lists.infradead.org; Mon, 21 Sep 2020 07:13:09 +0000
Received: from localhost.localdomain (p5ded6c86.dip0.t-ipconnect.de
 [93.237.108.134]) (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 6EDBDE001B
 for <barebox@lists.infradead.org>; Mon, 21 Sep 2020 07:13:05 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 21 Sep 2020 09:13:00 +0200
Message-Id: <20200921071301.561952-1-ahmad@a3f.at>
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
Subject: [PATCH 1/2] rsa: fix print format specifiers in debug()
To: barebox@lists.infradead.org

The arguments after the format string are of type uint32_t and size_t.
Use the correct format specifiers.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 crypto/rsa.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/crypto/rsa.c b/crypto/rsa.c
index 64241854c854..1aea738e5237 100644
--- a/crypto/rsa.c
+++ b/crypto/rsa.c
@@ -317,7 +317,7 @@ int rsa_verify(const struct rsa_public_key *key, const uint8_t *sig,
 		return -EOPNOTSUPP;
 
 	if (sig_len != (key->len * sizeof(uint32_t))) {
-		debug("Signature is of incorrect length %d, should be %d\n", sig_len,
+		debug("Signature is of incorrect length %u, should be %zu\n", sig_len,
 				key->len * sizeof(uint32_t));
 		ret = -EINVAL;
 		goto out_free_digest;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
