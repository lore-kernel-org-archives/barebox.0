Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo1.mail-out.ovh.net ([178.32.97.206]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TLCHT-0005MT-Ou
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 12:17:56 +0000
Received: from mail26.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 20727FFC78E
 for <barebox@lists.infradead.org>; Mon,  8 Oct 2012 14:27:09 +0200 (CEST)
Date: Mon, 8 Oct 2012 14:15:27 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121008121527.GY26553@game.jcrosoft.org>
References: <1349694156-30554-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349694156-30554-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] ARM at91sam9260ek: remove unused reset entry
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 13:02 Mon 08 Oct     , Sascha Hauer wrote:
> The at91sam9260ek has a custom reset function which does the same thing
> as the default function. Also it does not define MACH_HAS_LOWLEVEL_INIT
> as it should do. Remove the function.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
Acked-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

btw we should rename the command reset reboot because it start to be confusing

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
