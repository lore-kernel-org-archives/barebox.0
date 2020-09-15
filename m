Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kI86z-00056B-Hr
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 10:22:58 +0000
Date: Tue, 15 Sep 2020 12:22:47 +0200
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20200915102247.ltdgdajif6dwgrle@pengutronix.de>
References: <20200915094417.957978-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200915094417.957978-1-ahmad@a3f.at>
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
Subject: Re: [PATCH v2] regulator: provide regulator_get_name() stub for
 !CONFIG_REGULATOR
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Tue, Sep 15, 2020 at 11:44:17AM +0200, Ahmad Fatoum wrote:
> Otherwise users of this function run into a link error when regulator
> support is compiled out.
> 
> Reported-by: Roland Hieber <rhi@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>

Thanks!
Tested-by: Roland Hieber <rhi@pengutronix.de>

> ---
> Forgot to commit a deleted semicolon..
> ---
>  include/regulator.h | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/include/regulator.h b/include/regulator.h
> index 12d8e816cdb1..a9cb6dedca5e 100644
> --- a/include/regulator.h
> +++ b/include/regulator.h
> @@ -175,6 +175,11 @@ static inline struct regulator *regulator_get(struct device_d *dev, const char *
>  	return NULL;
>  }
>  
> +static inline struct regulator *regulator_get_name(const char *name)
> +{
> +	return NULL;
> +}
> +
>  static inline int regulator_enable(struct regulator *r)
>  {
>  	return 0;
> -- 
> 2.28.0
> 
> 

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
