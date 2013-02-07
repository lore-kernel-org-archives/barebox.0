Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U3Twy-0008KP-Hp
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 16:03:50 +0000
Received: from mail419.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 484BA10200F2
 for <barebox@lists.infradead.org>; Thu,  7 Feb 2013 17:14:06 +0100 (CET)
Date: Thu, 7 Feb 2013 17:02:34 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130207160234.GM19322@game.jcrosoft.org>
References: <1360248231-31561-1-git-send-email-fabio.porcedda@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360248231-31561-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: Re: [PATCH v2 0/2] at91sam9260/9g20ek: some cleanup
To: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: barebox@lists.infradead.org

On 15:43 Thu 07 Feb     , Fabio Porcedda wrote:
> I used some cleanup already done for the evk-pro3 board.
> 
> Tested on atsam9260ek.
> 
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> 
> v2:
>  - removed some parts in patch 1/3 as asked by Jean-Christophe
>  - removed patch 2/3 as asked by Jean-Christophe

on all

Acked-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Best Regards,
J.
> 
> 
> Fabio Porcedda (2):
>   at91sam9260/9g20ek: cleanup coding style
>   at91sam9260/9g20ek: enable clock via clock framework
> 
>  arch/arm/boards/at91sam9260ek/init.c | 31 +++++++++++--------------------
>  1 file changed, 11 insertions(+), 20 deletions(-)
> 
> -- 
> 1.8.1.1
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
