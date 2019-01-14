Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1givZ3-0007vT-Od
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 06:17:42 +0000
Received: by mail-pf1-x443.google.com with SMTP id y126so9863289pfb.4
 for <barebox@lists.infradead.org>; Sun, 13 Jan 2019 22:17:37 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 13 Jan 2019 22:17:03 -0800
Message-Id: <20190114061709.13948-11-andrew.smirnov@gmail.com>
In-Reply-To: <20190114061709.13948-1-andrew.smirnov@gmail.com>
References: <20190114061709.13948-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 10/16] PCI: Drop "name" from struct pci_bus
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Sam Ravnborg <sam@ravnborg.org>

This field is not used by Barebox. Remove it. No functional change
intended.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
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
