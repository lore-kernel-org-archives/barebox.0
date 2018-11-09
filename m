Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gL3TQ-0002hf-8q
 for barebox@lists.infradead.org; Fri, 09 Nov 2018 09:53:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Nov 2018 10:52:45 +0100
Message-Id: <20181109095246.15068-20-s.hauer@pengutronix.de>
In-Reply-To: <20181109095246.15068-1-s.hauer@pengutronix.de>
References: <20181109095246.15068-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/20] nvmem: Add prototype for exported functions
To: Barebox List <barebox@lists.infradead.org>

nvmem_device_cell_read() and nvmem_device_cell_write() are exported, so
add a prototype to the header file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/nvmem-consumer.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/linux/nvmem-consumer.h b/include/linux/nvmem-consumer.h
index 0ec2f05b97..32ea46e3bf 100644
--- a/include/linux/nvmem-consumer.h
+++ b/include/linux/nvmem-consumer.h
@@ -40,6 +40,10 @@ int nvmem_cell_write(struct nvmem_cell *cell, void *buf, size_t len);
 /* direct nvmem device read/write interface */
 struct nvmem_device *nvmem_device_get(struct device_d *dev, const char *name);
 void nvmem_device_put(struct nvmem_device *nvmem);
+ssize_t nvmem_device_cell_read(struct nvmem_device *nvmem,
+			       struct nvmem_cell_info *info, void *buf);
+int nvmem_device_cell_write(struct nvmem_device *nvmem,
+			    struct nvmem_cell_info *info, void *buf);
 
 #else
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
