Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out7.bezeqint.net ([192.115.188.214])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QsTwl-0006x9-5h
	for barebox@lists.infradead.org; Sun, 14 Aug 2011 06:13:20 +0000
Message-ID: <4E47675F.2040706@wellsense-tech.com>
Date: Sun, 14 Aug 2011 09:12:47 +0300
From: Boaz Ben-David <boaz.bd@wellsense-tech.com>
MIME-Version: 1.0
References: <1299683846-20616-1-git-send-email-jbe@pengutronix.de>
	<1299683846-20616-6-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1299683846-20616-6-git-send-email-jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/5] Add multi environment support
To: Juergen Beisert <jbe@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Luotao Fu <l.fu@pengutronix.de>

On 03/09/11 17:17, Juergen Beisert wrote:
> From: Luotao Fu<l.fu@pengutronix.de>
>
> We can deal with multiple environments now in our barebox. With this option
> enabled barebox will scan all environment partions on start up and load the
> environment from the first loadable environment partition it finds. Also it will
> check the content of all environment parttions and autmotically synchronize
> content of any outdated partition.
>
> Signed-off-by: Luotao Fu<l.fu@pengutronix.de>
> Acked-by: Juergen Beisert<jbe@pengutronix.de>
> ---
>   common/Kconfig   |   11 +++++++++
>   common/startup.c |   63 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
>   2 files changed, 74 insertions(+), 0 deletions(-)
>
> diff --git a/common/Kconfig b/common/Kconfig
> index 02bc67e..272f146 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -53,6 +53,17 @@ config LOCALVERSION_AUTO
>
>   	  which is done within the script "scripts/setlocalversion".)
>
> +config MULTI_ENV_HANDLING
> +	select ENV_HANDLING
> +	bool "Enable handling multiple environment partitions"
> +	help
> +	  Barebox can handle multiple environments. With this option enabled,
> +	  barebox will scan all environment partions on start up and
> +	  load the environment from the first loadable environment partition
> +	  it finds. Also it will check if the content of all environment
> +	  partitions are synchronized and automatically synchronize content of
> +	  the outdated partition.
> +
>   config BOARDINFO
>   	string
>
> diff --git a/common/startup.c b/common/startup.c
> index 32a8aa0..759d694 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -128,8 +128,71 @@ static int __maybe_unused init_single_envfs_load(void)
>   	return 0;
>   }
>
> +static int __maybe_unused init_multi_envfs_load(void)
> +{
> +	char *dirname = "/env";
> +	char file[9 + 5];	/* '/dev/env.....' */
> +	int i = 0, j = 0, no_more_parts = 0;
> +	int crc = 0, crc_ref = 0;
> +	int rc;
> +	struct stat file_info;
> +
> +	while (1) {
> +		sprintf(file, "/dev/env%d", i);
> +
> +		if (stat(file,&file_info) != 0) {
> +			no_more_parts = 1;
> +			break;
> +		}
> +
> +		/* first loadable environment is considered to be
> +		 * reference */
> +		if (envfs_load(file, dirname,&crc_ref) == 0)
> +			break;
> +
> +		i++;
> +	}
> +
> +	/* no loadable environment partition found */
> +	if (no_more_parts == 1) {
> +		load_default_environment();
> +		goto out;
> +	}
> +
> +	/* Now try to restore, if any, the previous failed partitions */
> +	for (j = 0; j<  i; j++) {
> +		sprintf(file, "/dev/env%d", j);
> +		if (envfs_save(file, dirname))
> +			printf("failed to sync environment on %s\n", file);
> +	}
> +
> +	/* proceed to scan further env partitions */
> +	while (1) {
> +		i++;
> +		sprintf(file, "/dev/env%d", i);
> +
> +		if (stat(file,&file_info) != 0)
> +			break;
> +
> +		/* sync partition if loading failed or crc mismatch with
> +		 * the reference */
> +		rc = envfs_load(file, NULL,&crc);
> +		if (rc != 0 || crc != crc_ref) {
> +			if (envfs_save(file, dirname))
> +				printf("failed to sync environment on %s\n",
> +						file);
> +		}
> +	}
> +out:
> +	return 0;
> +}
> +
>   #ifdef CONFIG_ENV_HANDLING
> +# ifdef CONFIG_MULTI_ENV_HANDLING
> +late_initcall(init_multi_envfs_load);
> +# else
>   late_initcall(init_single_envfs_load);
> +# endif
>   #endif
>
>   void start_barebox (void)

Using this patch on a iMX35 variant I noticed a problem with the envs 
recovery.
If on boot we have a broken env partition and we need to recover it from 
a working one, don't we
have to first erase the partition?
As I was testing this I got I/O error from the partition after recovery 
which went away when I added an erasure of the
partition before writing to it.

Boaz.






_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
