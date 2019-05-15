Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqLJ-0005d8-CK
 for barebox@lists.infradead.org; Wed, 15 May 2019 09:37:00 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 May 2019 11:36:41 +0200
Message-Id: <20190515093644.9691-2-a.fatoum@pengutronix.de>
In-Reply-To: <20190515093644.9691-1-a.fatoum@pengutronix.de>
References: <20190515093644.9691-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 1/4] LICENSES: remove empty other, exceptions directories
To: barebox@lists.infradead.org
Cc: Geordan Neukum <gneukum1@gmail.com>

These directories were originally added as they were required for
spdxcheck.py, which upstream checkpatch.pl invokes.

As git doesn't index empty directories, they contained empty
.gitignore files. As these files were 0 bytes, make distclean now
removes them.

We already patch checkpatch.pl, so we will just patch spdxcheck.py
when we add it and get rid of these directories.
They can be added back should the need arise.

Reported-by: Geordan Neukum <gneukum1@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 LICENSES/exceptions/.gitignore | 0
 LICENSES/other/.gitignore      | 0
 2 files changed, 0 insertions(+), 0 deletions(-)
 delete mode 100644 LICENSES/exceptions/.gitignore
 delete mode 100644 LICENSES/other/.gitignore

diff --git a/LICENSES/exceptions/.gitignore b/LICENSES/exceptions/.gitignore
deleted file mode 100644
index e69de29bb2d1..000000000000
diff --git a/LICENSES/other/.gitignore b/LICENSES/other/.gitignore
deleted file mode 100644
index e69de29bb2d1..000000000000
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
