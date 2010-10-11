Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5HU2-0004in-N7
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 12:28:15 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 11 Oct 2010 14:26:12 +0200
References: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
	<1286796505-16049-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1286796505-16049-14-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010111426.13066.jbe@pengutronix.de>
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
Subject: Re: [PATCH 13/17] defaultenv: handle disk partitions
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  defaultenv/bin/init |    4 ++++
>  1 files changed, 4 insertions(+), 0 deletions(-)
>
> diff --git a/defaultenv/bin/init b/defaultenv/bin/init
> index a55e8e6..526e3db 100644
> --- a/defaultenv/bin/init
> +++ b/defaultenv/bin/init
> @@ -8,6 +8,10 @@ if [ -e /dev/nor0 ]; then
>  	addpart /dev/nor0 $nor_parts
>  fi
>
> +if [ -e /dev/disk0 ]; then
> +	addpart /dev/disk0 $disk_parts
> +fi
> +

Are you sure you want/need additional partitions on a disk without a 
persistant partition table?

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
