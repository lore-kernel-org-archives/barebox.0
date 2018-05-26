Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMg5p-0004u7-LO
 for barebox@lists.infradead.org; Sat, 26 May 2018 20:48:04 +0000
Received: by mail-pf0-x242.google.com with SMTP id w129-v6so4093109pfd.3
 for <barebox@lists.infradead.org>; Sat, 26 May 2018 13:47:03 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: [PATCH v2 29/48] Documentation: i.MX: Add missing <soctype>
Date: Sat, 26 May 2018 13:44:32 -0700
Message-Id: <20180526204451.16530-30-andrew.smirnov@gmail.com>
In-Reply-To: <20180526204451.16530-1-andrew.smirnov@gmail.com>
References: <20180526204451.16530-1-andrew.smirnov@gmail.com>
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
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 Documentation/boards/imx.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index de389456e..196513520 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -59,7 +59,7 @@ options in this file are:
 Header:
 
 +----------------+--------------------------------------------------------------+
-| soc <soctype>  | soctype can be one of imx35, imx51, imx53, imx6              |
+| soc <soctype>  | soctype can be one of imx35, imx51, imx53, imx6, imx7, vf610 |
 +----------------+--------------------------------------------------------------+
 | loadaddr <adr> |     The address the binary is uploaded to                    |
 +----------------+--------------------------------------------------------------+
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
