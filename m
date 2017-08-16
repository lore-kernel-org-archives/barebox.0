Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dhxQ7-0002Xd-Fo
 for barebox@lists.infradead.org; Wed, 16 Aug 2017 12:27:36 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <jbe@pengutronix.de>) id 1dhxPi-0003JR-7y
 for barebox@lists.infradead.org; Wed, 16 Aug 2017 14:27:10 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <jbe@pengutronix.de>) id 1dhxPi-00061j-0T
 for barebox@lists.infradead.org; Wed, 16 Aug 2017 14:27:10 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Wed, 16 Aug 2017 14:27:07 +0200
Message-Id: <20170816122709.23129-1-jbe@pengutronix.de>
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
Subject: [PATCH 1/3] state: provide an error message when an error occurs
To: barebox@lists.infradead.org

A simple typo makes the state framework fail, but without an error
message the developer is lost in the dark.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 common/state/state.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/state/state.c b/common/state/state.c
index 121ba0c6d..fc822b21b 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -240,6 +240,7 @@ static int state_convert_node_variable(struct state *state,
 
 	vtype = state_find_type_by_name(type_name);
 	if (!vtype) {
+		dev_dbg(&state->dev, "Error: invalid variable type '%s'\n", type_name);
 		ret = -ENOENT;
 		goto out_free;
 	}
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
