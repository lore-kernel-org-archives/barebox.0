Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo4.mail-out.ovh.net ([178.32.98.131]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RYexj-0003IK-My
 for barebox@lists.infradead.org; Thu, 08 Dec 2011 14:28:40 +0000
Received: from mail192.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id D64841054B8C
 for <barebox@lists.infradead.org>; Thu,  8 Dec 2011 15:28:49 +0100 (CET)
Date: Thu, 8 Dec 2011 15:24:33 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111208142433.GC23884@game.jcrosoft.org>
References: <1323335864-27895-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323335864-27895-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] ARM i.MX27: initialize MAX
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:17 Thu 08 Dec     , Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-imx/imx27.c                   |   43 +++++++++++++++++++++++++++
>  arch/arm/mach-imx/include/mach/imx27-regs.h |    1 +
>  2 files changed, 44 insertions(+), 0 deletions(-)
do we really need this in barebox?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
