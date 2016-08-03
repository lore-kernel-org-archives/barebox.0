Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0b-00176a03.pphosted.com ([67.231.157.48])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bUssE-0000b5-AZ
 for barebox@lists.infradead.org; Wed, 03 Aug 2016 09:54:03 +0000
Received: from pps.filterd (m0048299.ppops.net [127.0.0.1])
 by m0048299.ppops.net-00176a03. (8.16.0.11/8.16.0.11) with SMTP id
 u739oLVM032563
 for <barebox@lists.infradead.org>; Wed, 3 Aug 2016 05:53:39 -0400
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed,  3 Aug 2016 10:53:25 +0100
Message-Id: <1470218005-20457-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH] bbu: parameters are inverted in error message
To: barebox@lists.infradead.org

The error message warning the user that the image is too big for
the device has its parameters in the wrong order. Swap the two
parameters so that the output makes sense.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 common/bbu.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/bbu.c b/common/bbu.c
index 1b22139..c5dda8c 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -307,8 +307,8 @@ static int bbu_std_file_handler(struct bbu_handler *handler,
 		oflags |= O_CREAT;
 	} else {
 		if (!S_ISREG(s.st_mode) && s.st_size < data->len) {
-			printf("Image (%lld) is too big for device (%zd)\n",
-					s.st_size, data->len);
+			printf("Image (%zd) is too big for device (%lld)\n",
+					data->len, s.st_size);
 		}
 	}
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
