Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QTTVw-0004C4-Oh
	for barebox@lists.infradead.org; Mon, 06 Jun 2011 06:42:17 +0000
Date: Mon, 6 Jun 2011 08:42:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110606064214.GV23771@pengutronix.de>
References: <1307278012-17022-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1307278012-17022-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH] complete: add device complete support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi J,

Nice ;)

How about...

On Sun, Jun 05, 2011 at 02:46:52PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> with param complete support if <devname>.[xx]
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/complete.c |   68 +++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 files changed, 68 insertions(+), 0 deletions(-)
> 
> diff --git a/common/complete.c b/common/complete.c
> index 46ba871..398888a 100644
> --- a/common/complete.c
> +++ b/common/complete.c
> @@ -84,6 +84,72 @@ static int command_complete(struct string_list *sl, char *instr)
>  	return 0;
>  }
>  
> +static int device_param_complete(struct device_d *dev, struct string_list *sl, char *instr)
> +{
> +	struct param_d *param;
> +	char cmd[128];
> +	char *tmp;
> +	int len, len2;
> +
> +	len = strlen(instr);
> +	strcpy(cmd, dev_name(dev));
> +	len2 = strlen(dev_name(dev));
> +	tmp = cmd + len2;
> +	tmp[0] = '.';
> +	tmp++;
> +
> +	list_for_each_entry(param, &dev->parameters, list) {
> +		memset(tmp, 0x0, 128 - (int)(tmp - cmd));
> +		if (!strncmp(instr, param->name, len)) {
> +			strcpy(tmp, param->name);
> +			len2 = strlen(param->name);
> +			tmp[len2] = ' ';

tmp[len2] = '=';

> +			tmp[len2 + 1] = 0;
> +			string_list_add(sl, cmd);
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static int device_complete(struct string_list *sl, char *instr)
> +{
> +	struct device_d *dev;
> +	char *instr_param;
> +	char cmd[128];
> +	int len, len2;
> +
> +	instr_param = strrchr(instr, '.');
> +	if (instr_param) {
> +		*instr_param = 0;
> +		instr_param++;
> +	}
> +	len = strlen(instr);
> +
> +	if (instr_param) {
> +		for_each_device(dev) {
> +			if (!strcmp(instr, dev_name(dev)))
> +				device_param_complete(dev, sl, instr_param);
> +		}
> +	} else {
> +		for_each_device(dev) {
> +			if (!strncmp(instr, dev_name(dev), len)) {
> +				len2 = strlen(dev_name(dev));
> +				strcpy(cmd, dev_name(dev));
> +				cmd[len2] = ' ';

tmp[len2] = '.';

> +				cmd[len2 + 1] = 0;
> +				string_list_add(sl, cmd);
> +			}
> +		}
> +	}
> +	if (instr_param) {
> +		instr_param--;
> +		*instr_param = '.';
> +	}
> +
> +	return 0;
> +}
> +
>  static int tab_pressed = 0;
>  
>  void complete_reset(void)
> @@ -124,6 +190,8 @@ int complete(char *instr, char **outstr)
>  	} else
>  		command_complete(&sl, instr);
>  
> +	device_complete(&sl, instr);
> +

	/* get the completion possibilities */
	if ((t = strrchr(t, ' '))) {
		t++;
		file_complete(&sl, t);
		instr = t;
	} else {
		device_complete(&sl, instr);
		command_complete(&sl, instr);
	}

With these changes the functions add the correct '.' and '=' for setting
device variables. Also the code does not try to expand command
parameters to device variables.

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
