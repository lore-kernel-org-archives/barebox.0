Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVUjM-0002na-OI
 for barebox@lists.infradead.org; Mon, 04 May 2020 06:37:34 +0000
Date: Mon, 4 May 2020 08:37:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200504063731.GL5877@pengutronix.de>
References: <20200429173419.681074-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429173419.681074-1-masahiroy@kernel.org>
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
Subject: Re: [PATCH 0/5] move arch/ppc to arch/powerpc
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org

On Thu, Apr 30, 2020 at 02:34:14AM +0900, Masahiro Yamada wrote:
> 
> This needs to go for-next/kbuild branch.
> 
> 
> 
> Masahiro Yamada (5):
>   ppc: remove unneeded -D CONFIG_PPC
>   ppc: pass -mno-spe and -mspe=no to cc-option
>   ppc: add arch/ppc/Kbuild
>   image: support 'powerpc' for mkimage architecture
>   ppc: rename arch/ppc/ to arch/powerpc/
> 

Applied, thanks

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
