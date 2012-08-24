Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T4qFY-0004eL-Fw
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 09:32:21 +0000
Received: by iaai1 with SMTP id i1so3118562iaa.36
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 02:32:19 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1345783818-28784-10-git-send-email-plagnioj@jcrosoft.com>
References: <20120824044613.GI6271@game.jcrosoft.org>
 <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
 <1345783818-28784-10-git-send-email-plagnioj@jcrosoft.com>
From: Roberto Nibali <rnibali@gmail.com>
Date: Fri, 24 Aug 2012 11:31:59 +0200
Message-ID: <CAONxwYO0RAf+3S3N1pXoB7VEgEsj30FOfyTHYkLYoNXMn798oA@mail.gmail.com>
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
Subject: Re: [PATCH 10/18] commands: add readlink support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe

Btw, congrats on such a good and lean work on the symlink implementation!

> ---
>  commands/Kconfig    |    6 ++++
>  commands/Makefile   |    1 +
>  commands/readlink.c |   78 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 85 insertions(+)
>  create mode 100644 commands/readlink.c
>
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 92a8152..876f2f8 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -220,6 +220,12 @@ config CMD_DIRNAME
>           Strip last component of file name and store the result in a
>           environment variable
>
> +config CMD_READLINK
> +       tristate
> +       prompt "readlink"
> +       help
> +         read value of a symbolic link
> +

Just a general two cents comment: how about generally rephrasing the
"read value of a symbolic link" to "display file status of a symbolic
link"?

Cheers
Roberto

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
