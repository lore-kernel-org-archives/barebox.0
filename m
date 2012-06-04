Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SbSyO-0000OB-3z
 for barebox@lists.infradead.org; Mon, 04 Jun 2012 08:49:12 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 4 Jun 2012 10:47:44 +0200
References: <1337151896-5888-1-git-send-email-s.hauer@pengutronix.de>
 <1337151896-5888-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1337151896-5888-3-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201206041047.45047.jbe@pengutronix.de>
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
Subject: Re: [PATCH 2/3] Add next generation default environment template
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> [...]
> diff --git a/defaultenv-2/base/init/bootargs-base
> b/defaultenv-2/base/init/bootargs-base new file mode 100644
> index 0000000..8e588ad
> --- /dev/null
> +++ b/defaultenv-2/base/init/bootargs-base
> @@ -0,0 +1,8 @@
> +#!/bin/sh
> +
> +if [ "$1" =3D menu ]; then
> +=A0=A0=A0=A0=A0=A0=A0init-menu-add-entry "$0" "Base bootargs"
> +=A0=A0=A0=A0=A0=A0=A0exit
> +fi
> +
> +global.linux.bootargs.base=3D"console=3DttyS0,115200"
> [...]

Seems if you want to change the console setting here, you always have to sa=
ve =

the change and restart the system to take affect of the new value when =

the 'boot' command is running. Old behaviour was an immediate change withou=
t =

saving and restarting. This was a nice behaviour when one just wants to try=
 a =

different parameter without destroying the old environment.

jbe

-- =

Pengutronix e.K.                              | Juergen Beisert            =
 |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/ =
 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
