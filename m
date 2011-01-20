Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PfqLC-0007DL-MC
	for barebox@lists.infradead.org; Thu, 20 Jan 2011 08:58:07 +0000
Message-ID: <4D37F90D.1000707@eukrea.com>
Date: Thu, 20 Jan 2011 09:57:49 +0100
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <1295513272-22108-1-git-send-email-s.hauer@pengutronix.de>
	<1295513272-22108-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295513272-22108-3-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] defaultenv: do not print usage information for update
	script
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On 20/01/2011 09:47, Sascha Hauer wrote:
> This usage printout during startup more looks like there is
> something wrong with the environment than a helpful message.
>
> Signed-off-by: Sascha Hauer<s.hauer@pengutronix.de>
> Cc: Jean-Christophe PLAGNIOL-VILLARD<plagnioj@jcrosoft.com>
Acked-by: Eric B=E9nard <eric@eukrea.com>
> ---
>   defaultenv/bin/init |    3 ---
>   1 files changed, 0 insertions(+), 3 deletions(-)
>
> diff --git a/defaultenv/bin/init b/defaultenv/bin/init
> index 877b541..b66f7d9 100644
> --- a/defaultenv/bin/init
> +++ b/defaultenv/bin/init
> @@ -28,9 +28,6 @@ echo
>   echo -n "Hit any key to stop autoboot: "
>   timeout -a $autoboot_timeout
>   if [ $? !=3D 0 ]; then
> -	echo
> -	update -h
> -	echo
>   	exit
>   fi
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
