Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFBeq-00083V-BZ
 for barebox@lists.infradead.org; Tue, 01 Oct 2019 06:29:15 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue,  1 Oct 2019 08:28:52 +0200
Message-Id: <20191001062853.1256-2-ahmad@a3f.at>
In-Reply-To: <20191001062853.1256-1-ahmad@a3f.at>
References: <20191001062853.1256-1-ahmad@a3f.at>
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
Subject: [PATCH 1/2] lib: fdt: define INT32_MAX for in-barebox use
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

The upcoming v1.5.1 version of libfdt adds a dependency on the C99
INT32_MAX symbol.
This is ok for use in the host tool, but libfdt can also be embedded
into barebox, where it would fail as we don't define this anywhere.

Fix this by providing an appropriate definition.

Reported-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/libfdt_env.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/libfdt_env.h b/include/linux/libfdt_env.h
index edb0f0c30904..bac4670d6d7e 100644
--- a/include/linux/libfdt_env.h
+++ b/include/linux/libfdt_env.h
@@ -16,4 +16,6 @@ typedef __be64 fdt64_t;
 #define fdt64_to_cpu(x) be64_to_cpu(x)
 #define cpu_to_fdt64(x) cpu_to_be64(x)
 
+#define INT32_MAX	2147483647
+
 #endif /* LIBFDT_ENV_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
