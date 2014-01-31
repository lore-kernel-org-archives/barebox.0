Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W9ILQ-00009o-7j
 for barebox@lists.infradead.org; Fri, 31 Jan 2014 17:57:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1W9IL4-0004Bw-5B
 for barebox@lists.infradead.org; Fri, 31 Jan 2014 18:57:14 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1W9IL4-0004mY-3F
 for barebox@lists.infradead.org; Fri, 31 Jan 2014 18:57:14 +0100
Date: Fri, 31 Jan 2014 18:57:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140131175713.GC24917@pengutronix.de>
References: <1390993508-10287-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1390993508-10287-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 1/3] scripts: fix_size: check magic
To: barebox@lists.infradead.org

On Wed, Jan 29, 2014 at 12:05:06PM +0100, Sascha Hauer wrote:
> Instead of passing the offset to the fix_size tool check the image to
> fixup for a valid header so that only recognized files are fixed up.
> This makes the usage of this tool safer.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/pbl/Makefile |  2 +-
>  scripts/fix_size.c    | 32 +++++++++++++++++++++++++-------
>  2 files changed, 26 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
> index bfa73b9..5e90f3d 100644
> --- a/arch/arm/pbl/Makefile
> +++ b/arch/arm/pbl/Makefile
> @@ -23,7 +23,7 @@ $(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
>  	$(call if_changed,objcopy)
>  	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
>  	$(Q)$(kecho) '  Barebox: fix size'
> -	$(Q)$(objtree)/scripts/fix_size -f $(objtree)/$@ -o 0x2c $(FIX_SIZE)
> +	$(Q)$(objtree)/scripts/fix_size -f $(objtree)/$@ $(FIX_SIZE)

I had to squash in a -i option to ignore invalid headers and return
successfully instead of failing. This is necessary for zynq which
doesn't generate an image with a barebox header but instead with a zynq
header. Before this patch fix_size silently corrupted the image.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
