Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bar.sig21.net ([80.81.252.164])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ScIju-0006mQ-9F
 for barebox@lists.infradead.org; Wed, 06 Jun 2012 16:05:43 +0000
Received: from p5099b351.dip0.t-ipconnect.de ([80.153.179.81] helo=zzz.local)
 by bar.sig21.net with esmtpsa (TLS1.0:RSA_ARCFOUR_SHA1:16)
 (Exim 4.72) (envelope-from <js@sig21.net>) id 1ScIjO-00080R-1f
 for barebox@lists.infradead.org; Wed, 06 Jun 2012 18:05:16 +0200
Received: from js by zzz.local with local (Exim 4.80)
 (envelope-from <js@sig21.net>) id 1ScIjN-00060C-Gx
 for barebox@lists.infradead.org; Wed, 06 Jun 2012 18:05:09 +0200
From: Johannes Stezenbach <js@sig21.net>
Date: Wed,  6 Jun 2012 18:04:57 +0200
Message-Id: <1338998700-23012-3-git-send-email-js@sig21.net>
In-Reply-To: <1338998700-23012-1-git-send-email-js@sig21.net>
References: <1338998700-23012-1-git-send-email-js@sig21.net>
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
Subject: [PATCH 2/5] m25p80: allow erase to be interrupted
To: barebox@lists.infradead.org

Check for Ctrl-C before erasing each sector.

Signed-off-by: Johannes Stezenbach <js@sig21.net>
---
 drivers/nor/m25p80.c |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/nor/m25p80.c b/drivers/nor/m25p80.c
index a3dfe75..86e6d25 100644
--- a/drivers/nor/m25p80.c
+++ b/drivers/nor/m25p80.c
@@ -232,6 +232,8 @@ static ssize_t m25p80_erase(struct cdev *cdev, size_t count, unsigned long offse
 	/* "sector"-at-a-time erase */
 	} else {
 		while (len) {
+			if (ctrlc())
+				return -EINTR;
 			if (erase_sector(flash, addr))
 				return -EIO;
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
