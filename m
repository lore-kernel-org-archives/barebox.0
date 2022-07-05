Delivery-date: Tue, 05 Jul 2022 14:06:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8hJa-006Uai-T2
	for lore@lore.pengutronix.de; Tue, 05 Jul 2022 14:06:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8hJc-0007Ag-W7
	for lore@pengutronix.de; Tue, 05 Jul 2022 14:06:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m/58FHvo+t1ufG9IIYN3vYFfjVxQgtf9+ygUTRAKcuM=; b=IwcKlun5QDTsvm9DJHy1qF9I2h
	efD9D1lxQmiNAqgu4osflHuOarXfm2U2awZlQlC9o2zao57L9PjeDHH7dwzagXeHq/d4jsKIe0lcq
	6K/dxnr3oWm9G1D2jlY52/Zt0GHubhJtwElTiyDzYZ6G3i2zsIc20riHSEn2JeAukV0tgryAnV97g
	tOE+fPtfz689gm1hSrO66J3jSzAUqjy/2DB2LEHX6foe7x2PYfJd6APQfe+OIiWeU7RZul3ROkR2s
	tuvsYj5h4pxXdxPWoySObqlmPd7oOoySvTbi3Z1D16Nlatoj+6C28WjMB9P5Kz3NwOXUCZUO8lRX3
	KDHFTtyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8hIJ-0001BV-Fq; Tue, 05 Jul 2022 12:04:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8hIE-00019q-IG
	for barebox@lists.infradead.org; Tue, 05 Jul 2022 12:04:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o8hIC-0006kg-HJ; Tue, 05 Jul 2022 14:04:36 +0200
Message-ID: <13c7f54e-86c5-3b95-ccd5-d35cd6bf174e@pengutronix.de>
Date: Tue, 5 Jul 2022 14:04:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220705115538.3248502-1-a.fatoum@pengutronix.de>
 <20220705115538.3248502-2-a.fatoum@pengutronix.de>
 <20220705115923.GG5208@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220705115923.GG5208@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_050438_654756_1A86E17B 
X-CRM114-Status: GOOD (  28.77  )
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
Subject: Re: [PATCH v2 2/3] commands: implement devlookup to find device
 behind device file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 05.07.22 13:59, Sascha Hauer wrote:
> On Tue, Jul 05, 2022 at 01:55:37PM +0200, Ahmad Fatoum wrote:
>> For OF-enabled platforms with aliases, device file naming is pretty much
>> solved: If there is mmc2 = &something, then we have a mmc2 device and
>> a /dev/mmc2 device file. For other platforms like x86, EFI-provided
>> devices are harder to get ahold of. Add a command to make this
>> straight-forward to do in scripts. The main use of this is probably to
>> access parameters like nt_signature or guid:
>>
>>   devlookup /dev/disk0 guid
>>
>> This would print to console, but we have no output capture yet, so add
>> an optional -v VARIABLE parameter as well to allow easy use from
>> scripts.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>> v1 -> v2:
>>   - fix typo in commit message (Michael)
>>   - accept cdev without /dev/ prefix (Sascha)
>>   - early exit on cdev without dev, e.g. /dev/zero
>> ---
>>  commands/Kconfig     | 13 ++++++++
>>  commands/Makefile    |  1 +
>>  commands/devlookup.c | 78 ++++++++++++++++++++++++++++++++++++++++++++
>>  3 files changed, 92 insertions(+)
>>  create mode 100644 commands/devlookup.c
>>
>> diff --git a/commands/Kconfig b/commands/Kconfig
>> index c5505321cfd9..037b41155695 100644
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
>> index b3b7bafe6b64..0aae8893d696 100644
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
>> index 000000000000..c361d5b58860
>> --- /dev/null
>> +++ b/commands/devlookup.c
>> @@ -0,0 +1,78 @@
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
>> +	if (!val)
>> +		return -(errno ?: EINVAL);
>> +
>> +	if (variable)
>> +		return setenv(variable, val);
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
>> +	if (strstarts(devicefile, "/dev/"))
>> +		devicefile += sizeof("/dev/") - 1;
> 
> Forgot to mention: We have devpath_to_name() which does exactly that.
> Also I merged your last series with that change, so unless you have
> made other changes we should be fine.

Yes, I added a check below for deviceless cdevs, which otherwise
would crash on devlookup /dev/full

Do you need me to create a v3 or will you fix this up?

Cheers,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


