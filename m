Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XEu1g-0002ly-U3
 for barebox@lists.infradead.org; Wed, 06 Aug 2014 05:44:41 +0000
Received: by mail-lb0-f176.google.com with SMTP id u10so1486792lbd.21
 for <barebox@lists.infradead.org>; Tue, 05 Aug 2014 22:44:17 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  6 Aug 2014 09:44:05 +0400
Message-Id: <1407303846-15550-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1407303846-15550-1-git-send-email-antonynpavlov@gmail.com>
References: <1407303846-15550-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/3] scripts: add bareboximd{,-target} to .gitignore
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 scripts/.gitignore | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/.gitignore b/scripts/.gitignore
index fddc04b..980c2be 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -15,3 +15,5 @@ zynq_mkimage
 socfpga_mkimage
 bareboxcrc32
 bareboxcrc32-target
+bareboximd
+bareboximd-target
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
