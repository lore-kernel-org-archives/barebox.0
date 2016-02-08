Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aSfr3-0000tu-8y
 for barebox@lists.infradead.org; Mon, 08 Feb 2016 07:03:26 +0000
Date: Mon, 8 Feb 2016 08:02:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160208070259.GU4118@pengutronix.de>
References: <1454684987-16961-1-git-send-email-jbe@pengutronix.de>
 <1454684987-16961-2-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1454684987-16961-2-git-send-email-jbe@pengutronix.de>
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
Subject: Re: [PATCH] nfs: forward filesystem options to the kernel command line
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 05, 2016 at 04:09:47PM +0100, Juergen Borleis wrote:
> Using NFS in conjunction with boot spec and the feature to let Barebox
> auto generate a kernel command line must keep the options the NFS filesystem
> was mounted in Barebox. This patch extends the kernel command line parameter
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
> ---
>  Documentation/user/booting-linux.rst |  2 +-
>  fs/nfs.c                             | 21 ++++++++++++++++++++-
>  2 files changed, 21 insertions(+), 2 deletions(-)

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
