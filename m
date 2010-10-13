Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P5yPB-0000wX-GV
	for barebox@lists.infradead.org; Wed, 13 Oct 2010 10:17:59 +0000
Date: Wed, 13 Oct 2010 12:08:59 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101013100859.GN7412@game.jcrosoft.org>
References: <1286963684-16359-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1286963684-16359-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH] unbreak bootm
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 11:54 Wed 13 Oct     , Eric B=E9nard wrote:
> commit a3c1e5d888d0ee317ffc7635694684bb71213c9c was
> not tested as all the tests are wrong and it breaks bootm
I test it but no see it
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  commands/bootm.c |    6 +++---
>  1 files changed, 3 insertions(+), 3 deletions(-)
> =

> diff --git a/commands/bootm.c b/commands/bootm.c
> index 83d36d3..666deeb 100644
> --- a/commands/bootm.c
> +++ b/commands/bootm.c
> @@ -167,7 +167,7 @@ struct image_handle *map_image(const char *filename, =
int verify)
>  		goto err_out;
>  	}
>  =

> -	if (image_check_magic(header)) {
> +	if (! image_check_magic(header)) {
no space after !
>  		puts ("Bad Magic Number\n");
>  		goto err_out;
>  	}
Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
