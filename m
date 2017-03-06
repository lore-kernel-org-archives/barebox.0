Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cknr0-0003Pl-Fv
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 08:18:52 +0000
Date: Mon, 6 Mar 2017 09:18:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170306081828.rf33of5px5lsgpyt@pengutronix.de>
References: <20170306050211.GH4120@mail.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170306050211.GH4120@mail.ovh.net>
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
Subject: Re: [PATCH 0/2] add support of efi Serial IO and Graphics Output
 Protocol
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 06, 2017 at 06:02:11AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> The following changes since commit d92ed454107b4d6f0d30fa0271da191ae5911d18:
> 
>   Merge branch 'for-next/video' into next (2017-02-27 08:51:08 +0100)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/serial-gop
> 
> for you to fetch changes up to 6ecbe33539f20076bbc781b9e20a5a54d504fdf3:
> 
>   efi: add serial driver support (2017-03-01 22:11:37 +0800)

Applied, thanks


Sascha

> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (2):
>       video: add EFI Graphics Output Protocol support
>       efi: add serial driver support
> 
>  drivers/serial/Kconfig      |   4 +++
>  drivers/serial/Makefile     |   1 +
>  drivers/serial/serial_efi.c | 241 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/video/Kconfig       |   4 +++
>  drivers/video/Makefile      |   2 ++
>  drivers/video/efi_gop.c     | 267 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  6 files changed, 519 insertions(+)
>  create mode 100644 drivers/serial/serial_efi.c
>  create mode 100644 drivers/video/efi_gop.c
> 
> Best Regards,
> J.
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
