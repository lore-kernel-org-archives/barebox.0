Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp125.ord1d.emailsrvr.com ([184.106.54.125])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQRrU-0004yv-UK
 for barebox@lists.infradead.org; Tue, 14 May 2019 07:28:34 +0000
References: <bafb7600-4351-2c80-d78f-35d59ae559ba@pengutronix.de>
 <20190514021954.11834-1-gneukum1@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <f7c0782a-22df-9d1f-3699-de3cf220962d@mev.co.uk>
Date: Tue, 14 May 2019 08:28:29 +0100
MIME-Version: 1.0
In-Reply-To: <20190514021954.11834-1-gneukum1@gmail.com>
Content-Language: en-GB
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
Subject: Re: [PATCH] LICENSES: modify .gitignore files to be nonempty
To: Geordan Neukum <gneukum1@gmail.com>, barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de

On 14/05/2019 03:19, Geordan Neukum wrote:
> The .gitignore files under the LICENSES/exceptions and LICENSES/other
> directories cannot have a size of 0 or else they are subject to removal
> by the make target 'distclean'. Modify the .gitignore files to
> ignore all files except for themselves. These .gitignores can be
> updated further or removed outright as new licenses are added to these
> directories in the future.
> 
> Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
> ---
>   LICENSES/exceptions/.gitignore | 4 ++++
>   LICENSES/other/.gitignore      | 4 ++++
>   2 files changed, 8 insertions(+)
> 
> diff --git a/LICENSES/exceptions/.gitignore b/LICENSES/exceptions/.gitignore
> index e69de29bb..d5e7eacf3 100644
> --- a/LICENSES/exceptions/.gitignore
> +++ b/LICENSES/exceptions/.gitignore
> @@ -0,0 +1,4 @@
> +# Ignore everything in this directory
> +*
> +# Except for this file
> +!.gitignore
> diff --git a/LICENSES/other/.gitignore b/LICENSES/other/.gitignore
> index e69de29bb..d5e7eacf3 100644
> --- a/LICENSES/other/.gitignore
> +++ b/LICENSES/other/.gitignore
> @@ -0,0 +1,4 @@
> +# Ignore everything in this directory
> +*
> +# Except for this file
> +!.gitignore
> 

I may be missing something, but why not have just a comment line?

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
