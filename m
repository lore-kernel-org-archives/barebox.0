Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNtFj-00027D-B7
 for barebox@lists.infradead.org; Thu, 01 Oct 2020 07:43:48 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  1 Oct 2020 09:43:35 +0200
Message-Id: <20201001074337.23430-3-a.fatoum@pengutronix.de>
In-Reply-To: <20201001074337.23430-1-a.fatoum@pengutronix.de>
References: <20201001074337.23430-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/5] ARM: layerscape: ppa: fix wrong return values on some
 errors
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Coccinelle detected that the IS_ERR and ERR_PTR are mismatched.
Fix it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-layerscape/ppa.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
index f38220dbc1e7..53e73f6a581f 100644
--- a/arch/arm/mach-layerscape/ppa.c
+++ b/arch/arm/mach-layerscape/ppa.c
@@ -76,7 +76,7 @@ static int ppa_init(void *ppa, size_t ppa_size, void *sec_firmware_addr)
 	conf = fit_open_configuration(fit, NULL);
 	if (IS_ERR(conf)) {
 		pr_err("Cannot open default config in ppa FIT image: %pe\n", conf);
-		ret = PTR_ERR(fit);
+		ret = PTR_ERR(conf);
 		goto err;
 	}
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
