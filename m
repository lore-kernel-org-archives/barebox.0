Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hBNQE-00047r-LA
 for barebox@lists.infradead.org; Tue, 02 Apr 2019 17:42:08 +0000
Date: Tue, 2 Apr 2019 19:42:03 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190402174203.GC18142@ravnborg.org>
References: <20190401101822.7392-1-a.fatoum@pengutronix.de>
 <20190401101822.7392-7-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190401101822.7392-7-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v3 06/15] ARM: at91: import lowlevel clock initialization
 from at91bootstrap
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad.

On Mon, Apr 01, 2019 at 12:18:14PM +0200, Ahmad Fatoum wrote:
> For use by future at91 first stage bootloaders, this commit imports
> https://github.com/linux4sam/at91bootstrap/blob/v3.8.12/driver/pmc.c
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-at91/Makefile                   |   1 +
>  arch/arm/mach-at91/at91_pmc_ll.c              | 184 ++++++++++++++++++
>  arch/arm/mach-at91/include/mach/at91_pmc.h    |  24 ++-
>  arch/arm/mach-at91/include/mach/at91_pmc_ll.h |  78 ++++++++
>  4 files changed, 284 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/mach-at91/at91_pmc_ll.c
>  create mode 100644 arch/arm/mach-at91/include/mach/at91_pmc_ll.h
> 
> diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
> index d81683ac121a..91b06c085107 100644
> --- a/arch/arm/mach-at91/Makefile
> +++ b/arch/arm/mach-at91/Makefile
> @@ -1,4 +1,5 @@
>  obj-y += setup.o
> +pbl-y += at91_pmc_ll.o

Will this always make my pbl image larger or do we have some linker
magic that throws away the unused code?
If the pbl image become larger then we need to add this in a conditional manner
as we cannot allow this for all at91 variants.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
