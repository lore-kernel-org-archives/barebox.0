Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8C0z-0000TP-Lx
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 13:46:22 +0000
Date: Fri, 8 Apr 2011 15:38:22 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110408133822.GD13978@game.jcrosoft.org>
References: <1302257948-18174-1-git-send-email-mkl@pengutronix.de>
	<1302257948-18174-6-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1302257948-18174-6-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH 5/7] defaultenv: boot: add support to boot from disk
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org, sha@pengutronix.de

On 12:19 Fri 08 Apr     , Marc Kleine-Budde wrote:
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  defaultenv/bin/boot |    9 ++++++++-
>  1 files changed, 8 insertions(+), 1 deletions(-)
> 
> diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
> index 4284308..652ae0c 100644
> --- a/defaultenv/bin/boot
> +++ b/defaultenv/bin/boot
> @@ -18,6 +18,9 @@ elif [ x$1 = xnfs ]; then
>  elif [ x$1 = xtftp ]; then
>  	rootfs_loc=net
>  	kernel_loc=tftp
> +elif [ x$1 = xdisk ]; then
> +	rootfs_loc=disk
> +	kernel_loc=disk
>  fi

please waiit I'm send patch to improve boot with swithing to getopt


Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
