Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WcspQ-0005Fd-Al
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 08:46:57 +0000
Date: Wed, 23 Apr 2014 10:46:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140423084629.GF5858@pengutronix.de>
References: <1397547514-19925-1-git-send-email-antonynpavlov@gmail.com>
 <1397547514-19925-6-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1397547514-19925-6-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 05/10] resource: add create_resource() helper function
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Apr 15, 2014 at 11:38:29AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  common/resource.c      | 15 +++++++++++++++
>  include/linux/ioport.h |  2 ++
>  2 files changed, 17 insertions(+)
> 
> diff --git a/common/resource.c b/common/resource.c
> index fe4680e..b6c7c87 100644
> --- a/common/resource.c
> +++ b/common/resource.c
> @@ -143,3 +143,18 @@ struct resource *request_ioport_region(const char *name,
>  {
>  	return __request_region(&ioport_resource, name, start, end);
>  }
> +
> +struct resource *create_resource(const char *name,
> +	resource_size_t start, resource_size_t end)
> +{
> +	struct resource *t;
> +
> +	t = xzalloc(sizeof *t);
> +	INIT_LIST_HEAD(&t->children);
> +	t->parent = NULL;
> +	t->name = xstrdup(name);
> +	t->start = start;
> +	t->end = end;

How about calling init_resource() and skip the fields already initialized
there from this function? This makes sure new fields in struct resource
can be initialized in a single place.

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
