Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.zeus.flokli.de ([88.198.15.28] helo=zeus.flokli.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idCnP-0006Dm-PV
 for barebox@lists.infradead.org; Fri, 06 Dec 2019 12:33:21 +0000
From: Florian Klink <flokli@flokli.de>
Date: Fri,  6 Dec 2019 13:32:52 +0100
Message-Id: <20191206123255.2537-2-flokli@flokli.de>
In-Reply-To: <20191206123255.2537-1-flokli@flokli.de>
References: <20191206113100.yeop7bqjvolfujl2@pengutronix.de>
 <20191206123255.2537-1-flokli@flokli.de>
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
Subject: [PATCH v3 1/4] scripts: use #!/usr/bin/env bash shebang instead of
 #!/bin/bash
To: barebox@lists.infradead.org
Cc: Florian Klink <flokli@flokli.de>

Some distributions might not have bash in /bin, but in $PATH.

Using #!/usr/bin/env bash solves this, and is consistent with how the
perl and python shebangs look like in the tree.

Signed-off-by: Florian Klink <flokli@flokli.de>
---
 scripts/canon-a1100-image        | 4 +++-
 scripts/check_size               | 2 +-
 scripts/dfuboot.sh               | 2 +-
 scripts/extract_symbol_offset    | 2 +-
 scripts/gen-dtb-s                | 2 +-
 scripts/genenv                   | 2 +-
 scripts/socfpga_get_sequencer    | 2 +-
 scripts/socfpga_import_preloader | 2 +-
 scripts/socfpga_xml_to_config.sh | 2 +-
 9 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/scripts/canon-a1100-image b/scripts/canon-a1100-image
index 6c08d7493..17fd47373 100755
--- a/scripts/canon-a1100-image
+++ b/scripts/canon-a1100-image
@@ -1,4 +1,6 @@
-#!/bin/bash -e
+#!/usr/bin/env bash
+
+set -e
 
 IFILE=$1
 OFILE=$2
diff --git a/scripts/check_size b/scripts/check_size
index 8530435d3..76608eccc 100755
--- a/scripts/check_size
+++ b/scripts/check_size
@@ -1,4 +1,4 @@
-#!/bin/bash
+#!/usr/bin/env bash
 
 symbol="$1"
 file="$2"
diff --git a/scripts/dfuboot.sh b/scripts/dfuboot.sh
index 524113b61..9847579ce 100755
--- a/scripts/dfuboot.sh
+++ b/scripts/dfuboot.sh
@@ -1,4 +1,4 @@
-#!/bin/bash
+#!/usr/bin/env bash
 
 DEVICETREE=
 KERNEL=
diff --git a/scripts/extract_symbol_offset b/scripts/extract_symbol_offset
index 78b866830..d0ea22434 100755
--- a/scripts/extract_symbol_offset
+++ b/scripts/extract_symbol_offset
@@ -1,4 +1,4 @@
-#!/bin/bash
+#!/usr/bin/env bash
 
 symbol="$1"
 file="$2"
diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
index b2dd253c2..0649247f9 100755
--- a/scripts/gen-dtb-s
+++ b/scripts/gen-dtb-s
@@ -1,4 +1,4 @@
-#!/bin/bash
+#!/usr/bin/env bash
 
 name=$1
 dtb=$2
diff --git a/scripts/genenv b/scripts/genenv
index 5ebe69963..454f2327b 100755
--- a/scripts/genenv
+++ b/scripts/genenv
@@ -1,4 +1,4 @@
-#!/bin/bash
+#!/usr/bin/env bash
 
 # Generate the default environment file from a list of directories
 # usage: genenv <basedir> <objdir> <target> <dir>...
diff --git a/scripts/socfpga_get_sequencer b/scripts/socfpga_get_sequencer
index 36f67498b..5405bfa6b 100755
--- a/scripts/socfpga_get_sequencer
+++ b/scripts/socfpga_get_sequencer
@@ -1,4 +1,4 @@
-#!/bin/bash
+#!/usr/bin/env bash
 
 if [ "$#" -lt "2" ]
 then
diff --git a/scripts/socfpga_import_preloader b/scripts/socfpga_import_preloader
index 6c748fadb..23e3c380d 100755
--- a/scripts/socfpga_import_preloader
+++ b/scripts/socfpga_import_preloader
@@ -1,4 +1,4 @@
-#!/bin/bash
+#!/usr/bin/env bash
 
 if [ "$#" -lt "2" ]
 then
diff --git a/scripts/socfpga_xml_to_config.sh b/scripts/socfpga_xml_to_config.sh
index 7e22ebb9e..3bb0dd283 100755
--- a/scripts/socfpga_xml_to_config.sh
+++ b/scripts/socfpga_xml_to_config.sh
@@ -1,4 +1,4 @@
-#!/bin/bash
+#!/usr/bin/env bash
 
 ## TODO:
 ## - read in mpuclk and nocclk, must be calculated by hand at the moment
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
