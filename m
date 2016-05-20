Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b3cx4-00035N-EJ
 for barebox@lists.infradead.org; Fri, 20 May 2016 05:26:23 +0000
Received: by mail-lf0-x242.google.com with SMTP id 78so3172869lfq.0
 for <barebox@lists.infradead.org>; Thu, 19 May 2016 22:26:01 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 20 May 2016 08:25:51 +0300
Message-Id: <1463721951-5621-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2] imd: make it work on big-endian machines
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

The commit

    commit 5e335773e0814173b40873a891964a7858d64688
    Author: Sascha Hauer <s.hauer@pengutronix.de>
    Date:   Tue Mar 29 10:06:46 2016 +0200

        imd: use struct imd_header * as argument

introduces additional imd type checks like this

    if (!imd_is_string(imd->type))
           return NULL;

These checks work incorrectly on any big-endian machine
because the imd->type field needs addition conversion
to little-endian byteorder before use.

Here is the imd command output on big-endian qemu-malta:

    barebox:/ imd /dev/nor0.barebox
    release: <NULL>
    build: <NULL>

This patch fixes the problem by adding necessary conversion
via imd_read_type().

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---

Changes since v1:

  * fix typos in the commit message.

 common/imd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/imd.c b/common/imd.c
index 159b73a..a8a10fc 100644
--- a/common/imd.c
+++ b/common/imd.c
@@ -212,7 +212,7 @@ const char *imd_string_data(struct imd_header *imd, int index)
 	int len = imd_read_length(imd);
 	char *p = (char *)(imd + 1);
 
-	if (!imd_is_string(imd->type))
+	if (!imd_is_string(imd_read_type(imd)))
 		return NULL;
 
 	for (i = 0; total < len; total += l, p += l) {
@@ -239,7 +239,7 @@ char *imd_concat_strings(struct imd_header *imd)
 	char *str;
 	char *data = (char *)(imd + 1);
 
-	if (!imd_is_string(imd->type))
+	if (!imd_is_string(imd_read_type(imd)))
 		return NULL;
 
 	str = malloc(len);
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
