Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f53.google.com ([209.85.220.53])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TwfCi-00017S-UM
 for barebox@lists.infradead.org; Sat, 19 Jan 2013 20:39:53 +0000
Received: by mail-pa0-f53.google.com with SMTP id hz1so2708827pad.26
 for <barebox@lists.infradead.org>; Sat, 19 Jan 2013 12:39:49 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1358613446-1168-2-git-send-email-plagnioj@jcrosoft.com>
References: <20130119163524.GC26329@game.jcrosoft.org>
 <1358613446-1168-1-git-send-email-plagnioj@jcrosoft.com>
 <1358613446-1168-2-git-send-email-plagnioj@jcrosoft.com>
Date: Sun, 20 Jan 2013 00:39:49 +0400
Message-ID: <CAA4bVAEWPR3YcmfN-=AYEfOxR5wHZdAwSFq4necMhtUkkJ_jZQ@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 2/9] filetype: add is_barebox_head
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 19 January 2013 20:37, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
> to detect if it's a barebox for the current running arch
>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  include/filetype.h |    5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/include/filetype.h b/include/filetype.h
> index c2af917..05b0f5c 100644
> --- a/include/filetype.h
> +++ b/include/filetype.h
> @@ -66,4 +66,9 @@ static inline int is_barebox_mips_head(const char *head)
>  }
>  #endif
>
> +static inline int is_barebox_head(const char *head)
> +{
> +       return is_barebox_mips_head(head) || is_barebox_mips_head(head);
> +}
> +

There are too many MIPSes here!

>  #endif /* __FILE_TYPE_H */
> --
> 1.7.10.4
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
