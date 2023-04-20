Delivery-date: Thu, 20 Apr 2023 22:16:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppahd-00Abqz-7T
	for lore@lore.pengutronix.de; Thu, 20 Apr 2023 22:16:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppahc-0004og-TF
	for lore@pengutronix.de; Thu, 20 Apr 2023 22:16:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=45jow5qeiLViMwx4Oor6jkmdotSkvsGfUBnkfEdXwXw=; b=UFwIXz+EbSplssg/v6Ya9icDL9
	XQTS1HfDVj6OvKXDBx8GCrot/8cLhDfO5wWV90bIq5gJTgVw20Bqyffs5TcDrDIj6wHOguh2zQNwD
	17eUxJoQmL+34uVUqo24KuG11V5COq6Vad/r3a1oEcEIbVyA3lc+P4MJ+XAfF5xUEpOAYHKyE1oIC
	fvZ892yx0SS1AzXHbR8hE67yZxjEaBgJToWa5+PK0cMGDdsXTdEYguWFQ7pEbEOI2MaPq5rJfUzB4
	pNLqNnIcmxxFg9x3e2EbcsFWIUjhrBEk2PA0I7igDjCrx7HGNaGbDnGV6TDv0Z5aBWbWxLPHCcZtH
	8H265/Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppagY-008vhe-1G;
	Thu, 20 Apr 2023 20:15:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppagU-008vg0-1f
	for barebox@lists.infradead.org;
	Thu, 20 Apr 2023 20:15:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ppagR-0004Z8-4Q; Thu, 20 Apr 2023 22:15:11 +0200
Message-ID: <f54e8087-0bf2-cbc9-5ed0-df06e2027350@pengutronix.de>
Date: Thu, 20 Apr 2023 22:15:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, =?UTF-8?Q?Daniel_Br=c3=a1t?=
 <danek.brat@gmail.com>
References: <20230217203148.2902038-1-a.fatoum@pengutronix.de>
 <20230221100818.GC10447@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230221100818.GC10447@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230420_131514_559834_F65E2841 
X-CRM114-Status: GOOD (  29.32  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] commands: add new of_fixup command to list and disable DT
 fixups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 21.02.23 11:08, Sascha Hauer wrote:
> On Fri, Feb 17, 2023 at 09:31:48PM +0100, Ahmad Fatoum wrote:
>> For debugging, it can be useful to disable a fixup to rule out it causing
>> issues. For platforms supporting kallsyms, we can readily allow enabling
>> and disabling fixups by name, so let's add a command that does just that.
>>
>> Suggested-by: Daniel Brát <danek.brat@gmail.com>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  commands/Kconfig    | 15 ++++++++
>>  commands/Makefile   |  1 +
>>  commands/of_fixup.c | 86 +++++++++++++++++++++++++++++++++++++++++++++
>>  common/kallsyms.c   |  8 ++---
>>  common/oftree.c     | 17 +++++----
>>  drivers/of/Kconfig  |  6 ++++
>>  include/kallsyms.h  |  4 +++
>>  include/of.h        | 10 ++++++
>>  8 files changed, 137 insertions(+), 10 deletions(-)
>>  create mode 100644 commands/of_fixup.c
>>
>> +static int do_of_fixup(int argc, char *argv[])
>> +{
>> +	struct of_fixup *of_fixup;
>> +	int opt, enable = -1;
>> +
>> +	while ((opt = getopt(argc, argv, "ed")) > 0) {
>> +		switch (opt) {
>> +		case 'e':
>> +			enable = 1;
>> +			break;
>> +		case 'd':
>> +			enable = 0;
>> +			break;
>> +		default:
>> +			return COMMAND_ERROR_USAGE;
>> +		}
>> +	}
>> +
>> +	argv += optind;
>> +	argc -= optind;
>> +
>> +	if ((enable < 0 && argc > 0) || (enable >= 0 && argc == 0))
>> +		return COMMAND_ERROR_USAGE;
>> +
>> +	list_for_each_entry(of_fixup, &of_fixup_list, list) {
>> +		int i;
>> +		ulong addr = (ulong)of_fixup->fixup;
>> +		char sym[KSYM_SYMBOL_LEN];
>> +		const char *name;
>> +
>> +		name = kallsyms_lookup(addr, NULL, NULL, NULL, sym);
>> +		if (!name) {
>> +			sprintf(sym, "<0x%lx>", addr);
>> +			name = sym;
>> +		}
> 
> Does this fallback make sense? kallsyms_lookup() should always return a
> name, otherwise something is really wrong.

Fixup may be registered within a module, which barebox kallsyms doesn't
yet support.

> 
>> +
>> +		if (enable == -1) {
>> +			printf("%s(0x%p)%s\n", name, of_fixup->context,
>> +			       of_fixup->disabled ? " [DISABELD]" : "");
> 
> s/DISABELD/DISABLED/

Will fix.

> We can have the same fixup function with different contexts, that's why
> you print the context pointer here. Shouldn't we then have a way to
> disable a specific fixup, like "of_fixup -d mtd_partition_fixup(0x2fed7a00)"?

The command is meant for quick testing. To make sense of context pointers,
a map file or an instrumented barebox is needed, so it's not that useful
to be able to filter by context pointer IMO.

> 
> Sascha
> 
>> +config OF_FIXUP_TOGGLE
>> +	bool
>> +	help
>> +	  This is selected when some device tree fixups may be selectively
>> +	  disabled.
> 
> Why does this have an extra config option? It doesn't look like it's
> saving a lot of binary space.

I can drop it, sure.

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



