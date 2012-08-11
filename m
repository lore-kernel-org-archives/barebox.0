Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T08AH-0003OF-2W
 for barebox@lists.infradead.org; Sat, 11 Aug 2012 09:39:25 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 1660F1050826
 for <barebox@lists.infradead.org>; Sat, 11 Aug 2012 11:43:58 +0200 (CEST)
Date: Sat, 11 Aug 2012 11:39:31 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120811093931.GE6271@game.jcrosoft.org>
References: <1344628865-32574-1-git-send-email-s.hauer@pengutronix.de>
 <1344628865-32574-9-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1344628865-32574-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 8/9] ARM pbl: remove unnecessary FORCE
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 22:01 Fri 10 Aug     , Sascha Hauer wrote:
> With this FORCE the compressed image is rebuilt even if it is
> unchanged, so remove it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/pbl/Makefile |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
> index dc6ae7e..b1cdd85 100644
> --- a/arch/arm/pbl/Makefile
> +++ b/arch/arm/pbl/Makefile
> @@ -37,7 +37,7 @@ quiet_cmd_zbarebox__ ?= LD      $@
>  $(obj)/zbarebox: $(zbarebox-lds) $(zbarebox-common) FORCE
>  	$(call if_changed,zbarebox__)
>  
> -$(obj)/piggy.$(suffix_y): $(obj)/../../../barebox.bin FORCE
> +$(obj)/piggy.$(suffix_y): $(obj)/../../../barebox.bin
>  	$(call if_changed,$(suffix_y))
no sure about this one

IIRC we need it I saw issue without it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
