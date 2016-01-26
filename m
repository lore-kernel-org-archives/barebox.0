Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qg0-x22c.google.com ([2607:f8b0:400d:c04::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aO5Nr-00083h-OC
 for barebox@lists.infradead.org; Tue, 26 Jan 2016 15:18:20 +0000
Received: by mail-qg0-x22c.google.com with SMTP id b35so140523996qge.0
 for <barebox@lists.infradead.org>; Tue, 26 Jan 2016 07:17:59 -0800 (PST)
MIME-Version: 1.0
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Tue, 26 Jan 2016 16:17:39 +0100
Message-ID: <CAGm1_ksgdg933-MmgmX7a3H2m5HPf-y+pdZybX9+ahLEA_J+tg@mail.gmail.com>
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
Subject: Linux headers
To: barebox <barebox@lists.infradead.org>

AFAIK include/linux/barebox-wrapper.h was introduced to simplify Linux
driver porting. During my current effort to port SquashFS driver I had
to repeatedly remove such includes like:

#include <linux/vfs.h>
#include <linux/slab.h>
#include <linux/vmalloc.h>
#include <linux/sched.h>
#include <linux/spinlock.h>
#include <linux/wait.h>

and so on.

Would it be better to provide such headers even if they would almost
always include dummy code? Though it would pollute the include folder
somehow, but it will be easier to port/sync Linux drivers and it will
help to preserve the structure of this drivers.

What do you think about this?

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
