Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aREvz-0000Zq-El
 for barebox@lists.infradead.org; Thu, 04 Feb 2016 08:06:36 +0000
Date: Thu, 4 Feb 2016 09:06:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160204080613.GS4118@pengutronix.de>
References: <201602021206.30161.jbe@pengutronix.de>
 <201602021449.10041.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201602021449.10041.jbe@pengutronix.de>
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
Subject: Re: [PATCH v2] nfs: forward filesystem options to the kernel command
 line
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 02, 2016 at 02:49:09PM +0100, Juergen Borleis wrote:
> Using NFS in conjunction with boot spec and the feature to let barebox
> auto generate a kernel command line must keep the options the NFS filesystem
> was mounted in barebox. This patch extends the kernel command line parameter
> on demand if something different than the defaults are used.
> 
> The command:
> 
> barebox:/ boot nfs://myhost//root
> 
> expands to the kernel command line:
> 
> nfsroot=myhost:/root,v3,tcp
> 
> while the command:
> 
> barebox:/ boot nfs://myhost:2049//root
> 
> expands now to the kernel command line:
> 
> nfsroot=myhost:/root,v3,tcp,mountport=2049,port=2049
> 
> Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
> 
> diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
> index 39084e5afe08..5b021f0662de 100644
> --- a/Documentation/user/booting-linux.rst
> +++ b/Documentation/user/booting-linux.rst

Applied, thanks

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
