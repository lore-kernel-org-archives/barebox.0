Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WsU0n-00037F-3t
 for barebox@lists.infradead.org; Thu, 05 Jun 2014 09:31:05 +0000
Received: by mail-la0-f49.google.com with SMTP id pv20so392245lab.8
 for <barebox@lists.infradead.org>; Thu, 05 Jun 2014 02:30:41 -0700 (PDT)
Date: Thu, 5 Jun 2014 13:42:09 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140605134209.400c673c7501ff06d15fa926@gmail.com>
In-Reply-To: <1401956624-31802-5-git-send-email-s.hauer@pengutronix.de>
References: <1401956624-31802-1-git-send-email-s.hauer@pengutronix.de>
 <1401956624-31802-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 4/9] mips: dlink-dir-320: refresh defconfig
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu,  5 Jun 2014 10:23:39 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

'[PATCH] MIPS: dlink-dir-320_defconfig: drop duplicated symbols':
  http://lists.infradead.org/pipermail/barebox/2014-May/019272.html

My original patch has no duplicates either:
  http://lists.infradead.org/pipermail/barebox/2014-May/019244.html

> Fixes:
> =

> arch/mips/configs/dlink-dir-320_defconfig:52:warning: override: reassigni=
ng to symbol CMD_DHCP
> arch/mips/configs/dlink-dir-320_defconfig:54:warning: override: reassigni=
ng to symbol CMD_PING
> arch/mips/configs/dlink-dir-320_defconfig:55:warning: override: reassigni=
ng to symbol CMD_TFTP
> arch/mips/configs/dlink-dir-320_defconfig:64:warning: override: reassigni=
ng to symbol FS_TFTP
> =

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/mips/configs/dlink-dir-320_defconfig | 4 ----
>  1 file changed, 4 deletions(-)
> =

> diff --git a/arch/mips/configs/dlink-dir-320_defconfig b/arch/mips/config=
s/dlink-dir-320_defconfig
> index 2ff9dd7..ab29cf3 100644
> --- a/arch/mips/configs/dlink-dir-320_defconfig
> +++ b/arch/mips/configs/dlink-dir-320_defconfig
> @@ -49,11 +49,7 @@ CONFIG_CMD_OF_PROPERTY=3Dy
>  CONFIG_CMD_OFTREE=3Dy
>  CONFIG_CMD_TIME=3Dy
>  CONFIG_NET=3Dy
> -CONFIG_CMD_DHCP=3Dy
>  CONFIG_NET_NFS=3Dy
> -CONFIG_CMD_PING=3Dy
> -CONFIG_CMD_TFTP=3Dy
> -CONFIG_FS_TFTP=3Dy
>  CONFIG_NET_NETCONSOLE=3Dy
>  CONFIG_NET_RESOLV=3Dy
>  CONFIG_OFDEVICE=3Dy
> -- =

> 2.0.0.rc2
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
