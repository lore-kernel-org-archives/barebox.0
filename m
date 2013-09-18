Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMBsg-0001RO-UD
 for barebox@lists.infradead.org; Wed, 18 Sep 2013 07:08:59 +0000
Date: Wed, 18 Sep 2013 09:08:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130918070836.GM30088@pengutronix.de>
References: <1379434156-32055-1-git-send-email-plagnioj@jcrosoft.com>
 <1379434156-32055-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1379434156-32055-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/2] fs: add Somfy BPK2 support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 17, 2013 at 06:09:16PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  fs/Kconfig           |   4 +
>  fs/Makefile          |   1 +
>  fs/somfy_bpk2.c      | 357 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  include/somfy_bpk2.h |  59 +++++++++
>  4 files changed, 421 insertions(+)
>  create mode 100644 fs/somfy_bpk2.c
>  create mode 100644 include/somfy_bpk2.h
> 
> diff --git a/fs/Kconfig b/fs/Kconfig
> index 21d3434..c4d321c 100644
> --- a/fs/Kconfig
> +++ b/fs/Kconfig
> @@ -43,6 +43,10 @@ config FS_NFS
>  
>  source fs/fat/Kconfig
>  
> +config FS_SOMFY_BPK2
> +	bool
> +	prompt "Somfy BPK2 support"

Google has zero hits for "Somfy BPK2". If you want to have this mainline
you should really explain what it is and what it's good for.

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
