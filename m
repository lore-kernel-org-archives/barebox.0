Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSqIu-0001CW-BP
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 20:54:13 +0000
Received: by mail-pf0-x241.google.com with SMTP id y5-v6so157167pfn.4
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 13:54:02 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: [PATCH v5 28/54] Documentation: i.MX: Add missing <soctype>
Date: Tue, 12 Jun 2018 13:52:44 -0700
Message-Id: <20180612205310.25745-29-andrew.smirnov@gmail.com>
In-Reply-To: <20180612205310.25745-1-andrew.smirnov@gmail.com>
References: <20180612205310.25745-1-andrew.smirnov@gmail.com>
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
