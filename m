Delivery-date: Fri, 01 Jul 2022 07:26:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o79Az-002for-5r
	for lore@lore.pengutronix.de; Fri, 01 Jul 2022 07:26:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o79B1-0006xO-4I
	for lore@pengutronix.de; Fri, 01 Jul 2022 07:26:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BtJEIeiOUNsh+6uU9kBZZaeu+kBWTyWglpJiLhaHT58=; b=d/5pEnE0/Qfry5Sk7tHvgpAU+0
	IxPuFZc5PhYUxuWLtQ6jVWuP9s/I3Xs9aduSFsrh3ejQ4qTIbVaD3+8c9z4vE6v840X9/ppoYyxG9
	xdCovA4rZsH/6stA3tM/XeZcQdHzBPEB2nYDB6+NXSYVBkOTxWQsPpVixxWSwyA4Z4PdChIMlTYlD
	+kvWaDU92jwEtna2Efhjri8vNR1+Xw9Y3Rc+A+smelNc6XUZYNTgjIzbtDivuPgrOO5ZH5opGSqHF
	z4sbjQtj/l1dcm2EjthMmNO32Rr9m4eJLK0a+QGLbMzhKujrkB/iF5PBSq9WiWEG43A9effh31YBw
	wW0BNGXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o799C-002x6A-4Z; Fri, 01 Jul 2022 05:24:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7997-002x5q-4Z
	for barebox@lists.infradead.org; Fri, 01 Jul 2022 05:24:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o7993-0006VS-BK; Fri, 01 Jul 2022 07:24:45 +0200
Message-ID: <96670dd6-bdaf-b244-cce1-f6818c435ce5@pengutronix.de>
Date: Fri, 1 Jul 2022 07:24:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: barebox@lists.infradead.org, has@pengutronix.de,
 Michael Olbrich <mol@pengutronix.de>
References: <20220630124035.4019644-1-a.fatoum@pengutronix.de>
 <20220630124035.4019644-2-a.fatoum@pengutronix.de>
 <20220630152634.GL20628@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220630152634.GL20628@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_222449_228075_8AF6BCAC 
X-CRM114-Status: GOOD (  28.08  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/3] commands: implement devlookup to find device behind
 device file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

On 30.06.22 17:26, Michael Olbrich wrote:
> On Thu, Jun 30, 2022 at 02:40:34PM +0200, Ahmad Fatoum wrote:
>> For OF-enabled platforms with aliases, device file naming is pretty much
>> solved: If there is mmc2 = &something, then we have a mmc2 device and
>> a /dev/mmc2 device file. For other platforms like x86, EFI-provided
>> devices are harder to get ahold of. Add a command to make this
>> straight-forward to do in scripts. The main use of this is probably to
>> access parameters like nt_signature or guid:
>>
>>   devloop /dev/disk0 guid
> 
>    devlookup /dev/disk0 guid
> 
> Right?

Yes, thanks. Sascha, please let me know if I should resend.

> 
> Michael
> 
>>
>> This would print to console, but we have no output capture yet, so add
>> an optional -v VARIABLE parameter as well to allow easy use from
>> scripts.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  commands/Kconfig     | 13 ++++++++
>>  commands/Makefile    |  1 +
>>  commands/devlookup.c | 73 ++++++++++++++++++++++++++++++++++++++++++++
>>  3 files changed, 87 insertions(+)
>>  create mode 100644 commands/devlookup.c
>>
>> diff --git a/commands/Kconfig b/commands/Kconfig
>> index fb4dcefed8bf..5bab78fd1ce7 100644
>> --- a/commands/Kconfig
>> +++ b/commands/Kconfig
>> @@ -75,6 +75,19 @@ config CMD_DEVINFO
>>  	  If called with a device path being the argument, devinfo shows more
>>  	  default information about this device and its parameters.
>>  
>> +config CMD_DEVLOOKUP
>> +	tristate
>> +	prompt "devlookup"
>> +	help
>> +	  Look up device behind device file and its parameters
>> +
>> +	  devlookup [-v VAR] /dev/DEVICE [parameter]
>> +
>> +          Detects the device behind a device file and outputs it,
>> +          unless a second argument is given. In that case the device
>> +          parameter with that name is looked up. Specifying -v VARIABLE
>> +          will write output to VARIABLE instead of printing it.
>> +
>>  config CMD_DEVUNBIND
>>  	tristate
>>  	prompt "devunbind"
>> diff --git a/commands/Makefile b/commands/Makefile
>> index 6c3a7a1dabcd..b43da1a80173 100644
>> --- a/commands/Makefile
>> +++ b/commands/Makefile
>> @@ -110,6 +110,7 @@ obj-$(CONFIG_CMD_DETECT)	+= detect.o
>>  obj-$(CONFIG_CMD_BOOT)		+= boot.o
>>  obj-$(CONFIG_CMD_DEVINFO)	+= devinfo.o
>>  obj-$(CONFIG_CMD_DEVUNBIND)	+= devunbind.o
>> +obj-$(CONFIG_CMD_DEVLOOKUP)	+= devlookup.o
>>  obj-$(CONFIG_CMD_DRVINFO)	+= drvinfo.o
>>  obj-$(CONFIG_CMD_READF)		+= readf.o
>>  obj-$(CONFIG_CMD_MENUTREE)	+= menutree.o
>> diff --git a/commands/devlookup.c b/commands/devlookup.c
>> new file mode 100644
>> index 000000000000..9599df7b10bc
>> --- /dev/null
>> +++ b/commands/devlookup.c
>> @@ -0,0 +1,73 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +
>> +#include <common.h>
>> +#include <command.h>
>> +#include <fs.h>
>> +#include <getopt.h>
>> +#include <malloc.h>
>> +#include <linux/stat.h>
>> +#include <linux/ctype.h>
>> +#include <environment.h>
>> +
>> +static int report(const char *variable, const char *val)
>> +{
>> +	if (variable)
>> +		return setenv(variable, val);
>> +
>> +	if (!val)
>> +		return -errno;
>> +
>> +	printf("%s\n", val);
>> +	return 0;
>> +}
>> +
>> +static int do_devlookup(int argc, char *argv[])
>> +{
>> +	const char *variable = NULL, *devicefile, *paramname;
>> +	struct cdev *cdev;
>> +	int opt;
>> +
>> +	while ((opt = getopt(argc, argv, "v:")) > 0) {
>> +		switch(opt) {
>> +		case 'v':
>> +			variable = optarg;
>> +			break;
>> +		}
>> +	}
>> +
>> +	if (argc - optind == 0 || argc - optind > 2)
>> +		return COMMAND_ERROR_USAGE;
>> +
>> +	devicefile = argv[optind];
>> +	paramname  = argv[optind+1];
>> +
>> +	if (!strstarts(devicefile, "/dev/"))
>> +		return COMMAND_ERROR_USAGE;
>> +
>> +	devicefile += sizeof "/dev/" - 1;
>> +
>> +	cdev = cdev_by_name(devicefile);
>> +	if (!cdev)
>> +		return -ENOENT;
>> +
>> +	if (paramname)
>> +		return report(variable, dev_get_param(cdev->dev, paramname));
>> +
>> +	return report(variable, dev_name(cdev->dev));
>> +}
>> +
>> +BAREBOX_CMD_HELP_START(devlookup)
>> +BAREBOX_CMD_HELP_TEXT("Detects the device behind a device file and outputs it,")
>> +BAREBOX_CMD_HELP_TEXT("unless a second argument is given. In that case the device")
>> +BAREBOX_CMD_HELP_TEXT("parameter with that name is looked up. Specifying -v VARIABLE")
>> +BAREBOX_CMD_HELP_TEXT("will write output to VARIABLE instead of printing it")
>> +BAREBOX_CMD_HELP_END
>> +
>> +BAREBOX_CMD_START(devlookup)
>> +	.cmd		= do_devlookup,
>> +	BAREBOX_CMD_DESC("look up device behind device file and its parameters")
>> +	BAREBOX_CMD_OPTS("[-v VAR] /dev/DEVICE [parameter]")
>> +	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
>> +	BAREBOX_CMD_HELP(cmd_devlookup_help)
>> +BAREBOX_CMD_END
>> +
>> -- 
>> 2.30.2
>>
>>
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


