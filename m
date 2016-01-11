Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aIXHz-0004of-ML
 for barebox@lists.infradead.org; Mon, 11 Jan 2016 07:53:20 +0000
Date: Mon, 11 Jan 2016 08:52:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160111075257.GK13058@pengutronix.de>
References: <1452251635-14689-1-git-send-email-s.hauer@pengutronix.de>
 <1452251635-14689-3-git-send-email-s.hauer@pengutronix.de>
 <CAHQ1cqE_vUNr-9Eh_TO8yr-19pt2THbSRUdGrtMOkJTdCzO=gA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqE_vUNr-9Eh_TO8yr-19pt2THbSRUdGrtMOkJTdCzO=gA@mail.gmail.com>
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
Subject: Re: [PATCH 2/8] barebox remote control
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Sun, Jan 10, 2016 at 06:10:12PM -0800, Andrey Smirnov wrote:
> On Fri, Jan 8, 2016 at 3:13 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > +#include <ratp.h>
> > +#include <command.h>
> > +#include <byteorder.h>
> > +#include <environment.h>
> > +#include <kfifo.h>
> > +#include <poller.h>
> > +#include <linux/sizes.h>
> > +#include <ratp_bb.h>
> 
> It looks like this file is missing from the patchset
> 

Sorry. Here comes:

Sascha

-----------------------------8<-------------------

From e4bea815fad4cecb14cf8361f50cd10ab6e3ebb1 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Jan 2016 08:48:53 +0100
Subject: [PATCH] fixup! barebox remote control

---
 include/ratp_bb.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 include/ratp_bb.h

diff --git a/include/ratp_bb.h b/include/ratp_bb.h
new file mode 100644
index 0000000..2885731
--- /dev/null
+++ b/include/ratp_bb.h
@@ -0,0 +1,14 @@
+#ifndef __RATP_BB_H
+#define __RATP_BB_H
+
+struct ratp_bb_pkt {
+	struct list_head list;
+
+	unsigned int len;
+	uint8_t data[];
+};
+
+int barebox_ratp_fs_call(struct ratp_bb_pkt *tx, struct ratp_bb_pkt **rx);
+int barebox_ratp_fs_mount(const char *path);
+
+#endif /* __RATP_BB_H */
-- 
2.6.4



-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
