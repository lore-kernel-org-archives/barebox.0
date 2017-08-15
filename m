Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dhcBU-0002qJ-T6
 for barebox@lists.infradead.org; Tue, 15 Aug 2017 13:47:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <jbe@pengutronix.de>) id 1dhcB6-0007jD-3h
 for barebox@lists.infradead.org; Tue, 15 Aug 2017 15:46:40 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <jbe@pengutronix.de>) id 1dhcB5-0003za-QK
 for barebox@lists.infradead.org; Tue, 15 Aug 2017 15:46:39 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue, 15 Aug 2017 15:46:33 +0200
Message-Id: <20170815134636.21236-5-jbe@pengutronix.de>
In-Reply-To: <20170815134636.21236-1-jbe@pengutronix.de>
References: <20170815134636.21236-1-jbe@pengutronix.de>
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
Subject: [PATCH 4/7] bootchooser: allow an empty namespace
To: barebox@lists.infradead.org

The bootchooser's documentation states the 'namespace' for the state
storage backend is optional. This change makes it really optional to allow
a flat state variable set definition for the 'bootchooser' as well.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 common/bootchooser.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/common/bootchooser.c b/common/bootchooser.c
index 69d980d6f..83b15e0f7 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -367,12 +367,10 @@ struct bootchooser *bootchooser_get(void)
 			char *state_devname;
 
 			delim = strchr(state_prefix, '.');
-			if (!delim) {
-				pr_err("state_prefix '%s' has invalid format\n",
-				       state_prefix);
-				goto err;
-			}
-			state_devname = xstrndup(state_prefix, delim - state_prefix);
+			if (delim)
+				state_devname = xstrndup(state_prefix, delim - state_prefix);
+			else
+				state_devname = xstrdup(state_prefix);
 			bc->state_prefix = xstrdup(state_prefix);
 			bc->state = state_by_name(state_devname);
 			if (!bc->state) {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
