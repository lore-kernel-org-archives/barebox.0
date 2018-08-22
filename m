Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fsNf9-0002Bl-PP
 for barebox@lists.infradead.org; Wed, 22 Aug 2018 07:34:46 +0000
Date: Wed, 22 Aug 2018 09:34:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180822073432.x5jbj6ecyuwortz7@pengutronix.de>
References: <20180821150700.2926-1-aleksander@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180821150700.2926-1-aleksander@aleksander.es>
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
Subject: Re: [PATCH] bbremote: add missing 'md' packet handler
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Tue, Aug 21, 2018 at 05:07:00PM +0200, Aleksander Morgado wrote:
> Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
> ---
>  scripts/remote/controller.py | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/scripts/remote/controller.py b/scripts/remote/controller.py
> index 2ed834613..1a8390904 100644
> --- a/scripts/remote/controller.py
> +++ b/scripts/remote/controller.py
> @@ -46,6 +46,9 @@ def unpack(data):
>      elif p_type == BBType.fs_return:
>          logging.debug("received: fs_return")
>          return BBPacketFSReturn(raw=data)
> +    elif p_type == BBType.md:
> +        logging.debug("received: md")
> +        return BBPacketMd(raw=data)
>      elif p_type == BBType.md_return:
>          logging.debug("received: md_return")
>          return BBPacketMdReturn(raw=data)
> -- 
> 2.18.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
