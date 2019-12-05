Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.zeus.flokli.de ([88.198.15.28] helo=zeus.flokli.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icyx4-0008JU-Dn
 for barebox@lists.infradead.org; Thu, 05 Dec 2019 21:46:23 +0000
From: Florian Klink <flokli@flokli.de>
Date: Thu,  5 Dec 2019 22:45:48 +0100
Message-Id: <20191205214550.21212-2-flokli@flokli.de>
In-Reply-To: <20191205214550.21212-1-flokli@flokli.de>
References: <20191203091202.cuamocvdyxtr5b6u@pengutronix.de>
 <20191205214550.21212-1-flokli@flokli.de>
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
Subject: [PATCH v2 2/4] dts/scripts: use #!/usr/bin/env bash shebang instead
 of #!/bin/bash
To: barebox@lists.infradead.org
Cc: Florian Klink <flokli@flokli.de>

Some distributions might not have bash in /bin, but in $PATH.

Using #!/usr/bin/env bash solves this, and is consistent with how the
perl and python shebangs look like in the tree.
---
 dts/scripts/cronjob              | 2 +-
 dts/scripts/index-filter.sh      | 2 +-
 dts/scripts/merge-new-release.sh | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/dts/scripts/cronjob b/dts/scripts/cronjob
index ccdbc0607..b7511e425 100755
--- a/dts/scripts/cronjob
+++ b/dts/scripts/cronjob
@@ -1,4 +1,4 @@
-#!/bin/bash
+#!/usr/bin/env bash
 
 set -e
 
diff --git a/dts/scripts/index-filter.sh b/dts/scripts/index-filter.sh
index 961085502..c301fcea1 100755
--- a/dts/scripts/index-filter.sh
+++ b/dts/scripts/index-filter.sh
@@ -1,4 +1,4 @@
-#!/bin/bash
+#!/usr/bin/env bash
 
 set -e
 set -o pipefail
diff --git a/dts/scripts/merge-new-release.sh b/dts/scripts/merge-new-release.sh
index a2763c69b..554b97b8e 100755
--- a/dts/scripts/merge-new-release.sh
+++ b/dts/scripts/merge-new-release.sh
@@ -1,4 +1,4 @@
-#!/bin/bash
+#!/usr/bin/env bash
 
 case $1 in
     v*-dts) ;;
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
