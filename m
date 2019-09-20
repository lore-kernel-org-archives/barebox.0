Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBDoM-0001P3-Bp
 for barebox@lists.infradead.org; Fri, 20 Sep 2019 07:58:39 +0000
Received: from geraet.fritz.box (muedsl-82-207-195-051.citykom.de
 [82.207.195.51]) (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 41DD620000A
 for <barebox@lists.infradead.org>; Fri, 20 Sep 2019 07:58:21 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 20 Sep 2019 09:58:10 +0200
Message-Id: <20190920075813.22471-1-ahmad@a3f.at>
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
Subject: [PATCH v1 1/4] console: disallow opening for writing when no write
 method defined
To: barebox@lists.infradead.org

Some consoles, like the input console (usually /dev/cs0), don't feature
a puts or putc callback. Trying to echo out of them would thus crash:

	barebox@Embest MarS Board i.MX6Dual:/ echo -a /dev/cs0
	prefetch abort
	pc : [<00000004>]    lr : [<4fd05071>]
	WARNING: [<...>] (fops_write+0xd/0x10)
	WARNING: [<...>] (devfs_write+0x21/0x2a)
	WARNING: [<...>] (__write+0xcb/0xf0)
	WARNING: [<...>] (write+0x2d/0x68)
	WARNING: [<...>] (dputc+0x31/0x34)
	WARNING: [<...>] (do_echo+0xcb/0x144)

Fix this by only allowing open(.., O_WRONLY) or open(..., O_RDWR) when
puts is defined. Consoles defining putc are covered by this as well as
those have putc-calling __console_puts assigned as their puts when they
are registered. Now echo -a /dev/cs0 would yield:

	open: Operation not permitted

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/console.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/console.c b/common/console.c
index d04aae58f96e..e6e029848d41 100644
--- a/common/console.c
+++ b/common/console.c
@@ -272,6 +272,9 @@ static int fops_open(struct cdev *cdev, unsigned long flags)
 {
 	struct console_device *priv = cdev->priv;
 
+	if ((flags & (O_WRONLY | O_RDWR)) && !priv->puts )
+		return -EPERM;
+
 	return console_open(priv);
 }
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
