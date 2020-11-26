Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kiM3o-0007nY-OO
 for barebox@lists.infradead.org; Thu, 26 Nov 2020 18:32:07 +0000
Received: from geraet.fritz.box (unknown [87.123.103.207])
 (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 521731BF20A
 for <barebox@lists.infradead.org>; Thu, 26 Nov 2020 18:32:01 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 26 Nov 2020 19:31:53 +0100
Message-Id: <20201126183154.348024-3-ahmad@a3f.at>
In-Reply-To: <20201126183154.348024-1-ahmad@a3f.at>
References: <20201126183154.348024-1-ahmad@a3f.at>
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
Subject: [PATCH 3/4] commands: nv: pass empty string for nv
To: barebox@lists.infradead.org

Setting a variable via the nv command results in the call chain
nvar_add() -> nv_save() -> __nv_save().

__nv_save isn't supposed to be called with val=NULL argument however:

	dprintf(fd, "%s", val);

Avoid this from happening by translating NULL into the empty string.
This aligns nv with the behavior of hush and setenv (but not global,
this will need to be looked at separately).

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/nv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/commands/nv.c b/commands/nv.c
index fa865811dce2..a1cff08ee463 100644
--- a/commands/nv.c
+++ b/commands/nv.c
@@ -59,6 +59,8 @@ static int do_nv(int argc, char *argv[])
 		if (value) {
 			*value = 0;
 			value++;
+		} else {
+			value = "";
 		}
 
 		if (do_remove) {
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
