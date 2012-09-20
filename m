Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo5.mail-out.ovh.net ([188.165.51.82]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TElZf-0001AZ-2v
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 18:34:07 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id B18EBFFA234
 for <barebox@lists.infradead.org>; Thu, 20 Sep 2012 20:39:56 +0200 (CEST)
Date: Thu, 20 Sep 2012 20:31:33 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120920183133.GG26553@game.jcrosoft.org>
References: <1348149724-28468-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348149724-28468-1-git-send-email-t.gamez@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] Add support for creating barebox.img file.
To: Teresa =?iso-8859-1?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On 16:02 Thu 20 Sep     , Teresa G=E1mez wrote:
> The AM335x U-boot SPL expects to load a u-boot image when booting
> from SD-Card.
> =

> Based on code of Jan Luebbe <jlu@pengutronix.de>
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> ---
>  .gitignore |    1 +
>  Makefile   |    5 +++++
>  2 files changed, 6 insertions(+), 0 deletions(-)
> =

> diff --git a/.gitignore b/.gitignore
> index 4154c73..d147992 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -31,6 +31,7 @@ cross_compile
>  barebox
>  barebox.S
>  barebox.bin
> +barebox.img
>  barebox.srec
>  barebox.netx
>  barebox.s5p
> diff --git a/Makefile b/Makefile
> index c6264d3..3c3cde4 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -680,6 +680,11 @@ ifndef CONFIG_PBL_IMAGE
>  	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
>  endif
>  =

> +barebox.img: barebox.bin
> +	$(srctree)/scripts/mkimage -A $(ARCH) -T firmware -C none \
> +	-O barebox -a $(CONFIG_TEXT_BASE) -e $(CONFIG_TEXT_BASE) \
> +	-n "barebox $(KERNELRELEASE)" -d $< $@
ask said to Jan can not work with PBL

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
