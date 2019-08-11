Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwkd5-0007ZU-4a
 for barebox@lists.infradead.org; Sun, 11 Aug 2019 09:59:12 +0000
Received: by mail-lj1-x241.google.com with SMTP id p17so95874006ljg.1
 for <barebox@lists.infradead.org>; Sun, 11 Aug 2019 02:59:10 -0700 (PDT)
Date: Sun, 11 Aug 2019 12:59:05 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20190811125905.6fc213ce18ee414156f482ab@gmail.com>
In-Reply-To: <20181218071943.2560-10-antonynpavlov@gmail.com>
References: <20181218071943.2560-1-antonynpavlov@gmail.com>
 <20181218071943.2560-10-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v3 09/10] scripts: add nmon-loader
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 18 Dec 2018 10:19:42 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

Hi Sascha!

It looks like this patch is missed in the master branch.
Please apply the patch!


> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  scripts/nmon-loader | 31 +++++++++++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
> =

> diff --git a/scripts/nmon-loader b/scripts/nmon-loader
> new file mode 100755
> index 0000000000..d80a53097a
> --- /dev/null
> +++ b/scripts/nmon-loader
> @@ -0,0 +1,31 @@
> +#!/usr/bin/expect -f
> +
> +# device
> +set image [lindex $argv 0];
> +set modem [lindex $argv 1];
> +set speed [lindex $argv 2];
> +
> +if {$argc !=3D 3} {
> +    puts "Usage:"
> +    puts "    nmon-loader.expect <file> <device> <speed>"
> +    exit 2
> +}
> +
> +# keep it open
> +exec sh -c "sleep 3 < $modem" &
> +
> +# serial port parameters
> +exec stty -F $modem $speed raw -clocal -echo -istrip -hup
> +
> +# connect
> +send_user "connecting to $modem, exit with ~.\n"
> +spawn -open [open $modem w+]
> +send_user "connected\n"
> +send "\r"
> +
> +source $image
> +
> +interact {
> +    ~- exit
> +    ~~ {send "\034"}
> +}
> -- =

> 2.20.0
> =



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
