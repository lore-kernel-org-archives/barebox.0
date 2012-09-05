Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9JyE-0003JA-NU
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 18:04:59 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 5ED76FF8DB2
 for <barebox@lists.infradead.org>; Wed,  5 Sep 2012 20:12:32 +0200 (CEST)
Date: Wed, 5 Sep 2012 20:05:16 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120905180516.GC4761@game.jcrosoft.org>
References: <1346860337-777-1-git-send-email-jlu@pengutronix.de>
 <1346860337-777-3-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346860337-777-3-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 2/8] Makefile: add target to produce a SPL compatible
 uimage
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 17:52 Wed 05 Sep     , Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  Makefile |   10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Makefile b/Makefile
> index c6264d3..69e28e3 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -680,6 +680,16 @@ ifndef CONFIG_PBL_IMAGE
>  	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
>  endif
>  
> +# For development provide a target which makes barebox loadable by an
> +# unmodified u-boot
> +quiet_cmd_barebox_mkimage = MKIMAGE $@
> +      cmd_barebox_mkimage = $(srctree)/scripts/mkimage -A $(ARCH) -T firmware -C none \
> +	-O barebox -a $(CONFIG_TEXT_BASE) -e $(CONFIG_TEXT_BASE) \
> +	-n "barebox $(KERNELRELEASE)" -d $< $@
> +
> +barebox.img: barebox.bin FORCE
> +	$(call if_changed,barebox_mkimage)
this will not work whit the PBL

please fix it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
