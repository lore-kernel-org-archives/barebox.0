Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTRjq-0006qp-52
 for barebox@lists.infradead.org; Sat, 09 Nov 2019 14:29:20 +0000
Received: from astat.fritz.box (a89-183-91-60.net-htp.de [89.183.91.60])
 by lynxeye.de (Postfix) with ESMTPA id 27AEBE74241
 for <barebox@lists.infradead.org>; Sat,  9 Nov 2019 15:28:42 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sat,  9 Nov 2019 15:28:24 +0100
Message-Id: <20191109142837.82409-5-dev@lynxeye.de>
In-Reply-To: <20191109142837.82409-1-dev@lynxeye.de>
References: <20191109142837.82409-1-dev@lynxeye.de>
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
Subject: [PATCH v2 05/18] ARM: zynq: add size check in zynq_mkimage
To: barebox@lists.infradead.org

Currently Barebox does not support 2 stage loading on Zynq, so the
image must fit into the free OCRAM area. Add a check to the mkimage
tool to validate this.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 scripts/zynq_mkimage.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/scripts/zynq_mkimage.c b/scripts/zynq_mkimage.c
index bf214ca5d0d1..0a1c069472e9 100644
--- a/scripts/zynq_mkimage.c
+++ b/scripts/zynq_mkimage.c
@@ -283,6 +283,11 @@ int main(int argc, char *argv[])
 		exit(EXIT_FAILURE);
 	}
 
+	if (st.st_size > 192 * 1024) {
+		fprintf(stderr, "Image too big, will not fit in OCRAM!\n");
+		exit(EXIT_FAILURE);
+	}
+
 	buf = calloc(st.st_size + IMAGE_OFFSET, sizeof(char));
 	if (!buf) {
 		fprintf(stderr, "Unable to allocate buffer\n");
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
