Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6HSZ-0000rt-3w
 for barebox@lists.infradead.org; Tue, 28 Aug 2012 08:47:43 +0000
Date: Tue, 28 Aug 2012 10:47:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120828084741.GK24458@pengutronix.de>
References: <20120824050332.GK6271@game.jcrosoft.org>
 <1345784816-31344-1-git-send-email-plagnioj@jcrosoft.com>
 <1345784816-31344-7-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1345784816-31344-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 7/7] defaultenv-2: add symbolic link support to boot/nfs
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 24, 2012 at 07:06:56AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  defaultenv-2/base/boot/nfs |   55 +++++++++++++++++++++++++++++++++++++++++---
>  1 file changed, 52 insertions(+), 3 deletions(-)
> 
> diff --git a/defaultenv-2/base/boot/nfs b/defaultenv-2/base/boot/nfs
> index 248f975..a33a21c 100644
> --- a/defaultenv-2/base/boot/nfs
> +++ b/defaultenv-2/base/boot/nfs
> @@ -43,6 +43,18 @@ if [ -n "${global.dhcp.bootfile}" ]; then
>  	mount -t nfs "${eth0.serverip}:${mnt}" "${path}"
>  
>  	global.bootm.image="${path}/${bootfile}"
> +
> +	if [ -L "${global.bootm.image}" ]; then
> +		readlink -f "${global.bootm.image}" bootfile_symlink
> +
> +		dirname -V "${bootfile_symlink}" mnt
> +		basename "${bootfile_symlink}" bootfile
> +
> +		umount "${path}"
> +		mount -t nfs "${eth0.serverip}:${mnt}" "${path}"
> +
> +		global.bootm.image="${path}/${bootfile}"
> +	fi

There is something wrong here. I do not understand what you do here, but
symlinks are not supposed to bash on them with dirname/basename until
you get something which fits your needs.

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
