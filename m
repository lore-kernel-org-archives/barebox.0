Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d2gAN-0003gl-7E
 for barebox@lists.infradead.org; Mon, 24 Apr 2017 15:44:45 +0000
Received: by mail-lf0-x241.google.com with SMTP id i3so17128370lfh.2
 for <barebox@lists.infradead.org>; Mon, 24 Apr 2017 08:44:22 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 24 Apr 2017 18:44:07 +0300
Message-Id: <20170424154408.15860-2-antonynpavlov@gmail.com>
In-Reply-To: <20170424154408.15860-1-antonynpavlov@gmail.com>
References: <20170424154408.15860-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] globalvar: make nv_device static
To: barebox@lists.infradead.org

nv_device isn't used outside of common/globalvar.c
so make it static.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/globalvar.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 32ca6a24db..ebc5e830d2 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -19,7 +19,7 @@ struct device_d global_device = {
 	.id = DEVICE_ID_SINGLE,
 };
 
-struct device_d nv_device = {
+static struct device_d nv_device = {
 	.name = "nv",
 	.id = DEVICE_ID_SINGLE,
 };
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
