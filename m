Delivery-date: Fri, 24 Apr 2026 16:54:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wGHvg-00FskO-3C
	for lore@lore.pengutronix.de;
	Fri, 24 Apr 2026 16:54:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wGHvg-00080x-BP
	for lore@pengutronix.de; Fri, 24 Apr 2026 16:54:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s9FB367GhbmL4TSJ7nxoE0LAs0RzBoR3eJ//z+Yo9zI=; b=y9D42IykM4QZiXz/HzDCciVXBi
	PPaCGvP3yw8dY8LPwgN2dqSfT0JWO/fNSYavWYIalTt8quALZCRLFBjs4fpZdz1fc7kpdwUx9lO+A
	p/SVC9ybpD/g4AgumhFynivQiQcgaSRx2ig5jqt56/iGBYIMX/yXoLWcqFp4blK0jf8rk6mfbjNQm
	hi9SA+uinvPy4y/GeI/WRUNrxXmqpo+ITz+jASdMry+Iavk+rA9qSijjxE3RzCyLAAkRDcv7nJAZP
	980fOfNigbnA+/A9A5vMTx8I3tgLVQbrTt0+8uVLnaj2B6wzxfeUOdytLzsdys9+WeO3sKrrj8zF7
	kY6xbMxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGHux-0000000DLjh-3Elx;
	Fri, 24 Apr 2026 14:54:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGHut-0000000DLjE-2nef
	for barebox@lists.infradead.org;
	Fri, 24 Apr 2026 14:54:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wGHup-0007n3-WB; Fri, 24 Apr 2026 16:54:00 +0200
Message-ID: <29fb6d15-f449-45ee-8b2f-485a618ec573@pengutronix.de>
Date: Fri, 24 Apr 2026 16:53:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
References: <20260416134518.3282395-1-eagle.alexander923@gmail.com>
 <d437f1d8-c079-4e17-ab67-f9090be6af9f@pengutronix.de>
 <CAP1tNvSfV1Yz0f9NDaN-e88KYFzPNkC16ZjTRPSyBd-hNKXMyg@mail.gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvSfV1Yz0f9NDaN-e88KYFzPNkC16ZjTRPSyBd-hNKXMyg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260424_075403_735999_577CF55E 
X-CRM114-Status: GOOD (  25.25  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] Add support for extlinux.conf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 4/24/26 10:46 AM, Alexander Shiyan wrote:
>> On 4/16/26 3:45 PM, Alexander Shiyan wrote:
>>> This adds support for the extlinux.conf configuration format, commonly
>>> used by Syslinux and many Linux distributions. The configuration file
>>> is typically located at /boot/extlinux/extlinux.conf or
>>> /extlinux/extlinux.conf and defines boot entries with kernel, initrd,
>>> device tree, and command line options.
> ...
>>> +static int extlinux_boot(struct bootentry *be, int verbose, int dryrun)
>>> +{
>>> +     struct extlinux_entry *e =
>>> +             container_of(be, struct extlinux_entry, entry);
>>> +     char *kernel_abs, *initrd_abs = NULL, *fdt_abs = NULL;
>>> +     struct bootm_data data = {};
>>> +     int ret;
>>> +
>>> +     bootm_data_init_defaults(&data);
>>> +
>>> +     data.dryrun = max_t(int, dryrun, data.dryrun);
>>> +     data.verbose = max(verbose, data.verbose);
>>> +     data.appendroot = true;
>>
>> Not sure this is a good idea because of potential of clashing with
>> extlinux appended command line options.
> 
> globalvar_add_bool("extlinux.fix_root", NULL); ?

global.extlinux.strip_root to remove root=
and bootm.appendroot to add barebox' own root?

@Sascha, any thoughts on this?

> 
> ...
>>> +     if (e->append)
>>> +             globalvar_add_simple("linux.bootargs.dyn.extlinux", e->append);
>>> +
>>> +     pr_info("Booting extlinux label '%s'\n", e->label);
>>> +
>>> +     ret = bootm_boot(&data);
>>
>> Please make use of new bootm_entry instead, so it can be used with devboot:
>>
>> https://github.com/barebox/barebox/blob/next/Documentation/user/devboot.rst
> 
> I haven't figured out how to do this yet...

Just make sure it can be used by calling bootm_entry instead of bootm_boot.


> ...
>>> +static struct extlinux_entry *parse_extlinux_conf(const char *abspath,
>>> +                                               const char *rootpath)
>>> +{
>>> +     char *buf, *bufptr, *line, *p, *default_label = NULL;
>>> +     struct extlinux_entry *entry = NULL;
>>> +
>>> +     bufptr = read_file(abspath, NULL);
>>> +     if (!bufptr)
>>> +             return ERR_PTR(-errno);
>>> +
>>> +     for (p = bufptr; *p; p++)
>>> +             if (*p == '\r')
>>> +                     *p = '\n';
>>
>> I think this can be dropped.
>>
>>> +
>>> +     buf = bufptr;
>>> +     while ((line = strsep(&buf, "\n")) != NULL) {
>>
>> And then you replace the set searched here with "\r\n"
> 
> The end of the line may be \n, \r, \n\r.
> We are simply converting it to a uniform format.

strsep's second argument means split at any of these characters and not
split at them in exactly that order.

> 
>>> +             char *key, *val;
>>> +
>>> +             line = skip_spaces(line);
>>> +
>>> +             if (*line == '#' || *line == '\0')
>>> +                     continue;
>>> +
>>
>> Nitpick: I think below can be simplified to:
>>
>>> +             key = line;
>>> +             val = strchr(line, ' ');
>>> +             if (!val)
>>> +                     val = strchr(line, '\t');
>>> +             if (val) {
>>> +                     *val++ = '\0';
>>> +                     val = skip_spaces(val);
>>> +             } else
>>> +                     continue;
>>
>> key = strsep(&line, ' \t');
>> val = strsep(&line, '\n');
>> val = isempty(val) ? NULL : skip_spaces(val);
> 
> strsep inserts a null byte in place of the separator; this will
> corrupt the buffer,
> and consequently, we will not be able to find the val.

char line[] = "DEFAULT test", *p = line;

char *key = strsep(&p, " \t");
char *val = strsep(&p, "\n");

printf("key<%s> value<%s>\n", key, val);

prints key<DEFAULT> value<test>.
Isn't that exactly what you need?

>> defaut_label might not have been set here?
> 
> No: if (!default_label) ... continue;

Ah ok.

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



