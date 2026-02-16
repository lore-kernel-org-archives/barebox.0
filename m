Delivery-date: Mon, 16 Feb 2026 09:55:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruNk-002GOF-2Y
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 09:55:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruNl-0003jm-4q
	for lore@pengutronix.de; Mon, 16 Feb 2026 09:55:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CtRwJsRkMUSYGQevB+YBunD8Paf5NG9lZCAq1E1mfTo=; b=ysxndq1Ax6jmnu3P1dbOaW/FSI
	zH/LNY/UnSmcISX1aNfV5qwDXtVCTg1dlA0hR8kUDR+9EyODnntFfvTtJW5aJFYmjyd6dxJHs+Qtd
	SisX3BmFTkdWKo3cTURMkz1DkC8MMjuQWccSMSy1tSF5Z7g4ZLtzliRZlRPIYfnUej/HeVP6iExVh
	8Z5tV/OCYoYNAr24Y0azrEXQQdEr6yIqtWTczAc9lkGvdjPWYnHkfohX5bpIHQI4899+ZWbPNF4RT
	wo+QrjUhkFUOSIqz8f6lbunt3PfYcT5C8oU6+Eh0XWowV36OPo0yYgUVQSSWcWw3jJoJ5H6GLuiBQ
	3erY/Rrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruNM-00000006CT0-0aUx;
	Mon, 16 Feb 2026 08:54:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruNJ-00000006CSa-2r0c
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 08:54:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruNI-0003fH-2E; Mon, 16 Feb 2026 09:54:36 +0100
Message-ID: <45ca4461-ef3f-422b-976b-ad17bd6f39e1@pengutronix.de>
Date: Mon, 16 Feb 2026 09:54:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
References: <20260126105541.1859911-1-a.fatoum@pengutronix.de>
 <176978026406.813066.3122051822084677539.b4-ty@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <176978026406.813066.3122051822084677539.b4-ty@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_005437_725329_2DEDAA9E 
X-CRM114-Status: GOOD (  13.98  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: bootm: add proper support for boot script
 calling bootm
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 1/30/26 14:37, Sascha Hauer wrote:
> 
> On Mon, 26 Jan 2026 11:55:41 +0100, Ahmad Fatoum wrote:
>> If a boot script calls bootm and it returns whether due to error or dry
>> run, bootscript_boot() will just call bootm again leading to confusing
>> output.
>>
>> Let's detect whether bootm was called and skip calling it again in that
>> case. This will allow boot scripts to do cleanup in future.
>>
>> [...]
> 
> Applied, thanks!

THis commit was previously applied, but after a rebase on the current master,
it's no longer in next. Is this intentional?

Thanks,
Ahmad

> 
> [1/1] commands: bootm: add proper support for boot script calling bootm
>       https://git.pengutronix.de/cgit/barebox/commit/?id=4338ebfd4635 (link may not be stable)
> 
> Best regards,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


