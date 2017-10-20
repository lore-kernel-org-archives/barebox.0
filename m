Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e5afg-0006VZ-Qz
 for barebox@lists.infradead.org; Fri, 20 Oct 2017 17:01:23 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1e5afI-0003Q2-Mj
 for barebox@lists.infradead.org; Fri, 20 Oct 2017 19:00:56 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 20 Oct 2017 19:00:56 +0200
Message-Id: <20171020170056.10893-1-l.stach@pengutronix.de>
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
Subject: [PATCH] arm: bootm: don't fall over if image is padded with less than
 40 bytes
To: barebox@lists.infradead.org

If the zImage has a padding, which is less than 40 bytes
(sizeof struct fdt_header) the amount of read bytes would be propagated
as an error code. Fix this by only propagating real errors and treating
failure to read less than the expected amount as no concatenated DT
being present.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/lib/bootm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 8068a53be0a5..25efb42541f9 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -250,8 +250,10 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data)
 
 	header = &__header;
 	ret = read(fd, header, sizeof(*header));
-	if (ret < sizeof(*header))
+	if (ret < 0)
 		return ret;
+	if (ret < sizeof(*header))
+		return -ENXIO;
 
 	if (file_detect_type(header, sizeof(*header)) != filetype_oftree)
 		return -ENXIO;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
