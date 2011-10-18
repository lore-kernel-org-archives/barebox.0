Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo1.mail-out.ovh.net ([178.32.108.172]
	helo=mo1.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RGBDT-000393-2t
	for barebox@lists.infradead.org; Tue, 18 Oct 2011 15:04:31 +0000
Received: from mail425.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo1.mail-out.ovh.net (Postfix) with SMTP id D855B100C0FC
	for <barebox@lists.infradead.org>;
	Tue, 18 Oct 2011 17:06:17 +0200 (CEST)
Date: Tue, 18 Oct 2011 16:39:46 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111018143946.GA31716@game.jcrosoft.org>
References: <1318939019-32713-1-git-send-email-s.hauer@pengutronix.de>
	<1318939019-32713-2-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1318939019-32713-2-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/4] initial libfdt support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 13:56 Tue 18 Oct     , Sascha Hauer wrote:
> vanilla libfdt 1.3.0 from the dtc git:
> 
> git://git.jdl.com/software/dtc.git
> 
> Only small adjustments to compile with barebox
we the previous one hust this patch would have allow to compile in Barebox
IIRC
    libfdt: use linux/types.h for uintptr_t

    Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/libfdt_env.h |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/include/libfdt_env.h b/include/libfdt_env.h
index 449bf60..e83aa96 100644
--- a/include/libfdt_env.h
+++ b/include/libfdt_env.h
@@ -1,8 +1,7 @@
 #ifndef _LIBFDT_ENV_H
 #define _LIBFDT_ENV_H

-#include <stddef.h>
-#include <stdint.h>
+#include <linux/types.h>
 #include <string.h>

 #define _B(n)  ((unsigned long long)((uint8_t *)&x)[n])

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
