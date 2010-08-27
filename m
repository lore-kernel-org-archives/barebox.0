Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Oorgq-0002g8-OS
	for barebox@lists.infradead.org; Fri, 27 Aug 2010 05:41:25 +0000
Date: Fri, 27 Aug 2010 07:41:23 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20100827054123.GC17521@pengutronix.de>
References: <1282886118-15217-1-git-send-email-plagnioj@jcrosoft.com>
	<1282886118-15217-4-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1282886118-15217-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 4/4] use resource_size_t for device ressoruces
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hello Jean-Christophe,

$SUBJECT ~=3D s/ressoruces/resources/

On Fri, Aug 27, 2010 at 07:15:18AM +0200, Jean-Christophe PLAGNIOL-VILLARD =
wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  include/driver.h |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/include/driver.h b/include/driver.h
> index ae3e777..eddbbf3 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -70,11 +70,11 @@ struct device_d {
>  	int id;
>  =

>  	/*! FIXME */
What is this fixme about?  Can it be removed?

> -	unsigned long size;
> +	resource_size_t size;
>  =

>  	/*! For devices which are directly mapped into memory, i.e. NOR
>  	 * Flash or SDRAM. */
> -	unsigned long map_base;
> +	resource_size_t map_base;
>  =

>  	void *platform_data; /*! board specific information about this device */
>  =

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
