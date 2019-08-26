Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr750082.outbound.protection.outlook.com
 ([40.107.75.82] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2LCB-0005eT-BB
 for barebox@lists.infradead.org; Mon, 26 Aug 2019 20:02:32 +0000
From: Cory Tusar <Cory.Tusar@zii.aero>
Date: Mon, 26 Aug 2019 20:02:25 +0000
Message-ID: <20190826200207.1009-1-cory.tusar@zii.aero>
Content-Language: en-US
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
Subject: [PATCH] ARM: zii-vf610-dev: Use CTRL-C as autoboot abort
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: Chris Healy <Chris.Healy@zii.aero>

This brings the various VF610-based units in line with other ZII
platforms.

Signed-off-by: Cory Tusar <cory.tusar@zii.aero>
---
 .../zii-vf610-dev/defaultenv-zii-vf610-dev/nv/autoboot_abort_key | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/nv/autoboot_abort_key

diff --git a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/nv/autoboot_abort_key b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/nv/autoboot_abort_key
new file mode 100644
index 000000000..55920c9a5
--- /dev/null
+++ b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/nv/autoboot_abort_key
@@ -0,0 +1 @@
+ctrl-c
\ No newline at end of file
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
