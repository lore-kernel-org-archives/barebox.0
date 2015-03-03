Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YStfv-0004wp-1i
 for barebox@lists.infradead.org; Tue, 03 Mar 2015 20:44:19 +0000
Date: Tue, 3 Mar 2015 21:43:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150303204354.GV11010@pengutronix.de>
References: <1425384899-18809-1-git-send-email-mkl@pengutronix.de>
 <1425384899-18809-2-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425384899-18809-2-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH v3 01/13] sandbox: add support to pass dtb to barebox
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 03, 2015 at 01:14:47PM +0100, Marc Kleine-Budde wrote:
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  arch/sandbox/Kconfig                           |  1 +
>  arch/sandbox/board/Makefile                    |  1 +
>  arch/sandbox/board/dtb.c                       | 57 ++++++++++++++++++++++++++
>  arch/sandbox/mach-sandbox/include/mach/linux.h |  2 +
>  arch/sandbox/os/common.c                       | 47 ++++++++++++++++++++-
>  5 files changed, 107 insertions(+), 1 deletion(-)
>  create mode 100644 arch/sandbox/board/dtb.c
> 
> diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
> index 707fca3dc391..c21e517adf9b 100644
> --- a/arch/sandbox/Kconfig
> +++ b/arch/sandbox/Kconfig
> @@ -1,5 +1,6 @@
>  config SANDBOX
>  	bool
> +	select CONFIG_OFTREE

Must be OFTREE. Fixed.

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
