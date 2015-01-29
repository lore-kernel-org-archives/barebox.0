Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGl3o-0000Om-A1
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 09:06:49 +0000
Date: Thu, 29 Jan 2015 10:06:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150129090622.GZ12209@pengutronix.de>
References: <1422499613-683-1-git-send-email-yamada.m@jp.panasonic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1422499613-683-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: Re: [PATCH v2] param: add error check to __dev_add_param()
To: Masahiro Yamada <yamada.m@jp.panasonic.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 29, 2015 at 11:46:53AM +0900, Masahiro Yamada wrote:
> If the argument, name is given with NULL, it would be probably
> unexpected behavior.  It should fail rather than register the
> NULL-named parameter.
> 
> If strdup() fails with out-of-memory, it should also fail
> with -ENOMEM.
> 
> Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
> ---
> 
> Changes in v2:
>   - Fix the condition of returning -ENOMEM
> 
>  lib/parameter.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/lib/parameter.c b/lib/parameter.c
> index 71262c4..02a89bb 100644
> --- a/lib/parameter.c
> +++ b/lib/parameter.c
> @@ -130,6 +130,13 @@ static int __dev_add_param(struct param_d *param, struct device_d *dev, const ch
>  	if (get_param_by_name(dev, name))
>  		return -EEXIST;
>  
> +	if (!name)
> +		return -EINVAL;

Name is used already two lines above so barebox will already be crashed
before this triggers.

Besides, I normally don't like these checks. dereferencing NULL pointers
means you get a backtrace showing you what went wrong. Returning an error
means adding code which in this case makes dev_add_param just fail
silently because the return value often is not checked.

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
