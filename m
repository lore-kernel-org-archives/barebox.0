Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2iXX-0005UR-9I
 for barebox@lists.infradead.org; Mon, 03 Aug 2020 22:02:40 +0000
References: <20200615060229.7533-1-s.hauer@pengutronix.de>
 <20200615060229.7533-5-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <11fac320-418d-4fc1-249b-59b5008f2839@pengutronix.de>
Date: Tue, 4 Aug 2020 00:02:37 +0200
MIME-Version: 1.0
In-Reply-To: <20200615060229.7533-5-s.hauer@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 04/11] fs: free inodes we no longer need
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

Hello Sascha,

On 6/15/20 8:02 AM, Sascha Hauer wrote:
> So far we freed the no longer needed inodes only at unmount time.
> Let's trust our reference counting a bit more and free them once
> the reference counter hits zero.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  fs/fs.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index cecb3d70e0..e04cadfe5d 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -1090,10 +1090,12 @@ void iput(struct inode *inode)
>  	if (!inode)
>  		return;
>  
> -	if (!inode->i_count)
> -		return;
> -
>  	inode->i_count--;
> +
> +	if (!inode->i_count) {
> +		list_del(&inode->i_sb_list);

There is no explicit initialization of i_sb_list anywhere, only
list_add.

Without reverting this patch, I can reproduce null pointer dereference
booting from squashfs as i_sb_list remained uninitialized when this
line is executed.

Can you drop this patch for now?


> +		destroy_inode(inode);
> +	}
>  }
>  
>  struct inode *iget(struct inode *inode)
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
