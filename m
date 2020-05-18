Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jakSf-00015C-Cj
 for barebox@lists.infradead.org; Mon, 18 May 2020 18:26:03 +0000
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com
 [209.85.217.52]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id 04IIPQud010347
 for <barebox@lists.infradead.org>; Tue, 19 May 2020 03:25:27 +0900
Received: by mail-vs1-f52.google.com with SMTP id o26so6191614vsr.10
 for <barebox@lists.infradead.org>; Mon, 18 May 2020 11:25:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200518175458.178943-1-masahiroy@kernel.org>
In-Reply-To: <20200518175458.178943-1-masahiroy@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 19 May 2020 03:24:50 +0900
Message-ID: <CAK7LNAT_L2Wur8iDFpKPD_tCpNPCd4Lk-6epNMJGX2syMurjtw@mail.gmail.com>
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
Subject: Re: [PATCH 1/2] kconfig: add 'option modules' to allow tristate
 options to become m
To: Barebox List <barebox@lists.infradead.org>

On Tue, May 19, 2020 at 2:55 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Since commit 18895514dc5e ("kconfig: update to v3.18-rc6"), tristate
> symbols cannot become 'm'.
>
> In old days of Linux, CONFIG_MODULES was the special hard-coded in
> Kconfig.


Please reword this paragraph as follows:


In old days of Linux, CONFIG_MODULES was the special option hard-coded
in Kconfig.



>
> The current Kconfig does not know which option is it. You need to
> specify 'option modules' to teach Kconfig that it is the module
> support switch.
>
> Add 'option modules' to revive the module builds.
>
> Fixes: 18895514dc5e ("kconfig: update to v3.18-rc6")
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
> The module feature has been broken for 8 years,
> and nobody has pointed it out...
>
>  common/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/common/Kconfig b/common/Kconfig
> index 460ac487c..7a99d20bf 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -316,6 +316,7 @@ config MODULES
>         depends on HAS_MODULES
>         depends on EXPERIMENTAL
>         bool "module support"
> +       option modules
>         help
>           This option enables support for loadable modules via insmod. Module
>           support is quite experimental at the moment. There is no convenient
> --
> 2.25.1
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
