Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hThfA-0003B6-87
 for barebox@lists.infradead.org; Thu, 23 May 2019 06:57:17 +0000
Date: Thu, 23 May 2019 08:57:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190523065712.isc4cdwsnbqvmtf7@pengutronix.de>
References: <1558449853-28519-1-git-send-email-j.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558449853-28519-1-git-send-email-j.remmet@phytec.de>
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
Subject: Re: [PATCH] common: state: check length
To: Jan Remmet <j.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, May 21, 2019 at 04:44:13PM +0200, Jan Remmet wrote:
> if written_length is read from a partial written bucket it may be to
> big and xmalloc will panic barebox.
> 
> Check if the value is sane.
> 
> Signed-off-by: Jan Remmet <j.remmet@phytec.de>
> ---
>  common/state/backend_bucket_direct.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
> index 95ddb9310685..fc633eea8dec 100644
> --- a/common/state/backend_bucket_direct.c
> +++ b/common/state/backend_bucket_direct.c
> @@ -67,6 +67,10 @@ static int state_backend_bucket_direct_read(struct state_backend_storage_bucket
>  	}
>  	if (meta.magic == direct_magic) {
>  		read_len = meta.written_length;
> +		if (read_len < 0 || read_len > direct->max_size) {

written_length in struct state_backend_storage_bucket_direct_meta is
unsigned and so should be read_len. Then you can skip the read_len < 0
check.

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
