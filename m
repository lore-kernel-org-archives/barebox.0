Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp69.iad3a.emailsrvr.com ([173.203.187.69])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d81gT-00011x-1L
 for barebox@lists.infradead.org; Tue, 09 May 2017 09:43:58 +0000
References: <20170508181031.25106-1-s.hauer@pengutronix.de>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <bb74302d-ee13-77af-fccc-351e93bee0c4@mev.co.uk>
Date: Tue, 9 May 2017 10:43:32 +0100
MIME-Version: 1.0
In-Reply-To: <20170508181031.25106-1-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] globalvar: Fix value of new globalvar when nvvar exists
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

On 08/05/17 19:10, Sascha Hauer wrote:
> When a new globalvar with a value is created and the corresponding
> nvvar exists, then the globalvar gets the value of the nvvar, not
> from the newly assigned value as expected.
>
> nv quux=foo; global quux=bar; echo ${global.quux}
>
> Should give "bar", not "foo". Fix this.
>
> Reported-by: Ian Abbott <abbotti@mev.co.uk>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/globalvar.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/common/globalvar.c b/common/globalvar.c
> index c48e7df067..c528b24062 100644
> --- a/common/globalvar.c
> +++ b/common/globalvar.c
> @@ -403,11 +403,11 @@ int globalvar_add_simple(const char *name, const char *value)
>  			return PTR_ERR(param);
>  	}
>
> +	globalvar_nv_sync(name);
> +
>  	if (value)
>  		dev_set_param(&global_device, name, value);
>
> -	globalvar_nv_sync(name);
> -
>  	return 0;
>  }

This seems to work.  Thanks.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
