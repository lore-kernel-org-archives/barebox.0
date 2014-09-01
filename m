Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XON0v-0004bO-Fz
 for barebox@lists.infradead.org; Mon, 01 Sep 2014 08:31:02 +0000
Date: Mon, 1 Sep 2014 10:30:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140901083033.GF5352@pengutronix.de>
References: <1409212205.4914.6.camel@lws-gamez.phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1409212205.4914.6.camel@lws-gamez.phytec.de>
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
Subject: Re: [BUG] readline history
To: Teresa Gamez <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

Hi Teresa,

On Thu, Aug 28, 2014 at 09:50:05AM +0200, Teresa Gamez wrote:
> Hello Sascha,
> 
> I noticed a bug on the latest master.
> When no history is present and I hit the arrow up key, I get:
> 
> unable to handle NULL pointer dereference at address 0x00000001
> pc : [<9fe243ba>]    lr : [<9fe268cf>]
> sp : 9ffff9d0  ip : 00000016  fp : 00000002
> r10: 00000001  r9 : 9fe549dc  r8 : 9fe65d08
> r7 : 00000400  r6 : 00000001  r5 : 00000000  r4 : 9fe66258
> r3 : 00000000  r2 : 00000000  r1 : 00000001  r0 : 9fe66258
> Flags: nZCv  IRQs off  FIQs on  Mode SVC_32
> [<9fe243ba>] (strcpy+0xa/0xe) from [<9fe268cf>] (readline+0x363/0x4e0)
> [<9fe268cf>] (readline+0x363/0x4e0) from [<9fe05469>] (file_get
> +0x49/0x110)
> 
> I could bisect it to this commit:
> 
> 
> ada160a34a1ec8421d5bb7b9dd746294668a5130 is the first bad commit
> commit ada160a34a1ec8421d5bb7b9dd746294668a5130
> Author: Sascha Hauer <s.hauer@pengutronix.de>
> Date:   Tue Jul 29 11:54:26 2014 +0200

Damned. While working on that patch I had exactly this problem and
thought I tested this case. Apparantly I didn't :(

The following should fix this:

Sascha

From 7fd0d972f71610c25276ca387164b1fd71fb74be Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 1 Sep 2014 10:21:44 +0200
Subject: [PATCH] readline: Fix history prev when history is empty

We cannot use list_entry() on an empty list. Without history
we have to return an empty line. This fixes a crash when the
cursor up button is pressed and no command has been entered
previously. Broken since:

commit ada160a34a1ec8421d5bb7b9dd746294668a5130
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Tue Jul 29 11:54:26 2014 +0200

    readline: reimplement history functions

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reported-by: Teresa Gamez <t.gamez@phytec.de>
---
 lib/readline.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/lib/readline.c b/lib/readline.c
index b70bca8..e855abd 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -68,6 +68,9 @@ static const char *hist_prev(void)
 	struct history *history;
 
 	if (history_current->prev == &history_list) {
+		if (list_empty(&history_list))
+			return "";
+
 		history = list_entry(history_current, struct history, list);
 		getcmd_cbeep();
 		return history->line;
-- 
2.1.0

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
