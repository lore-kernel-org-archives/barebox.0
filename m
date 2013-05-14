Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcNm7-0002G5-9F
 for barebox@lists.infradead.org; Tue, 14 May 2013 22:32:52 +0000
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Wed, 15 May 2013 00:32:14 +0200
Message-Id: <1368570745-23348-2-git-send-email-thomas.petazzoni@free-electrons.com>
In-Reply-To: <1368570745-23348-1-git-send-email-thomas.petazzoni@free-electrons.com>
References: <1368570745-23348-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCH 01/12] scripts/kwbimage: add a new function
 image_count_options()
To: barebox@lists.infradead.org
Cc: Lior Amsalem <alior@marvell.com>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

This function returns the number of configuration elements that match
a given type. Will be used to do some sanity checking of the number of
options.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 scripts/kwbimage.c |   14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
index 14b35e7..0d5dcac 100644
--- a/scripts/kwbimage.c
+++ b/scripts/kwbimage.c
@@ -259,6 +259,20 @@ image_find_option(struct image_cfg_element *image_cfg,
 	return NULL;
 }
 
+static unsigned int
+image_count_options(struct image_cfg_element *image_cfg,
+		    int cfgn, unsigned int optiontype)
+{
+	int i;
+	unsigned int count = 0;
+
+	for (i = 0; i < cfgn; i++)
+		if (image_cfg[i].type == optiontype)
+			count++;
+
+	return count;
+}
+
 /*
  * Compute a 8-bit checksum of a memory area. This algorithm follows
  * the requirements of the Marvell SoC BootROM specifications.
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
