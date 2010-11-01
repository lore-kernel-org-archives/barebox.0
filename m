Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCq7N-0000G4-8z
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:51:54 +0000
Date: Mon, 1 Nov 2010 10:51:02 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20101101085102.GB19394@jasper.tkos.co.il>
References: <1288600434-6112-1-git-send-email-r.schwebel@pengutronix.de>
	<1288600434-6112-7-git-send-email-r.schwebel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1288600434-6112-7-git-send-email-r.schwebel@pengutronix.de>
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
Subject: Re: [PATCH 06/21] doc: add documentation for 'dfu'
To: Robert Schwebel <r.schwebel@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Robert,

On Mon, Nov 01, 2010 at 09:33:39AM +0100, Robert Schwebel wrote:
> Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
> ---
>  Documentation/commands.dox |    1 +
>  commands/dfu.c             |   28 ++++++++++++++++++----------
>  2 files changed, 19 insertions(+), 10 deletions(-)
> 

[snip]

> -static const __maybe_unused char cmd_dfu_help[] =
> -"Usage: dfu [OPTION]... description\n"
> -"start dfu firmware update\n"
> -" -m <str> Manufacturer string (barebox)\n"
> -" -p <str> product string (" CONFIG_BOARDINFO ")\n"
> -" -V <id>  vendor id\n"
> -" -P <id>  product id\n"
> -"description has the form\n"
> -"device1(name1)[sr],device2(name2)[sr]\n"
> -"where s is for save mode and r for read back of firmware\n";
> +BAREBOX_CMD_HELP_START(dfu)
> +BAREBOX_CMD_HELP_USAGE("dfu [OPTIONS] <description>\n")
> +BAREBOX_CMD_HELP_SHORT("Start firmware update with the Device Firmware Update (DFU) protocol.")
> +BAREBOX_CMD_HELP_OPT  ("-m <str>",  "Manufacturer string (barebox)\n")
> +BAREBOX_CMD_HELP_OPT  ("-p <str>",  "product string (" CONFIG_BOARDINFO ")\n")
> +BAREBOX_CMD_HELP_OPT  ("-V <id>",   "vendor id\n")
> +BAREBOX_CMD_HELP_OPT  ("-P <id>",   "product id\n")
> +BAREBOX_CMD_HELP_END
> +
> +/**
> + * @page dfu_command
> +\<description> has the following form:
> +device1(name1)[sr],device2)[sr]

Should probably be:
device1(name1)[sr],device2(name2)[sr]

baruch

> +'s' means 'safe mode' (download the complete image before flashing) and
> +'r' that readback of the firmware is allowed.
> +
> +\todo Add example, how to use dfu from a Linux or Windows host.
> + */
>  
>  BAREBOX_CMD_START(dfu)
>  	.cmd		= do_dfu,

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
