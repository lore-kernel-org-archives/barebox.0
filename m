Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RpdyF-00045t-JV
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 10:51:24 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 24 Jan 2012 11:51:02 +0100
Message-Id: <1327402267-22385-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1327402267-22385-1-git-send-email-mkl@pengutronix.de>
References: <1327402267-22385-1-git-send-email-mkl@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/6] net/nfs: increase timeout to 15 seconds
To: barebox@lists.infradead.org

On my laptop with avahi enabled (linux mdns implementation), the unmount
take quite long, because the avahi daemon tries to resolve the client's
host name. This leads to a delay of about 8 seconds of the unmount reply
messages, so that barebox runs into a timeout. This patch increases the
NFS timeout to 15 to work around the problem.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 net/nfs.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/net/nfs.c b/net/nfs.c
index 0a4b787..f6cbc7c 100644
--- a/net/nfs.c
+++ b/net/nfs.c
@@ -124,7 +124,7 @@ struct rpc_t {
 	} u;
 };
 
-#define NFS_TIMEOUT 1
+#define NFS_TIMEOUT 15
 
 static unsigned long rpc_id = 0;
 static int nfs_offset = -1;
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
