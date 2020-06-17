Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlTSJ-0003iu-Jp
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 08:30:01 +0000
Date: Wed, 17 Jun 2020 10:29:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200617082958.GZ11869@pengutronix.de>
References: <20200617025736.33666-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617025736.33666-1-masahiroy@kernel.org>
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
Subject: Re: [PATCH] kbuild: remove AS variable
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org

On Wed, Jun 17, 2020 at 11:57:36AM +0900, Masahiro Yamada wrote:
> The assembler files in the barebox are *.S instead of *.s, so they must
> be preprocessed. Since 'as' of GNU binutils is not able to preprocess,
> we always use $(CC) as an assembler driver.
> 
> Remove AS variable.
> 
> Linux also removed AS. See Linux commits:
> 
>  aa824e0c962b ("kbuild: remove AS variable")
>  1ca0c2f61211 ("kbuild: remove unused AS assignment")
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  Makefile          | 3 +--
>  arch/arm/Makefile | 2 --
>  2 files changed, 1 insertion(+), 4 deletions(-)

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
