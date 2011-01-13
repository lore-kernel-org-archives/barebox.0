Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PdOt3-0002xY-KP
	for barebox@lists.infradead.org; Thu, 13 Jan 2011 15:14:54 +0000
Message-ID: <4D2F16E5.1020502@free-electrons.com>
Date: Thu, 13 Jan 2011 16:14:45 +0100
From: Gregory CLEMENT <gregory.clement@free-electrons.com>
MIME-Version: 1.0
References: <4D23313B.9040002@free-electrons.com>
In-Reply-To: <4D23313B.9040002@free-electrons.com>
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
Subject: Re: [PATCH 1/1] BMP: Add support for 32bpp video frame buffer
To: barebox <barebox@lists.infradead.org>

On 01/04/2011 03:39 PM, Gregory CLEMENT wrote:
> Signed-off-by: Gregory CLEMENT <gregory.clement@free-electrons.com>
> ---
>  commands/bmp.c |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
> diff --git a/commands/bmp.c b/commands/bmp.c
> index 5bac031..644a977 100644
> --- a/commands/bmp.c
> +++ b/commands/bmp.c
> @@ -25,6 +25,7 @@ static inline void set_pixel(struct fb_info *info, void *adr, int r, int g, int
>  		*(u16 *)adr = px;
>  		break;
>  	case 32:
> +		*(u32 *)adr = px;
>  		break;
>  	}
>  }
Any comments for this patch?

It seems pretty trivial and it works at least for me.
But if I missed something, let me know.

-- 
Gregory Clement, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
