Delivery-date: Tue, 13 Jun 2023 10:03:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8yzj-004tho-KY
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 10:03:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8yzh-00072K-9n
	for lore@pengutronix.de; Tue, 13 Jun 2023 10:03:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CnmyJppGCZWQsgT39OZ85H+uTuHjKD7LJBSYUbQHcX8=; b=vbzMt6CHSAzlkV9YJdjdTLpZWy
	ilXbM7Il5RUv3SuRpAyfhRF8u9RERm56QoT/QkErvZQlN9KAWphYlyBHFbdFbrBPl06OMPSvPEHZL
	xjweF6PfZxHQ2BpFp9ZNH/FNNZsMwSb7VZaEtevtwKgD4ESTobjnKA9XXqzj1ARM0QY5F6Nz/qGC0
	4KgqWLUjK/1Ly4+cn/pVfFPjPZDbozyD3M5RqlwfSMJBWZg7Ic5LJtTixdEgFyl3SAqUOEb0nDkOL
	cVZw/plYzNT5Vm0lDWlvgxZ2F+XQWhrB4hqdTZRnEFwSMjWI971hNKbWQwT/lNDSBaKl3d3yOvtU+
	EZ+bn/vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8yye-007JTB-1N;
	Tue, 13 Jun 2023 08:02:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8yyb-007JSU-13
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 08:02:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q8yyZ-0006lm-SI; Tue, 13 Jun 2023 10:02:03 +0200
Message-ID: <7f57920f-a892-57f7-ba06-514951470075@pengutronix.de>
Date: Tue, 13 Jun 2023 10:02:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, Jan Palus <jpalus+gnu@fastmail.com>
References: <20230612125823.1087094-1-a.fatoum@pengutronix.de>
 <20230613075911.GM18491@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230613075911.GM18491@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_010205_359587_8954B3EA 
X-CRM114-Status: GOOD (  14.97  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] kbuild: Port silent mode detection to future gnu
 make.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 13.06.23 09:59, Sascha Hauer wrote:
> On Mon, Jun 12, 2023 at 02:58:24PM +0200, Ahmad Fatoum wrote:
>> Port silent mode detection to the future (post make-4.4) versions of gnu make.
>>
>> Makefile contains the following piece of make code to detect if option -s is
>> specified on the command line.
>>
>> ifneq ($(findstring s,$(filter-out --%,$(MAKEFLAGS))),)
>>
>> This code is executed by make at parse time and assumes that MAKEFLAGS
>> does not contain command line variable definitions.
>> Currently if the user defines a=s on the command line, then at build only
>> time MAKEFLAGS contains " -- a=s".
>> However, starting with commit dc2d963989b96161472b2cd38cef5d1f4851ea34
> 
> To which repository does dc2d963989b96161472b2cd38cef5d1f4851ea34
> belong?

https://git.savannah.gnu.org/cgit/make.git/commit/?id=dc2d963989b96161472b2cd38cef5d1f4851ea34


> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



