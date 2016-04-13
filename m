Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqSHT-0005Jc-65
 for barebox@lists.infradead.org; Wed, 13 Apr 2016 21:25:00 +0000
Received: by mail-wm0-x243.google.com with SMTP id a140so17587166wma.2
 for <barebox@lists.infradead.org>; Wed, 13 Apr 2016 14:24:38 -0700 (PDT)
Received: from sun (min31-1-82-66-70-105.fbx.proxad.net. [82.66.70.105])
 by smtp.gmail.com with ESMTPSA id u3sm29890080wmg.15.2016.04.13.14.24.36
 for <barebox@lists.infradead.org> (version=TLSv1/SSLv3 cipher=OTHER);
 Wed, 13 Apr 2016 14:24:36 -0700 (PDT)
Date: Wed, 13 Apr 2016 23:24:34 +0200
From: Miquel Raynal <raynal.miquel@gmail.com>
Message-ID: <20160413212434.GA4512@sun>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH] i2c_probe: fix wrong start and stop addresses
To: barebox@lists.infradead.org

This patch fixes the wrong range of i2c addresses used by the i2c_probe
command when a stop address is provided. In this case the start address
(startaddr) was taking the value of the stop address and the stop address
(stopaddr) was always set to its default value.

Signed-off-by: Miquel Raynal <raynal.miquel@gmail.com>
---
 commands/i2c.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/i2c.c b/commands/i2c.c
index f4ffc99..e6750e3 100644
--- a/commands/i2c.c
+++ b/commands/i2c.c
@@ -55,7 +55,7 @@ static int do_i2c_probe(int argc, char *argv[])
 	if (argc > 2)
 		startaddr = simple_strtol(argv[2], NULL, 0);
 	if (argc > 3)
-		startaddr = simple_strtol(argv[3], NULL, 0);
+		stopaddr = simple_strtol(argv[3], NULL, 0);
 
 
 	if (startaddr > stopaddr)
-- 
1.7.10.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
