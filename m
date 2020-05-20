Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMkS-0000iM-N2
 for barebox@lists.infradead.org; Wed, 20 May 2020 11:18:58 +0000
Date: Wed, 20 May 2020 13:18:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200520111854.GB11869@pengutronix.de>
References: <20200519071353.395493-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519071353.395493-1-masahiroy@kernel.org>
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
Subject: Re: [PATCH 1/8] kbuild: rename pbl object pbl-*.o to *.pbl.o
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org

On Tue, May 19, 2020 at 04:13:45PM +0900, Masahiro Yamada wrote:
> Currently, pbl objects are output to:
> 
>   <directory-path>/pbl-<basename>.o
> 
> This commit changes as follows:
> 
>   <directory-path>/<basename>.pbl.o
> 
> The motivation is not only to get rid of the ugly code introduced by
> commit 257abdaa36c8 ("Do not rm the path from pbl-y target"), but also
> to make it easier to remove obj-dtb-y, pbl-dtb-y, lwl-dtb-y syntax in
> the next commit.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---

Applied with the typos you mentioned fixed, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
