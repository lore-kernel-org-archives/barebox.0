Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVxCE-0002fC-VI
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 08:10:52 +0000
Date: Wed, 17 Feb 2016 09:10:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160217081028.GO19372@pengutronix.de>
References: <1455657239-17629-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1455657239-17629-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] fs: ext4: make locally used ext4fs_get_indir_block()
 static
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Feb 17, 2016 at 12:13:59AM +0300, Antony Pavlov wrote:
> The patch fixes this compiler's warning:
> 
>       CC      fs/ext4/ext4_common.o
>     fs/ext4/ext4_common.c:130:5: warning: no previous prototype for
>     'ext4fs_get_indir_block' [-Wmissing-prototypes]
>      int ext4fs_get_indir_block(struct ext2fs_node *node, struct
>     ext4fs_indir_block *indir, int blkno)
>          ^
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  fs/ext4/ext4_common.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

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
