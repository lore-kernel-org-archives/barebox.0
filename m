Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RSwdJ-00066K-IT
 for barebox@lists.infradead.org; Tue, 22 Nov 2011 20:07:58 +0000
Date: Tue, 22 Nov 2011 21:07:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111122200748.GM27267@pengutronix.de>
References: <1319363961-4944-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1319363961-4944-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] sanbox: add linux_execve and linux_exec command
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean Christophe,

On Sun, Oct 23, 2011 at 05:59:21PM +0800, Jean-Christophe PLAGNIOL-VILLARD wrote:
> this will allow to execute a program of the host from barebox
> +
> +#include <common.h>
> +#include <command.h>
> +#include <mach/linux.h>
> +
> +static int do_linux_exec(struct command *cmdtp, int argc, char *argv[])
> +{
> +	int ret;
> +	char **newargv;
> +	char *newenv[] = { NULL };
> +	int i, j;
> +
> +	if (argc < 2)
> +		return 1;
> +
> +	newargv = xzalloc(sizeof(char*) * argc);
> +
> +	for (j = 0, i = 1; i < argc; i++, j++)
> +		newargv[j] = argv[i];
> +
> +	newargv[j] = NULL;
> +	ret = linux_execve(argv[1], newargv, newenv);
> +
> +	if (ret)
> +		return 1;
> +
> +	return 0;

You are loosing memory here.

Sascha

> +}
> +
> +BAREBOX_CMD_HELP_START(linux_exec)
> +BAREBOX_CMD_HELP_USAGE("linux_exec ...\n")
> +BAREBOX_CMD_HELP_SHORT("Execute a command on the host\n")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(linux_exec)
> +	.cmd		= do_linux_exec,
> +	.usage		= "Execute a command on the host",
> +	BAREBOX_CMD_HELP(cmd_linux_exec_help)
> +BAREBOX_CMD_END
> -- 
> 1.7.7
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
