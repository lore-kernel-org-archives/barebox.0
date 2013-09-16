Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLTei-0003vx-6u
 for barebox@lists.infradead.org; Mon, 16 Sep 2013 07:55:36 +0000
Date: Mon, 16 Sep 2013 09:55:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130916075513.GU30088@pengutronix.de>
References: <1379175785-6885-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1379175785-6885-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] genenv: ignore *.orig file too
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Sep 14, 2013 at 06:23:05PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  scripts/genenv | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/genenv b/scripts/genenv
> index 374db6d..02af767 100755
> --- a/scripts/genenv
> +++ b/scripts/genenv
> @@ -24,7 +24,7 @@ for i in $*; do
>  done
>  )
>  
> -find $tempdir -name '.svn' -o -name '*~' | xargs --no-run-if-empty rm -r
> +find $tempdir -name '*.orig' -o -name '.svn' -o -name '*~' | xargs --no-run-if-empty rm -r

Should we ignore *.rej aswell?

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
