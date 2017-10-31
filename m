Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from stcim.de ([2a01:4f8:120:63a3::2])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e9ahe-0001I0-VE
 for barebox@lists.infradead.org; Tue, 31 Oct 2017 17:51:57 +0000
Date: Tue, 31 Oct 2017 18:51:25 +0100
From: Stefan Lengfeld <contact@stefanchrist.eu>
Message-ID: <20171031175125.GA620@sill.h.stcim.de>
References: <20171030103421.15353-1-ejo@pengutronix.de>
 <20171030103421.15353-2-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171030103421.15353-2-ejo@pengutronix.de>
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
Subject: Re: [PATCH 1/5] commands: nv: fail with verbose message if invoked
 without args
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de

Hi Jorns,

On Mon, Oct 30, 2017 at 11:34:17AM +0100, Enrico Jorns wrote:
> Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
> ---
>  commands/nv.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/commands/nv.c b/commands/nv.c
> index 37cdb96647..1c5514dd32 100644
> --- a/commands/nv.c
> +++ b/commands/nv.c
> @@ -56,6 +56,7 @@ static int do_nv(int argc, char *argv[])
>       argv += optind;
>
>       if (argc < 1)
> +             printf("Invalid usage: Missing argument");
>               return COMMAND_ERROR_USAGE;

Missing curly brackets for if clause. Indentation does not matter in C
as it does in for example python. Now the function returns always
'COMMAND_ERROR_USAGE'.

Kind regards
    Stefan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
