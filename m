Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Nq0kR-0004Ax-Bs
	for barebox@lists.infradead.org; Fri, 12 Mar 2010 09:01:36 +0000
Date: Fri, 12 Mar 2010 10:01:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100312090133.GP19843@pengutronix.de>
References: <1267786310.19729.11.camel@lws-weitzel>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1267786310.19729.11.camel@lws-weitzel>
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
Subject: Re: [Patch] hush exit code fix
To: Jan Weitzel <J.Weitzel@phytec.de>
Cc: barebox@lists.infradead.org

Hi Jan,

On Fri, Mar 05, 2010 at 11:51:50AM +0100, Jan Weitzel wrote:
> hush: pass return code from exit command within if statement
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> ---
> diff --git a/common/hush.c b/common/hush.c
> index cf6704b..ae09374 100644
> --- a/common/hush.c
> +++ b/common/hush.c
> @@ -535,10 +535,9 @@ static int run_pipe_real(struct pipe *pi)
>         if (pi->num_progs == 1)
>                 child = & (pi->progs[0]);
>         if (pi->num_progs == 1 && child->group) {
> -               int rcode;
>                 debug("non-subshell grouping\n");
> -               rcode = run_list_real(child->group);
> -               return rcode;
> +               run_list_real(child->group);
> +               return last_return_code;
>         } else if (pi->num_progs == 1 && pi->progs[0].argv != NULL) {
>                 for (i=0; is_assignment(child->argv[i]); i++) { /* nothing */ }
>                 if (i!=0 && child->argv[i]==NULL) {
> 
> 
> 

This does not solve the problem and introduces a new one:

barebox:/ cat /env/bin/bar
false
if [ $? != 0 ]; then
        echo tschuess
        exit
fi

echo hallo

barebox:/ bar
tschuess
hallo
barebox:/


Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
