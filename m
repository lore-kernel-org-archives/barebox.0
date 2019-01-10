Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghSQ0-0003S6-GF
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 04:58:23 +0000
Received: by mail-pg1-x544.google.com with SMTP id j10so4331200pga.1
 for <barebox@lists.infradead.org>; Wed, 09 Jan 2019 20:58:12 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Jan 2019 20:57:33 -0800
Message-Id: <20190110045739.19399-16-andrew.smirnov@gmail.com>
In-Reply-To: <20190110045739.19399-1-andrew.smirnov@gmail.com>
References: <20190110045739.19399-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 15/21] PCI: Drop "name" from struct pci_bus
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

This field is not used by Barebox. Remove it. No functional change
intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/linux/pci.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/linux/pci.h b/include/linux/pci.h
index d7a0e2babc..a519a9dc81 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -137,8 +137,6 @@ struct pci_bus {
 	unsigned char	primary;	/* number of primary bridge */
 	unsigned char	secondary;	/* number of secondary bridge */
 	unsigned char	subordinate;	/* max number of subordinate buses */
-
-	char		name[48];
 };
 
 /* Low-level architecture-dependent routines */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
