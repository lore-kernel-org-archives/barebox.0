Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TPrLZ-0005E5-7q
 for barebox@lists.infradead.org; Sun, 21 Oct 2012 08:57:25 +0000
Date: Sun, 21 Oct 2012 10:57:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121021085723.GD27665@pengutronix.de>
References: <1350417296-26963-1-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350417296-26963-1-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH 0/2] openrisc: cleanup generic board
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 16, 2012 at 09:54:54PM +0200, Franck Jullien wrote:
> Franck Jullien (2):
>   openrisc: switch to defaultenv-2 and change boardinfo
>   openrisc: generic board cleanup

Applied, thanks

Sascha

> 
>  arch/openrisc/Kconfig                   |    3 ++-
>  arch/openrisc/boards/generic/config.h   |    7 +++----
>  arch/openrisc/boards/generic/generic.c  |    2 +-
>  arch/openrisc/configs/generic_defconfig |    4 ++--
>  4 files changed, 8 insertions(+), 8 deletions(-)
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
