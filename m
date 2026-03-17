Delivery-date: Tue, 17 Mar 2026 12:17:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2SQM-001mqG-1E
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 12:17:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2SQL-0002Bf-Px
	for lore@pengutronix.de; Tue, 17 Mar 2026 12:17:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0RvNANoY32N3OpCVxiJJIUijwf8zoMTdFDLV6DAF1yU=; b=F8QKxOkVDoDLOs
	UcV2ie6Dl5ihL1CBA9h1qI7s7svkqjeWXoFuoFcEIYmBah6NhV7/SsHQSGL8um5YajpgZtM4KcIr9
	THElMl2L3NR4pWSKj2oRMpkudv62vEwAlNGwilPfW0fZ6zU75JvDzTkjCiLbKaYzVtz+0ad5AejuR
	N3Z1e0ZYbHhmKeml+ROqvRYPer6zEdcnoeVqsNxERxhMj8F2KDYh/2H2oCtuH3ROO3yCcoofVMDBL
	AVxUk5W5ADJQTSU/WNZ1banLQiPpwFDUIHXDre7zcfAKDKOGCPymOPDQnfbRKVLKKsm5g1V68jhM6
	5EQ7IbnoNkipVaoLP19A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2SPu-000000066SJ-1tuS;
	Tue, 17 Mar 2026 11:16:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2SPr-000000066QL-2E9F
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 11:16:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1w2SPo-000259-92; Tue, 17 Mar 2026 12:16:48 +0100
Message-ID: <581410c9-2617-431e-a771-dbef20ff2504@pengutronix.de>
Date: Tue, 17 Mar 2026 12:16:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
References: <20260316-keytoc-multi-env-v3-0-433591ef3198@pengutronix.de>
 <20260316-keytoc-multi-env-v3-1-433591ef3198@pengutronix.de>
 <hj565xhm3wewvsaynr5atw2yfkz7huxjkqx4myewl3dhxwhgmm@ypfksvmwjite>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <hj565xhm3wewvsaynr5atw2yfkz7huxjkqx4myewl3dhxwhgmm@ypfksvmwjite>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_041651_576924_EC423332 
X-CRM114-Status: GOOD (  13.97  )
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
Cc: BAREBOX <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 1/4] scripts: include: Add string_util.h for
 strsep_unescaped
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 2026-03-17 00:25, Marco Felsch wrote:
>> +// SPDX-SnippetBegin
>> +// SPDX-Snippet-Comment: Origin-URL: https://git.pengutronix.de/cgit/barebox/tree/lib/string.c?id=dfcf686f94a5a5387660f2afab79a714baab828a
> 
> Do we really need this if we reference code within our own repo?

Yes, we want any code copied in verbatim to be referenced so we can have
an eye on diverging implementations.

>> +/**
>> + * strsep_unescaped - Split a string into tokens, while ignoring escaped delimiters
>> + * @s: The string to be searched
>> + * @ct: The delimiter characters to search for
>> + * @delim: optional pointer to store found delimiter into
>> + *
>> + * strsep_unescaped() behaves like strsep unless it meets an escaped delimiter.
>> + * In that case, it shifts the string back in memory to overwrite the escape's
>> + * backslash then continues the search until an unescaped delimiter is found.
>> + *
>> + * On end of string, this function returns NULL. As long as a non-NULL
>> + * value is returned and @delim is not NULL, the found delimiter will
>> + * be stored into *@delim.
>> + */
>> +static char *strsep_unescaped(char **s, const char *ct, char *delim)
> 
> Is there a reason for defining this function within a .h instead of a .c
> file?

Yes, this is how it's done in scripts/include because those "scripts"
are single-source.

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


