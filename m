Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fOoZQ-0005Cd-MN
 for barebox@lists.infradead.org; Fri, 01 Jun 2018 18:14:39 +0000
Date: Fri, 1 Jun 2018 20:12:18 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180601181218.GA29728@ravnborg.org>
References: <20180531204851.1719-1-o.rempel@pengutronix.de>
 <20180531204851.1719-2-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180531204851.1719-2-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH 2/4] add basic ELF parser
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Oleksij

On Thu, May 31, 2018 at 10:48:49PM +0200, Oleksij Rempel wrote:
> This parser is needed for kernel boot support on MIPS
> and can potentially reused on other platforms.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  common/Makefile |   1 +
>  common/elf.c    | 146 ++++++++++++++++++++++++++++++++++++++++++++++++
>  include/elf.h   |  10 ++++
>  3 files changed, 157 insertions(+)
>  create mode 100644 common/elf.c
> 
> diff --git a/common/Makefile b/common/Makefile
> index 1ff7d2370..4fe7eaaf6 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -8,6 +8,7 @@ obj-y				+= misc.o
>  obj-pbl-y			+= memsize.o
>  obj-y				+= resource.o
>  obj-y				+= bootsource.o
> +obj-y				+= elf.o
Do we always wnat this to be preset?
There most be many arch's where this is not relevant,
so a few bytes can be saved if this is not compiled in.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
