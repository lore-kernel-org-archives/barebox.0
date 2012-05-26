Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SYDWv-0007Lx-EL
 for barebox@lists.infradead.org; Sat, 26 May 2012 09:43:26 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 0D8A3FF89B6
 for <barebox@lists.infradead.org>; Sat, 26 May 2012 11:46:24 +0200 (CEST)
Date: Sat, 26 May 2012 11:43:29 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120526094329.GI2202@game.jcrosoft.org>
References: <1337269578-20570-1-git-send-email-eric@eukrea.com>
 <1337269578-20570-10-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337269578-20570-10-git-send-email-eric@eukrea.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 10/16] fs/tftp: depend on NET_TFTP
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 17:46 Thu 17 May     , Eric B=E9nard wrote:
> else the option remains selected when network gets disabled
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  fs/Kconfig |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> =

> diff --git a/fs/Kconfig b/fs/Kconfig
> index e5f307f..0aa73df 100644
> --- a/fs/Kconfig
> +++ b/fs/Kconfig
> @@ -22,6 +22,7 @@ config FS_DEVFS
>  config FS_TFTP
>  	bool
>  	prompt "tftp support"
> +	depends on NET_TFTP
why such depends on?

the tftp support is an alternative to the old NET_TFTP

on NET ok NET_TFTP nack

Bset Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
