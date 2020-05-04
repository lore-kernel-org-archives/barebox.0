Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVZHM-0007qA-6G
 for barebox@lists.infradead.org; Mon, 04 May 2020 11:28:59 +0000
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com
 [209.85.222.46]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id 044BSKCt026679
 for <barebox@lists.infradead.org>; Mon, 4 May 2020 20:28:20 +0900
Received: by mail-ua1-f46.google.com with SMTP id s5so6434691uad.4
 for <barebox@lists.infradead.org>; Mon, 04 May 2020 04:28:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200430044252.762041-1-masahiroy@kernel.org>
In-Reply-To: <20200430044252.762041-1-masahiroy@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 4 May 2020 20:27:43 +0900
Message-ID: <CAK7LNATNtaynZmZ4bo6AJS4sRvXqmz8KOEiWXDmyxUTFZ+xJPg@mail.gmail.com>
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
Subject: Re: [PATCH] kbuild: add $(always-y) to 'targets'
To: Barebox List <barebox@lists.infradead.org>

On Thu, Apr 30, 2020 at 1:43 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> I missed to sync this line in commit 421108c51da4 ("kbuild: rename
> hostprogs-y/always to hostprogs/always-y").
>
> Since then, the files in always(-y) are needlessly rebuilt.

This line is not precise because the files in $(always) are fine.
If it is not too late, could you please reword this line as follows ?


Since then, the files in $(always-y) are needlessly rebuilt.








>
> Fixes: 421108c51da4 ("kbuild: rename hostprogs-y/always to hostprogs/always-y")
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  scripts/Makefile.build | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 8c28ccb8e..acb0d68b8 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -243,7 +243,7 @@ pbl-%.o: %.S FORCE
>         $(call if_changed_dep,as_o_S)
>
>  targets += $(real-objs-y) $(real-objs-m) $(lib-y) $(pbl-y)
> -targets += $(extra-y) $(MAKECMDGOALS) $(always)
> +targets += $(extra-y) $(always-y) $(MAKECMDGOALS)
>
>  # Linker scripts preprocessor (.lds.S -> .lds)
>  # ---------------------------------------------------------------------------
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
