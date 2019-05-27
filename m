Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVM5M-0000Oa-L3
 for barebox@lists.infradead.org; Mon, 27 May 2019 20:19:09 +0000
Received: by mail-pg1-x543.google.com with SMTP id v11so9596551pgl.5
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 13:19:08 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 13:18:47 -0700
Message-Id: <20190527201853.18853-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190527201853.18853-1-andrew.smirnov@gmail.com>
References: <20190527201853.18853-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/7] filetype: Add "U-Boot environmemnt variable data" filetype
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/filetype.c  | 2 ++
 include/filetype.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index e2d707b15..429911533 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -77,6 +77,8 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_imx_image_v2] = { "i.MX image (v2)", "imx-image-v2" },
 	[filetype_layerscape_image] = { "Layerscape image", "layerscape-PBL" },
 	[filetype_layerscape_qspi_image] = { "Layerscape QSPI image", "layerscape-qspi-PBL" },
+	[filetype_ubootvar] = { "U-Boot environmemnt variable data",
+				"ubootvar" },
 };
 
 const char *file_type_to_string(enum filetype f)
diff --git a/include/filetype.h b/include/filetype.h
index dcb331a6c..f1be04e81 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -47,6 +47,7 @@ enum filetype {
 	filetype_imx_image_v2,
 	filetype_layerscape_image,
 	filetype_layerscape_qspi_image,
+	filetype_ubootvar,
 	filetype_max,
 };
 
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
