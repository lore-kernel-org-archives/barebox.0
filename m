Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Udy8Q-00005o-1z
 for barebox@lists.infradead.org; Sun, 19 May 2013 07:34:27 +0000
Date: Sun, 19 May 2013 09:34:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130519073403.GY32299@pengutronix.de>
References: <1368400146-30443-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1368400146-30443-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH] of: add ranges address translation for default bus
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Hi Sebastian,

On Mon, May 13, 2013 at 01:09:06AM +0200, Sebastian Hesselbarth wrote:
> This patch adds address translation for default bus types. It has been
> shamelessly ported from Linux device tree address translation with the
> following exceptions:
> - only default bus map and translate are supported
> - of_bus has not been ported
> - check for #size-cells > 0 has been removed
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

I just gave this one a test.

First of all you dropped 1:1 translation, see the attached fixup.

Then, since this code duplicates the majority of drivers/of/address.c,
would it make sense to move it to the same file in barebox aswell?

Sascha

8<---------------------------------------------------------
From bb502b1154a135f7aead65858ffa420f3d3e2df3 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 19 May 2013 09:28:56 +0200
Subject: [PATCH] fixup! of: add ranges address translation for default bus

Fix 1:1 translation using empty ranges property

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 5d449d1..7f3b76d 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -260,11 +260,21 @@ static int of_translate_one(struct device_node *parent,
 	unsigned int rlen;
 	int rone;
 	u64 offset = OF_BAD_ADDR;
+	struct property *prop = of_find_property(parent, rprop);
 
-	ranges = of_get_property(parent, rprop, &rlen);
-	if (!ranges)
+	if (!prop)
 		return 1;
 
+	rlen = prop->length;
+	ranges = prop->value;
+
+	if (rlen == 0) {
+		/* empty ranges; 1:1 translation */
+		offset = of_read_number(addr, na);
+		memset(addr, 0, pna * 4);
+		goto finish;
+	}
+
 	/* walk through ranges */
 	rlen /= 4;
 	rone = na + pna + ns;
@@ -277,6 +287,7 @@ static int of_translate_one(struct device_node *parent,
 		return 1;
 
 	memcpy(addr, ranges + na, 4 * pna);
+finish:
 	/* translate into parent address space */
 	return of_bus_default_translate(addr, offset, pna);
 }
-- 
1.8.2.rc2


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
