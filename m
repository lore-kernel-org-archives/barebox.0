Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hclho-0001he-Q8
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 07:05:30 +0000
Date: Mon, 17 Jun 2019 09:05:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190617070524.bhcpfkv4thpouxax@pengutronix.de>
References: <20190610084704.8996-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610084704.8996-1-yamada.masahiro@socionext.com>
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
Subject: Re: [PATCH] kconfig: update to Linux 5.2-rc4
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

Hi Masahiro,

On Mon, Jun 10, 2019 at 05:47:04PM +0900, Masahiro Yamada wrote:
> @@ -854,7 +860,7 @@ define symlink-config-h
>  	fi
>  endef
>  
> -include/config.h: include/config/auto.conf
> +include/config.h:
>  	$(Q)$(symlink-config-h)

I had to revert this change. Without the dependency to
include/config/auto.conf include/config.h won't get updated on Kconfig
changes. Is reverting this change the right thing to do or do we have to
do something else?

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
