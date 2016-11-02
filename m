Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c1qNv-00012x-1c
 for barebox@lists.infradead.org; Wed, 02 Nov 2016 07:55:00 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id F2C04A0041A
 for <barebox@lists.infradead.org>; Wed,  2 Nov 2016 08:55:04 +0100 (CET)
From: Stefan Lengfeld <s.lengfeld@phytec.de>
Date: Wed, 2 Nov 2016 08:54:29 +0100
Message-Id: <1478073270-3527-3-git-send-email-s.lengfeld@phytec.de>
In-Reply-To: <1478073270-3527-1-git-send-email-s.lengfeld@phytec.de>
References: <1478073270-3527-1-git-send-email-s.lengfeld@phytec.de>
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
Subject: [PATCH upstream 3/4] state: fix state is not saved when string
 variable is changed
To: barebox@lists.infradead.org

The dirty flag was not set properly.

Signed-off-by: Stefan Lengfeld <s.lengfeld@phytec.de>
---
 common/state/state_variables.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/state/state_variables.c b/common/state/state_variables.c
index 1e37856..fd072a0 100644
--- a/common/state/state_variables.c
+++ b/common/state/state_variables.c
@@ -383,7 +383,7 @@ static int state_string_set(struct param_d *p, void *priv)
 	if (ret)
 		return ret;
 
-	return state_set_dirty(p, sv->state);
+	return state_set_dirty(p, sv);
 }
 
 static int state_string_get(struct param_d *p, void *priv)
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
