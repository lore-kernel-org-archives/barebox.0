Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wctml-0005YB-UC
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 09:48:12 +0000
Date: Wed, 23 Apr 2014 11:47:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140423094750.GJ5858@pengutronix.de>
References: <1397290265-21273-1-git-send-email-shc_work@mail.ru>
 <1397290265-21273-5-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1397290265-21273-5-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 05/12] commands/mount: Return real error code if "mount"
 fail
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sat, Apr 12, 2014 at 12:10:58PM +0400, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  commands/mount.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/commands/mount.c b/commands/mount.c
> index 691bc29..77efe71 100644
> --- a/commands/mount.c
> +++ b/commands/mount.c
> @@ -115,7 +115,7 @@ static int do_mount(int argc, char *argv[])
>  
>  	if ((ret = mount(dev, type, mountpoint, fsoptions))) {
>  		perror("mount");
> -		return 1;
> +		return ret;

The perror() should be removed then. Otherwise we get the same error
message twice.

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
