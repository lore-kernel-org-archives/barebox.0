Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from stcim.de ([2a01:4f8:120:63a3::2])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eeQeW-0005i6-Gi
 for barebox@lists.infradead.org; Wed, 24 Jan 2018 19:24:10 +0000
Date: Wed, 24 Jan 2018 20:23:51 +0100
From: Stefan Lengfeld <contact@stefanchrist.eu>
Message-ID: <20180124192351.GB521@porty>
References: <20180124074534.7966-1-s.hauer@pengutronix.de>
 <20180124074534.7966-5-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180124074534.7966-5-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 4/7] libfile: implement a function to cache a file
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha,

On Wed, Jan 24, 2018 at 08:45:31AM +0100, Sascha Hauer wrote:
> Due to the nature of TFTP which can't lseek and due to the silliness
> of our filesystem implementation which can't cache accesses we have to
> manually cache files on TFTP filesystems sometimes. Make it easier
> for them by providing a cache_file() function which copies the file
> from TFTP to RAM.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  include/libfile.h |  2 ++
>  lib/libfile.c     | 27 +++++++++++++++++++++++++++
>  2 files changed, 29 insertions(+)
> 
> diff --git a/include/libfile.h b/include/libfile.h
> index 6dbb81a241..beec7cff79 100644
> --- a/include/libfile.h
> +++ b/include/libfile.h
> @@ -28,4 +28,6 @@ int unlink_recursive(const char *path, char **failedpath);
>  
>  char *make_temp(const char *template);
>  
> +int cache_file(const char *path, char **newpath);
> +
>  #endif /* __LIBFILE_H */
> diff --git a/lib/libfile.c b/lib/libfile.c
> index 79054eb5ac..738ff1287d 100644
> --- a/lib/libfile.c
> +++ b/lib/libfile.c
> @@ -512,3 +512,30 @@ char *make_temp(const char *template)
>  
>  	return name;
>  }
> +
> +/**
> + * cache_file - Cache a file in /tmp
> + * @path:	The file to cache
> + * @newpath:	The return path where the file is copied to
> + *
> + * This function copies a given file to /tmp and returns its name in @newpath.

Maybe add an additional note here that the caller is responsible for
freeing the string returned in @newpath when the function exists
successfully. The string is allocated by the make_temp() function.

> + *
> + * Return: 0 for success, negative error code otherwise.
> + */
> +int cache_file(const char *path, char **newpath)
> +{
> +	char *npath;
> +	int ret;
> +
> +	npath = make_temp("filecache-");

No dash suffix needed in "filecache-". The make_temp() function already
adds a dash separator.

Kind regards,
Stefan

> +
> +	ret = copy_file(path, npath, 0);
> +	if (ret) {
> +		free(npath);
> +		return ret;
> +	}
> +
> +	*newpath = npath;
> +
> +	return 0;
> +}
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
