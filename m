Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x236.google.com ([2a00:1450:4010:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGusO-0007lh-7F
 for barebox@lists.infradead.org; Sun, 19 Jul 2015 20:07:56 +0000
Received: by lblf12 with SMTP id f12so84913719lbl.2
 for <barebox@lists.infradead.org>; Sun, 19 Jul 2015 13:07:34 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 19 Jul 2015 23:07:10 +0300
Message-Id: <1437336443-8076-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1437336443-8076-1-git-send-email-antonynpavlov@gmail.com>
References: <1437336443-8076-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v2 03/16] fs/nfs.c: use uint16_t for port numbers
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/nfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index 5bff54a..0269814 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -132,8 +132,8 @@ struct nfs_priv {
 	struct net_connection *con;
 	IPaddr_t server;
 	char *path;
-	unsigned short mount_port;
-	unsigned short nfs_port;
+	uint16_t mount_port;
+	uint16_t nfs_port;
 	uint32_t rpc_id;
 	uint32_t rootfh_len;
 	char rootfh[NFS3_FHSIZE];
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
