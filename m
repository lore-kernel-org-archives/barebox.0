Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x235.google.com ([2a00:1450:4013:c00::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJIDO-0001fp-Mz
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 07:50:39 +0000
Received: by mail-ee0-f53.google.com with SMTP id e51so906945eek.40
 for <barebox@lists.infradead.org>; Thu, 27 Feb 2014 23:50:17 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Fri, 28 Feb 2014 08:44:28 +0100
Message-Id: <1393573468-31105-4-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1393573468-31105-1-git-send-email-alex.aring@gmail.com>
References: <1393573468-31105-1-git-send-email-alex.aring@gmail.com>
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
Subject: [RFC 3/3] libbb: read_full: use read return instead size
To: barebox@lists.infradead.org

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 lib/libbb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/libbb.c b/lib/libbb.c
index 189a170..c8d0835 100644
--- a/lib/libbb.c
+++ b/lib/libbb.c
@@ -162,7 +162,7 @@ int read_full(int fd, void *buf, size_t size)
 	int now;
 	int total = 0;
 
-	while (size) {
+	while (now) {
 		now = read(fd, buf, size);
 		if (now == 0)
 			return total;
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
