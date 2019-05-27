Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCO5-0001n2-Mt
 for barebox@lists.infradead.org; Mon, 27 May 2019 09:57:57 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hVCO3-00021x-KX
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:47 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hVCO2-0003Cj-Q5
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 May 2019 11:57:29 +0200
Message-Id: <20190527095744.5923-4-a.fatoum@pengutronix.de>
In-Reply-To: <20190527095744.5923-1-a.fatoum@pengutronix.de>
References: <20190527095744.5923-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 03/18] scripts: extract symbol offsets using target, not host,
 nm
To: barebox@lists.infradead.org

The nm(1) on other platforms may be compiled without ELF support,
thus use the cross toolchain's nm instead if possible.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/check_size            | 2 +-
 scripts/extract_symbol_offset | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/check_size b/scripts/check_size
index 54f02a63c5ef..8530435d3a1b 100755
--- a/scripts/check_size
+++ b/scripts/check_size
@@ -5,7 +5,7 @@ file="$2"
 max="$3"
 
 # extract symbol offset from file, remove leading zeros
-ofs=$(nm -t d $file | grep "$symbol" | cut -d ' ' -f1 | sed "s/^[0]*//")
+ofs=$(${CROSS_COMPILE}nm -t d $file | grep "$symbol" | cut -d ' ' -f1 | sed "s/^[0]*//")
 
 if [ -z "${ofs}" ]; then
 	echo "symbol $symbol not found in $file"
diff --git a/scripts/extract_symbol_offset b/scripts/extract_symbol_offset
index 1a1260f526e0..78b866830e56 100755
--- a/scripts/extract_symbol_offset
+++ b/scripts/extract_symbol_offset
@@ -4,7 +4,7 @@ symbol="$1"
 file="$2"
 
 # extract symbol offset from file, remove leading zeros
-ofs=$(nm -t d $file | grep "$symbol" | cut -d ' ' -f1 | sed "s/^[0]*//")
+ofs=$(${CROSS_COMPILE}nm -t d $file | grep "$symbol" | cut -d ' ' -f1 | sed "s/^[0]*//")
 
 if [ -z "${ofs}" ]; then
 	echo "symbol $symbol not found in $file"
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
