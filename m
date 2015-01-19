Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22f.google.com ([2a00:1450:4010:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDDBw-0006QW-W3
 for barebox@lists.infradead.org; Mon, 19 Jan 2015 14:20:33 +0000
Received: by mail-la0-f47.google.com with SMTP id hv19so1592415lab.6
 for <barebox@lists.infradead.org>; Mon, 19 Jan 2015 06:20:11 -0800 (PST)
Date: Mon, 19 Jan 2015 18:22:46 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150119182246.9b8de2e026a0d0b436ff9421@gmail.com>
In-Reply-To: <1421670584-24287-1-git-send-email-plagnioj@jcrosoft.com>
References: <1421670584-24287-1-git-send-email-plagnioj@jcrosoft.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] raspberry-pi: mac address detection support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, 19 Jan 2015 13:29:44 +0100
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:

> increase the mbox timeout as it take more time to retreive the mac
> =

> fix led register too
> =

> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
...
> diff --git a/arch/arm/mach-bcm2835/mbox.c b/arch/arm/mach-bcm2835/mbox.c
> index 2bca567..0e51f08 100644
> --- a/arch/arm/mach-bcm2835/mbox.c
> +++ b/arch/arm/mach-bcm2835/mbox.c
> @@ -13,7 +13,7 @@
>  =

>  #include <mach/mbox.h>
>  =

> -#define TIMEOUT (MSECOND * 100) /* 100mS */
> +#define TIMEOUT (MSECOND * 1000) /* 100mS */
>  =


+#define TIMEOUT (MSECOND * 1000) /* 1000mS */

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
