Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V8NOj-000787-Jd
 for barebox@lists.infradead.org; Sun, 11 Aug 2013 04:36:59 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Sun, 11 Aug 2013 07:35:45 +0300
Message-Id: <2def65c701e7acd877f515ba07862495ad26e3df.1376195499.git.baruch@tkos.co.il>
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
Subject: [PATCH v2] net: fix checksum verification
To: barebox@lists.infradead.org

Checksum calculation on data including its own checksum (as is the case with
IP headers) should give 0xffff before bit flipping. Current code works well
for the correct checksum case, but fails to identify errors.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
Untested.

v2: net_checksum() doesn't flip bits. Fix accordingly.

 net/net.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/net.c b/net/net.c
index 0bd9084..058a4d3 100644
--- a/net/net.c
+++ b/net/net.c
@@ -41,7 +41,7 @@ static unsigned int net_ip_id;
 
 int net_checksum_ok(unsigned char *ptr, int len)
 {
-	return net_checksum(ptr, len) + 1;
+	return net_checksum(ptr, len) == 0xffff;
 }
 
 uint16_t net_checksum(unsigned char *ptr, int len)
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
