Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OorvL-0003Lw-0b
	for barebox@lists.infradead.org; Fri, 27 Aug 2010 05:56:23 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 27 Aug 2010 07:56:02 +0200
Message-Id: <1282888562-19163-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1282886118-15217-4-git-send-email-plagnioj@jcrosoft.com>
References: <1282886118-15217-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/4 v2] use resource_size_t for device resources
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
v2:
	remove comment as we fix it
	fix commit subject

Best Regards,
J.
 include/driver.h |    5 ++---
 1 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/include/driver.h b/include/driver.h
index ae3e777..ee0749d 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -69,12 +69,11 @@ struct device_d {
 	 * something like eth0 or nor0. */
 	int id;
 
-	/*! FIXME */
-	unsigned long size;
+	resource_size_t size;
 
 	/*! For devices which are directly mapped into memory, i.e. NOR
 	 * Flash or SDRAM. */
-	unsigned long map_base;
+	resource_size_t map_base;
 
 	void *platform_data; /*! board specific information about this device */
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
