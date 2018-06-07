Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQuYL-0006JS-Vz
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 13:02:10 +0000
Received: by mail-pl0-x241.google.com with SMTP id 30-v6so6089937pld.13
 for <barebox@lists.infradead.org>; Thu, 07 Jun 2018 06:01:59 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Jun 2018 06:00:44 -0700
Message-Id: <20180607130108.5339-29-andrew.smirnov@gmail.com>
In-Reply-To: <20180607130108.5339-1-andrew.smirnov@gmail.com>
References: <20180607130108.5339-1-andrew.smirnov@gmail.com>
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
Subject: [RESEND v3 28/52] Documentation: i.MX: Add missing <soctype>
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 Documentation/boards/imx.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index 8de2bd5c5..b3002badf 100644
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
