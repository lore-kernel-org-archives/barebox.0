Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwBmF-0001KN-MN
	for barebox@lists.infradead.org; Mon, 29 Mar 2010 10:01:00 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1NwBmE-0006UA-8r
	for barebox@lists.infradead.org; Mon, 29 Mar 2010 12:00:58 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1NwBmE-000898-5S
	for barebox@lists.infradead.org; Mon, 29 Mar 2010 12:00:58 +0200
Date: Mon, 29 Mar 2010 12:00:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100329100058.GG2241@pengutronix.de>
References: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
	<1269855383-22716-12-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1269855383-22716-12-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 11/12] hush: only remove backslashes introduced from glob
To: barebox@lists.infradead.org

On Mon, Mar 29, 2010 at 11:36:22AM +0200, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/hush.c |    5 +++--
>  1 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/common/hush.c b/common/hush.c
> index 6a8b56b..afa67d1 100644
> --- a/common/hush.c
> +++ b/common/hush.c
> @@ -779,8 +779,9 @@ static int globhack(const char *src, int flags, glob_t *pglob)
>  	int cnt=0, pathc;
>  	const char *s;
>  	char *dest;
> +
>  	for (cnt=1, s=src; s && *s; s++) {
> -		if (*s == '\\') s++;
> +		if (*s == '\\' && strchr("*[?", *(s + 1))) s++;
>  		cnt++;
>  	}
>  	dest = xmalloc(cnt);
> @@ -794,7 +795,7 @@ static int globhack(const char *src, int flags, glob_t *pglob)
>  	pglob->gl_pathv[pathc-1] = dest;
>  	pglob->gl_pathv[pathc] = NULL;
>  	for (s=src; s && *s; s++, dest++) {
> -		if (*s == '\\') s++;
> +		if (*s == '\\' && strchr("*[?", *(s + 1))) s++;
>  		*dest = *s;
>  	}
>  	*dest='\0';


This patch also fixes a quoting workaround found in many
/env/bin/_update scripts:

if [ \! -e "$part" ]; then
        echo "Partition $part does not exist"
        exit 1
fi

The backslash is not needed anymore (and in fact now breaks the script)

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
