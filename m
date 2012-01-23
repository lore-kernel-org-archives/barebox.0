Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo3.mail-out.ovh.net ([46.105.57.200]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RpHMg-0005Cr-L9
 for barebox@lists.infradead.org; Mon, 23 Jan 2012 10:43:07 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 2A92EFFBDAA
 for <barebox@lists.infradead.org>; Mon, 23 Jan 2012 11:44:49 +0100 (CET)
Date: Mon, 23 Jan 2012 11:40:54 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120123104054.GR25622@game.jcrosoft.org>
References: <1327094703-6958-1-git-send-email-J.Kilb@phytec.de>
 <1327094703-6958-3-git-send-email-J.Kilb@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1327094703-6958-3-git-send-email-J.Kilb@phytec.de>
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
Subject: Re: [PATCH] ARM pca-a-l1: fix board_init
To: Juergen Kilb <J.Kilb@phytec.de>
Cc: barebox@lists.infradead.org

On 22:25 Fri 20 Jan     , Juergen Kilb wrote:
> board_init was moved to pure_initcall. broken since:
> 
> commit 0adce7ec683b4b325f51de4ac8892b32925d7ef8
> Author: Sascha Hauer <s.hauer@pengutronix.de>
> Date:   Sun Jan 15 21:11:17 2012 +0100
> 
>     ARM omap3: move board_init to pure_initcall
> 
>     board_init initializes the mux and sdram. For both there is no
>     need to configure this so early. Move the code to a pure_initcall
>     and remove the surrounding unneeded code.
> 
>     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>     Tested-by: Sanjeev Premi <premi@ti.com>
> 
> Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
can't you fix all in one patch?
> ---
>  arch/arm/boards/phycard-a-l1/pca-a-l1.c |    8 +++++---
>  arch/arm/mach-omap/Kconfig              |    1 -
>  barebox_default_env.gz                  |  Bin 0 -> 2656 bytes
>  3 files changed, 5 insertions(+), 4 deletions(-)
>  create mode 100644 barebox_default_env.gz
???

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
