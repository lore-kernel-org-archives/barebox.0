Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TALPn-0002ym-HJ
 for barebox@lists.infradead.org; Sat, 08 Sep 2012 13:49:40 +0000
Date: Sat, 8 Sep 2012 15:49:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120908134937.GC18243@pengutronix.de>
References: <20120907120713.GQ20330@game.jcrosoft.org>
 <1347020017-12110-1-git-send-email-plagnioj@jcrosoft.com>
 <1347020017-12110-11-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347020017-12110-11-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 11/11] defaultenv-2: add symbolic link support to boot/nfs
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 07, 2012 at 02:13:37PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> If the symlink is not find on barebox try on the host.
> So we are back compatible with nfs command.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  defaultenv-2/base/boot/nfs |   64 +++++++++++++++++++++++++++++++++++++++++---
>  1 file changed, 61 insertions(+), 3 deletions(-)
> 
> diff --git a/defaultenv-2/base/boot/nfs b/defaultenv-2/base/boot/nfs
> index 892f103..bf27d38 100644
> --- a/defaultenv-2/base/boot/nfs
> +++ b/defaultenv-2/base/boot/nfs
> @@ -5,6 +5,8 @@ if [ "$1" = menu ]; then
>  	exit
>  fi
>  
> +. /env/data/ansi-colors
> +
>  path="/mnt/tftp"
>  
>  # to get the dhcp info (global.dhcp.rootpath, global.dhcp.bootfile, global.dhcp.oftree_file)
> @@ -44,6 +46,24 @@ if [ -n "${global.dhcp.bootfile}" ]; then
>  	mount -t nfs "${eth0.serverip}:${mnt}" "${path}"
>  
>  	global.bootm.image="${path}/${bootfile}"
> +
> +	if [ -L "${global.bootm.image}" ]; then
> +		readlink -f "${global.bootm.image}" bootfile_symlink
> +
> +		# if the file is not on barebox fs assume it's on the host
> +		if [ ! -e "${bootfile_symlink}" ]; then
> +			dirname "${bootfile_symlink}" mnt
> +			basename "${bootfile_symlink}" bootfile
> +
> +			umount "${path}"
> +			mount -t nfs "${eth0.serverip}:${mnt}" "${path}"
> +
> +			bootfile_symlink="${path}/${bootfile_symlink}"
> +			global.bootm.image="${path}/${bootfile}"
> +		else
> +			global.bootm.image="${bootfile_symlink}"
> +		fi

symbolic links either point to the target or not, but doing magic on
them to try to interpret where they *could* point to is no option.

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
