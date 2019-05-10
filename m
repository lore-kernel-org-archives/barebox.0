Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOyua-0008Oh-SS
 for barebox@lists.infradead.org; Fri, 10 May 2019 06:21:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 May 2019 08:21:22 +0200
Message-Id: <20190510062135.11534-2-s.hauer@pengutronix.de>
In-Reply-To: <20190510062135.11534-1-s.hauer@pengutronix.de>
References: <20190510062135.11534-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/14] bbu: In bbu_register_std_file_update detect device
 before accessing it
To: Barebox List <barebox@lists.infradead.org>

The device the standard file update handler writes to may not be present
before detecting it, so as a first step detect it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bbu.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/bbu.c b/common/bbu.c
index 3271d403b7..00bec32a86 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -299,6 +299,8 @@ static int bbu_std_file_handler(struct bbu_handler *handler,
 			return -EINVAL;
 	}
 
+	device_detect_by_name(devpath_to_name(data->devicefile));
+
 	ret = stat(data->devicefile, &s);
 	if (ret) {
 		oflags |= O_CREAT;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
