Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b2avi-0002EM-Cq
 for barebox@lists.infradead.org; Tue, 17 May 2016 09:04:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 May 2016 11:04:14 +0200
Message-Id: <1463475854-30224-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1463475854-30224-1-git-send-email-s.hauer@pengutronix.de>
References: <1463475854-30224-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: i.MX: HABv3: Set to production mode
To: Barebox List <barebox@lists.infradead.org>

The HABv3 images for engineering mode do not work on a production device
and the images for production mode do not work on an engineering device.

When in engineering mode the ROM checks the images, but does not stop
booting when the signatures are wrong. This means a production image
can still be booted on an engineering device. This device can be
temporarily put into production mode by writing to the HAB_TYPE shadow
fuse register. After a reset the device will come up in production mode
and the image can be tested for validity. This means that if we have to
decide between production mode images and engineering images, the
production images are a better decision. Change this accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h b/arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h
index 4b81d49..f4804fe 100644
--- a/arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h
+++ b/arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h
@@ -11,7 +11,7 @@ super_root_key CONFIG_HABV3_SRK_PEM
 
 hab [Header]
 hab Version = 3.0
-hab Security Configuration = Engineering
+hab Security Configuration = Production
 hab Hash Algorithm = SHA256
 hab Engine = RTIC
 hab Certificate Format = WTLS
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
