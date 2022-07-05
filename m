Delivery-date: Tue, 05 Jul 2022 09:49:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8dJf-006JgU-UA
	for lore@lore.pengutronix.de; Tue, 05 Jul 2022 09:49:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8dJh-0007eo-NA
	for lore@pengutronix.de; Tue, 05 Jul 2022 09:49:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HyPGix18VNLPnDXBMHeukjwnNyhoNtozI3rm+gdyMew=; b=4hcEPaq9VKua6cBC4jHwyQirsU
	zDE1zJlwgyDDBnTIQnvv2g11aKh4T2uzhNcmfYHCjaUcmvVrJ77knE4d/W9FDfhMYm81uVdx/Km4J
	HnqFGQPMVL0BokrTdQdnK+fcd7BjsosHzdUR7Mg5YGJ4O3HVwXlAmuigO1NLjzOaMhAtrPgM46roG
	RoU7c7m15wZjqwv9WT6Q3tiX+mVokv29bpLpOfDiSa86XWRdgj8wluSzS8FNKZKajUcRe5gxAUBI/
	dQy4KnZM6xQp7rtDQi/cfJlAXJTBflENf6Ub8chUXPcI/OuZO7dzPbgj5EGXLxLPZE8QQZUaNWTuG
	HOoWnz4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8dIT-00FnBF-3d; Tue, 05 Jul 2022 07:48:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8dIK-00Fn9C-4L
	for barebox@lists.infradead.org; Tue, 05 Jul 2022 07:48:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o8dIH-0007YE-40; Tue, 05 Jul 2022 09:48:25 +0200
Message-ID: <5aa8cc2d-7f79-a111-7387-65501bf36da3@pengutronix.de>
Date: Tue, 5 Jul 2022 09:48:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, has@pengutronix.de
References: <20220630124035.4019644-1-a.fatoum@pengutronix.de>
 <20220630124035.4019644-2-a.fatoum@pengutronix.de>
 <20220705074552.GK2387@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220705074552.GK2387@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_004828_217055_EBF9F71A 
X-CRM114-Status: GOOD (  27.02  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/3] commands: implement devlookup to find device behind
 device file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 05.07.22 09:45, Sascha Hauer wrote:
> On Thu, Jun 30, 2022 at 02:40:34PM +0200, Ahmad Fatoum wrote:
>> For OF-enabled platforms with aliases, device file naming is pretty much
>> solved: If there is mmc2 = &something, then we have a mmc2 device and
>> a /dev/mmc2 device file. For other platforms like x86, EFI-provided
>> devices are harder to get ahold of. Add a command to make this
>> straight-forward to do in scripts. The main use of this is probably to
>> access parameters like nt_signature or guid:
>>
>>   devloop /dev/disk0 guid
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
> 
> Should we skip the /dev/ part so that we can allow cdev names directly?
> Something like:
> 
> 	if (strstarts(devicefile, "/dev/"))
> 		devicefile += sizeof "/dev/" - 1;

Sounds good to me.

> 
> Sascha
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


