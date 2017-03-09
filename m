Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cltin-0005TD-L3
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 08:46:55 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <mol@pengutronix.de>) id 1cltiS-0005I0-7F
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 09:46:32 +0100
Received: from mol by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <mol@pengutronix.de>) id 1cltiS-0005B3-0B
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 09:46:32 +0100
Date: Thu, 9 Mar 2017 09:46:31 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20170309084631.bkla463pgm5clgwv@pengutronix.de>
References: <20170306050211.GH4120@mail.ovh.net>
 <1488776651-7555-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1488776651-7555-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/2] video: add EFI Graphics Output Protocol support
To: barebox@lists.infradead.org

On Mon, Mar 06, 2017 at 06:04:10AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/video/Kconfig   |   4 +
>  drivers/video/Makefile  |   2 +
>  drivers/video/efi_gop.c | 267 ++++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 273 insertions(+)
>  create mode 100644 drivers/video/efi_gop.c
> 
[...]
> diff --git a/drivers/video/efi_gop.c b/drivers/video/efi_gop.c
> new file mode 100644
> index 000000000..ccb4af3d9
[...]
> +static struct fb_ops efi_gop_ops = {
> +	.fb_activate_var = efi_gop_fb_activate_var,
> +};

This is missing the fb_enable/fb_disable callbacks. Both are not optional.
The framebuffer console is broken without this.

Michael


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
