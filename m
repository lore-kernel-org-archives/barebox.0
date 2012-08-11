Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo4.mail-out.ovh.net ([46.105.40.29]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T089F-0003JE-UA
 for barebox@lists.infradead.org; Sat, 11 Aug 2012 09:38:22 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 3090A10507C1
 for <barebox@lists.infradead.org>; Sat, 11 Aug 2012 11:42:55 +0200 (CEST)
Date: Sat, 11 Aug 2012 11:38:27 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120811093827.GD6271@game.jcrosoft.org>
References: <1344628865-32574-1-git-send-email-s.hauer@pengutronix.de>
 <1344628865-32574-8-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1344628865-32574-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 7/9] ARM pbl: Fix zbarebox.S build
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 22:01 Fri 10 Aug     , Sascha Hauer wrote:
> zbarebox.S target did not work for pbl. Fix this.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/pbl/Makefile |    3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
> index 143da8b..dc6ae7e 100644
> --- a/arch/arm/pbl/Makefile
> +++ b/arch/arm/pbl/Makefile
> @@ -16,6 +16,9 @@ $(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
>  	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
>  	@echo '  Barebox: $@ is ready'
>  
> +quiet_cmd_disasm = DISASM  $@
> +      cmd_disasm = $(OBJDUMP) -d $< > $@
I saw this too we need to move it to Makefile.lib
as it's not arm specific

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
