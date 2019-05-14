Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQVAx-0004kr-JD
 for barebox@lists.infradead.org; Tue, 14 May 2019 11:00:53 +0000
References: <20190514083556.yxzo5mjccpx2rikf@pengutronix.de>
 <20190514103713.3849-1-gneukum1@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <305f7591-9491-d9f7-d583-6acfc0989720@pengutronix.de>
Date: Tue, 14 May 2019 13:00:48 +0200
MIME-Version: 1.0
In-Reply-To: <20190514103713.3849-1-gneukum1@gmail.com>
Content-Language: en-US
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
Subject: Re: [PATCH v2] LICENSES: modify .gitignore files to be nonempty
To: Geordan Neukum <gneukum1@gmail.com>, barebox@lists.infradead.org
Cc: abbotti@mev.co.uk, u.kleine-koenig@pengutronix.de

On 14/5/19 12:37, Geordan Neukum wrote:
> The .gitignore files under the LICENSES/exceptions and LICENSES/other
> directories cannot have a size of 0 or else they are subject to removal
> by the make target 'distclean'. Modify the .gitignore files to
> ignore all files except for themselves. This shall serve as a reminder
> that these .gitignores can and should be removed when new licenses are
> added.
> 
> Signed-off-by: Geordan Neukum <gneukum1@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
> Changes in v2: 
> - Added whitespace for readability's sake
> - Modified comment to specify intent more clearly 
>  
>  LICENSES/exceptions/.gitignore | 8 ++++++++
>  LICENSES/other/.gitignore      | 8 ++++++++
>  2 files changed, 16 insertions(+)
> 
> diff --git a/LICENSES/exceptions/.gitignore b/LICENSES/exceptions/.gitignore
> index e69de29bb..7323b9e1a 100644
> --- a/LICENSES/exceptions/.gitignore
> +++ b/LICENSES/exceptions/.gitignore
> @@ -0,0 +1,8 @@
> +# Placeholder as upstream checkpatch.pl requires this directory to exist
> +# This file can be removed when new files are added
> +
> +# Ignore everything in this directory
> +*
> +
> +# Except for this file
> +!.gitignore
> diff --git a/LICENSES/other/.gitignore b/LICENSES/other/.gitignore
> index e69de29bb..7323b9e1a 100644
> --- a/LICENSES/other/.gitignore
> +++ b/LICENSES/other/.gitignore
> @@ -0,0 +1,8 @@
> +# Placeholder as upstream checkpatch.pl requires this directory to exist
> +# This file can be removed when new files are added
> +
> +# Ignore everything in this directory
> +*
> +
> +# Except for this file
> +!.gitignore
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
