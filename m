Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zu4Gs-0002ru-4O
 for barebox@lists.infradead.org; Wed, 04 Nov 2015 20:03:02 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 4 Nov 2015 20:02:36 +0000
Message-ID: <1446667356.4553.1.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <ECFBB4A0D6F44240A0DDB4E2E0C7D828@kymetacorp.com>
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
Subject: [PATCH] mci: Print versions with micro levels correctly
To: barebox <barebox@lists.infradead.org>

The version is stored as BCD, e.g. 0x40 -> ".4" and 0x41 -> ".41".
The latter was getting printed as ".65".  Simplify the logic a bit to
not split the minor into nybbles just to re-assemble it into a byte
again.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 drivers/mci/mci-core.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 9000115..29c0d54 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -947,14 +947,13 @@ out:
 static char *mci_version_string(struct mci *mci)
 {
 	static char version[sizeof("x.xx")];
-	unsigned major, minor, micro;
+	unsigned major, minor;
 
 	major = (mci->version >> 8) & 0xf;
-	minor = (mci->version >> 4) & 0xf;
-	micro = mci->version & 0xf;
+	minor = mci->version & 0xff;
 
-	sprintf(version, "%u.%u", major,
-			micro ? (minor << 4) | micro : minor);
+	/* Shift off last digit of minor if it's 0 */
+	sprintf(version, "%u.%x", major, minor & 0xf ? minor : minor >> 4);
 
 	return version;
 }
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
