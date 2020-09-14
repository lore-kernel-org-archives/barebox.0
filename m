Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHjgf-0000L4-L8
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 08:18:10 +0000
Date: Mon, 14 Sep 2020 10:18:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200914081806.GJ4498@pengutronix.de>
References: <20200911172534.4349-1-tk-scherer@mailbox.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200911172534.4349-1-tk-scherer@mailbox.org>
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
Subject: Re: [PATCH] Documentation: user: fix referenced filename
To: Thorsten Scherer <tk-scherer@mailbox.org>
Cc: barebox@lists.infradead.org

On Fri, Sep 11, 2020 at 07:25:34PM +0200, Thorsten Scherer wrote:
> Adjust filename and path of nfsroot.txt according to Linux commit
> f9a9349 ("Documentation: nfsroot.txt: convert to ReST")
> ---
>  Documentation/user/booting-linux.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
> index 983b56dee..60babb513 100644
> --- a/Documentation/user/booting-linux.rst
> +++ b/Documentation/user/booting-linux.rst
> @@ -274,7 +274,7 @@ In any case, make sure that the specified mountpoint is exported by your NFS
>  server.
>  
>  For more information about booting with ``nfsroot``, see
> -`Documentation/filesystems/nfs/nfsroot.txt <https://github.com/torvalds/linux/blob/master/Documentation/filesystems/nfs/nfsroot.txt>`__
> +`Documentation/admin-guide/nfs/nfsroot.rst <https://github.com/torvalds/linux/blob/master/Documentation/admin-guide/nfs/nfsroot.rst>`__
>  in the Linux kernel documentation.
>  
>  If the preconfigured paths or names are not suitable, they can be adjusted in
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
