Delivery-date: Tue, 28 Oct 2025 08:59:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDec9-00CcCy-0M
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 08:59:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDec8-000871-Ix
	for lore@pengutronix.de; Tue, 28 Oct 2025 08:59:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6LYCb94r0UJqgfhjeVoQSK/d+3pajZxiwgzbI6MUGu0=; b=Q8lBxER2WyXRN6dURzTKcZQ/2A
	8b7DCy3FbsSrZXpA4+7P1GRTTYNOP0ao2xAturSgE5KwbpNGFvpihGRMya8Eteb4SAfkt2Wd7Z24X
	MnkTReXWZw+dG+GyPRtqu1xczxS1U/KSk59M/bKebX+0K9XfMH8LZXOzLRUabJEQjn8pgo2XlsGnp
	r2DIQpy+xWmefsNXjCtfdlPcGv6xIjCkFfQW3mhnP91gtC1Dstf+CzCOYxnN26pagwkIeOCJquAM4
	XCC5lnm6OPmMGw26P5tzyEUxaYTy0QtEgXGE/oBOVyJxM/5BAG5SCW6SHeFDK5NcJQTTkmst0B9RT
	YF9pWL7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDebm-0000000FUby-2fQu;
	Tue, 28 Oct 2025 07:59:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDebk-0000000FUbQ-3l4w
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 07:59:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vDebh-00083G-Q3; Tue, 28 Oct 2025 08:59:05 +0100
Message-ID: <ada2cb2b-e08a-4d02-bb04-15750352836f@pengutronix.de>
Date: Tue, 28 Oct 2025 08:59:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
References: <20251027074446.2474869-1-a.fatoum@barebox.org>
 <aQB3hThqS9P0wHuX@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <aQB3hThqS9P0wHuX@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_005908_936914_8C77CC0A 
X-CRM114-Status: GOOD (  17.44  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] sandbox: add memory leak debugging tooling around
 LeakSanitizer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 10/28/25 8:57 AM, Sascha Hauer wrote:
> On Mon, Oct 27, 2025 at 08:44:45AM +0100, Ahmad Fatoum wrote:
>> When enabled, this allows calling barebox_memleak_check() or running the
>> checkleak command to instruct LeakSanitizer to sweep the memory and find
>> unreferenced allocations.
>>
>> LeakSanitizier is also enabled along AddressSanitizer and runs on AMD64
>> Linux automatically on exit already.
>>
>> +static int do_checkleak(int argc, char *argv[])
>> +{
>> +	unsigned int count;
>> +	int opt;
>> +
>> +	while((opt = getopt(argc, argv, "l:")) > 0) {
>> +		switch(opt) {
>> +		case 'l':
>> +			if (kstrtouint(optarg, 0, &count))
>> +				return COMMAND_ERROR;
>> +			(void)malloc(count);
>> +			break;
>> +		default:
>> +			return COMMAND_ERROR_USAGE;
>> +		}
>> +	}
>> +
>> +	argv += optind;
>> +	argc -= optind;
>> +
>> +	if (argc)
>> +		return COMMAND_ERROR_USAGE;
>> +
>> +	memleak_check();
> 
> barebox exits in this call. Is this intended?

Until I figure out how to suppress it, yes, unfortunately. Haven't dug
into the source code yet.

On the bright side my talloc series removes the long standing leak in
hush, so it's less of a bother. :D

Cheers,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



