Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMCDV-0001oa-Cx
 for barebox@lists.infradead.org; Wed, 18 Sep 2013 07:30:30 +0000
Date: Wed, 18 Sep 2013 09:30:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130918073007.GO30088@pengutronix.de>
References: <1379404733-7071-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1379404733-7071-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] command: crc: add -V option to check the crc store
 in a file
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 17, 2013 at 09:58:53AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> the format is %08x
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  commands/crc.c | 20 +++++++++++++++++++-
>  1 file changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/commands/crc.c b/commands/crc.c
> index a0071b0..b7416e1 100644
> --- a/commands/crc.c
> +++ b/commands/crc.c
> @@ -82,6 +82,19 @@ out:
>  	return ret;
>  }
>  
> +static int crc_from_file(const char* file, ulong *crc)
> +{
> +	char * buf;
> +
> +	buf= read_file(file, NULL);
> +
> +	if (!buf)
> +		return -ENOMEM;
> +
> +	*crc = simple_strtoul(buf, NULL, 16);
> +	return 0;
> +}
> +
>  static int do_crc(int argc, char *argv[])
>  {
>  	loff_t start = 0, size = ~0;
> @@ -92,7 +105,7 @@ static int do_crc(int argc, char *argv[])
>  #endif
>  	int opt, err = 0, filegiven = 0, verify = 0;
>  
> -	while((opt = getopt(argc, argv, "f:F:v:")) > 0) {
> +	while((opt = getopt(argc, argv, "f:F:v:V:")) > 0) {
>  		switch(opt) {
>  		case 'f':
>  			filename = optarg;
> @@ -108,6 +121,10 @@ static int do_crc(int argc, char *argv[])
>  			verify = 1;
>  			vcrc = simple_strtoul(optarg, NULL, 0);
>  			break;
> +		case 'V':
> +			if (!crc_from_file(optarg, &vcrc))
> +				verify = 1;
> +			break;
>  		default:
>  			return COMMAND_ERROR_USAGE;
>  		}
> @@ -153,6 +170,7 @@ BAREBOX_CMD_HELP_OPT  ("-f <file>", "Use file instead of memory.\n")
>  BAREBOX_CMD_HELP_OPT  ("-F <file>", "Use file to compare.\n")
>  #endif
>  BAREBOX_CMD_HELP_OPT  ("-v <crc>",  "Verify\n")
> +BAREBOX_CMD_HELP_OPT  ("-V <file>", "Verify\n")

Please increase verbosity a bit, like "Verify with crc read from <file>".

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
