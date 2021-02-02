Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l71Xy-0004S5-A1
 for barebox@lists.infradead.org; Tue, 02 Feb 2021 19:41:12 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Feb 2021 20:40:54 +0100
Message-Id: <20210202194059.9466-2-a.fatoum@pengutronix.de>
In-Reply-To: <20210202194059.9466-1-a.fatoum@pengutronix.de>
References: <20210202194059.9466-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/7] ARM: <asm/io.h>: define macros for I/O memcpy/memset
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

<asm-generic/io.h> expects architectures to define memcpy_toio,
memcpy_fromio and memset_io as macros as it checks for their existence
with #ifndef. Only ARM defines an own implementation, but does so
as function declaration. Add the missing macros.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
 - reordered commit to resolve intermittent breakage
---
 arch/arm/include/asm/io.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/include/asm/io.h b/arch/arm/include/asm/io.h
index 072b47317c03..b442a37b9c1d 100644
--- a/arch/arm/include/asm/io.h
+++ b/arch/arm/include/asm/io.h
@@ -3,6 +3,10 @@
 
 #define	IO_SPACE_LIMIT	0
 
+#define memcpy_fromio memcpy_fromio
+#define memcpy_toio memcpy_toio
+#define memset_io memset_io
+
 #include <asm-generic/io.h>
 #include <asm-generic/bitio.h>
 
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
