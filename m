Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gM6kR-00037t-SW
 for barebox@lists.infradead.org; Mon, 12 Nov 2018 07:35:06 +0000
Date: Mon, 12 Nov 2018 08:34:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181112073449.e7qii7guvm4lsnte@pengutronix.de>
References: <20181110075954.32746-1-linux@rempel-privat.de>
 <20181110075954.32746-2-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181110075954.32746-2-linux@rempel-privat.de>
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
Subject: Re: [PATCH v1 1/5] commands: keystore: init s_len
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Sat, Nov 10, 2018 at 08:59:50AM +0100, Oleksij Rempel wrote:
> if read_file_2 will fail, s_len will stay uninitialized.
> 
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  commands/keystore.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/commands/keystore.c b/commands/keystore.c
> index 52c4be263..50a6c8494 100644
> --- a/commands/keystore.c
> +++ b/commands/keystore.c
> @@ -15,7 +15,7 @@ static int do_keystore(int argc, char *argv[])
>  	const char *file = NULL;
>  	char *secret_str = NULL;
>  	void *secret;
> -	int s_len;
> +	int s_len = 0;

if read_file_2 fails then s_len is also not used.

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
