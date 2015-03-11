Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YVZ5T-0001Pu-Qb
 for barebox@lists.infradead.org; Wed, 11 Mar 2015 05:21:44 +0000
Date: Wed, 11 Mar 2015 06:21:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150311052120.GK24885@pengutronix.de>
References: <20150310141659.GH30554@ns203013.ovh.net>
 <1425997697-27467-1-git-send-email-plagnioj@jcrosoft.com>
 <1425997697-27467-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425997697-27467-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/7] digest: make it multi-instance
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Mar 10, 2015 at 03:28:12PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Now you need to call digest_alloc and when you finish to use it digest_free.
> 
> We need this for upcomming aes encryption support and secure boot
> as we will need multiple instance of the same digest.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  commands/digest.c |  3 ++-
>  common/digest.c   | 50 ++++++++++++++++++++++++++++++++++++++++----------
>  common/password.c |  5 +++--
>  crypto/md5.c      | 34 +++++++++++-----------------------
>  crypto/sha1.c     | 34 +++++++++++-----------------------
>  crypto/sha2.c     | 55 ++++++++++++++++++++-----------------------------------
>  include/digest.h  | 26 +++++++++++++++++---------
>  7 files changed, 104 insertions(+), 103 deletions(-)
> 
> diff --git a/commands/digest.c b/commands/digest.c
> index bad7d3f..c6a2751 100644
> --- a/commands/digest.c
> +++ b/commands/digest.c
> @@ -33,7 +33,7 @@ static int do_digest(char *algorithm, int argc, char *argv[])
>  	int i;
>  	unsigned char *hash;
>  
> -	d = digest_get_by_name(algorithm);
> +	d = digest_alloc(algorithm);
>  	BUG_ON(!d);
>  
>  	if (argc < 2)
> @@ -71,6 +71,7 @@ static int do_digest(char *algorithm, int argc, char *argv[])
>  	}
>  
>  	free(hash);
> +	digest_free(d);
>  
>  	return ret;
>  }
> diff --git a/common/digest.c b/common/digest.c
> index 789c0b2..89af862 100644
> --- a/common/digest.c
> +++ b/common/digest.c
> @@ -28,12 +28,14 @@
>  
>  static LIST_HEAD(digests);
>  
> +static struct digest_algo* digest_algo_get_by_name(char* name);

The coding style is to put the '*' adjacent to the data name or function
name, not adjacent to the type name. Please stick to it. A patch to
clean this up first in this file would be very welcomed.

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
