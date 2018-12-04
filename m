Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gU6m1-0000f2-N7
 for barebox@lists.infradead.org; Tue, 04 Dec 2018 09:13:47 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gU6lq-0002JD-Aa
 for barebox@lists.infradead.org; Tue, 04 Dec 2018 10:13:34 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.91)
 (envelope-from <afa@pengutronix.de>) id 1gU6lq-0006Yw-1P
 for barebox@lists.infradead.org; Tue, 04 Dec 2018 10:13:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  4 Dec 2018 10:13:18 +0100
Message-Id: <20181204091317.17106-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] lib: bootstrap: fix instance of possibly mismatched pointer
 sizes
To: barebox@lists.infradead.org

len was int but &len is passed to read_file(..., size_t *size),
Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/bootstrap/disk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/bootstrap/disk.c b/lib/bootstrap/disk.c
index a55d5d77f4cf..fd016166e6e4 100644
--- a/lib/bootstrap/disk.c
+++ b/lib/bootstrap/disk.c
@@ -18,7 +18,7 @@ void* bootstrap_read_disk(const char *dev, const char *fstype)
 {
 	int ret;
 	void *buf;
-	int len;
+	size_t len;
 	const char *path = "/";
 
 	ret = mount(dev, fstype, path, NULL);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
