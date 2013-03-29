Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo5.mail-out.ovh.net ([87.98.182.191]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ULcIH-0006eL-17
 for barebox@lists.infradead.org; Fri, 29 Mar 2013 16:36:45 +0000
Received: from mail614.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id E3915FFA571
 for <barebox@lists.infradead.org>; Fri, 29 Mar 2013 17:48:40 +0100 (CET)
Date: Fri, 29 Mar 2013 17:32:37 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130329163237.GP1568@game.jcrosoft.org>
References: <1364569704-18851-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1364569704-18851-1-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [PATCH] commands/tftp: use pr_debug for debug output
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On 16:08 Fri 29 Mar     , Hubert Feurstein wrote:
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> ---
>  commands/tftp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/commands/tftp.c b/commands/tftp.c
> index 558b0ac..05d9d04 100644
> --- a/commands/tftp.c
> +++ b/commands/tftp.c
> @@ -76,7 +76,7 @@ static int do_tftpb(int argc, char *argv[])
>  	if (ret)
>  		goto err_rmdir;
>  
> -	printk("%s: %s -> %s\n", __func__, source, dest);
> +	pr_debug("%s: %s -> %s\n", __func__, source, dest);
no pr_ is for device/driver not commands

use debug

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
