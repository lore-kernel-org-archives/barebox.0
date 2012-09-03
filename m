Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T8ZPr-00086k-M5
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 16:22:25 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 54C6CDC4330
 for <barebox@lists.infradead.org>; Mon,  3 Sep 2012 18:27:39 +0200 (CEST)
Date: Mon, 3 Sep 2012 18:22:39 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120903162239.GE19931@game.jcrosoft.org>
References: <1346672765-16162-1-git-send-email-jlu@pengutronix.de>
 <1346672765-16162-4-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346672765-16162-4-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 03/10] Makefile: add target to produce a SPL compatible
 uimage
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 13:45 Mon 03 Sep     , Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  Makefile |    5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Makefile b/Makefile
> index 969afbb..243a689 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -673,6 +673,11 @@ barebox.bin: barebox FORCE
>  	$(call if_changed,objcopy)
>  	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
>  
> +barebox.img: barebox.bin
> +	$(srctree)/scripts/mkimage -A $(ARCH) -T firmware -C none \
> +	-O barebox -a $(CONFIG_TEXT_BASE) -e $(CONFIG_TEXT_BASE) \
> +	-n "barebox $(KERNELRELEASE)" -d $< $@
> +
you must us this kbuild style

quiet_cmd_xxx
      cmd_xxx

and you need to use the $(KBUILD_IMAGE) present in the next

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
