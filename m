Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f171.google.com ([209.85.217.171])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XDS6p-0003gM-H4
 for barebox@lists.infradead.org; Sat, 02 Aug 2014 05:44:00 +0000
Received: by mail-lb0-f171.google.com with SMTP id l4so3877118lbv.30
 for <barebox@lists.infradead.org>; Fri, 01 Aug 2014 22:43:32 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat,  2 Aug 2014 09:43:21 +0400
Message-Id: <1406958203-11984-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406958203-11984-1-git-send-email-antonynpavlov@gmail.com>
References: <1406958203-11984-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/3] fixup! Add support for metadata in barebox images
To: barebox@lists.infradead.org

---
 common/imd-barebox.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/imd-barebox.c b/common/imd-barebox.c
index 7122740..e9cd37d 100644
--- a/common/imd-barebox.c
+++ b/common/imd-barebox.c
@@ -13,12 +13,12 @@ void imd_used(const void *used)
 
 struct imd_header imd_start_header
 __BAREBOX_IMD_SECTION(.barebox_imd_start) = {
-	.type = IMD_TYPE_START,
+	.type = cpu_to_le32(IMD_TYPE_START),
 };
 
 struct imd_header imd_end_header
 __BAREBOX_IMD_SECTION(.barebox_imd_end) = {
-	.type = IMD_TYPE_END,
+	.type = cpu_to_le32(IMD_TYPE_END),
 };
 
 BAREBOX_IMD_TAG_STRING(imd_build_tag, IMD_TYPE_BUILD, UTS_VERSION, 1);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
