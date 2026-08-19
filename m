Delivery-date: Wed, 19 Aug 2026 10:27:47 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwbeE-004nmo-2a
	for lore@lore.pengutronix.de;
	Wed, 19 Aug 2026 10:27:47 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 66C5C20227F
	for <lore@pengutronix.de>; Wed, 19 Aug 2026 10:27:47 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Kcp5QHo0;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jOtyeNcLo1IGDDRHhfzYy/vHTO2zrLl7fVH9DF3W1Rk=; b=Kcp5QHo07bw6LmGnu0pD5mkiNB
	3UDDDljnQk+8O6ynylxlEIg8OCdVQ2YJZX1DqsoLFoFJBNvTk65/8eVbzASDposFRIzZXmwJq+e67
	n7MRQhPCF0UTrDpREZ2k+hLGLDHfqr06QekTbbCbNKRqW07mZ/JxZKQSqPMZryiV0SDGCI3eNykYm
	HDlOUAqSJkC6eKmLYijReB0xOnko550H2FislMD7dSt2VNHDoZ4M6FqeVojwLMFyBaElBK/nvPxDP
	9h04SAfFsMurpaFMUy+nKpO0exHbR0wJ91Q8GeADL9cuDOhfg0i9c7vpwmkisouCskJLRnmWpJujn
	dghhYy2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwbcy-00000009J5H-0OJc;
	Wed, 19 Aug 2026 08:26:28 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwbcu-00000009J4w-3wy6
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 08:26:27 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B3DF6200740;
	Wed, 19 Aug 2026 10:26:22 +0200 (CEST)
Message-ID: <db7b48bd-24d8-4249-92f8-fe38af5cb212@pengutronix.de>
Date: Wed, 19 Aug 2026 10:26:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: iMX ddrphy_utils difference with U-boot
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andrei Lalaev <andrey.lalaev@gmail.com>, barebox@lists.infradead.org
References: <E1wZ30Z-00000006Gk9-35a3@pty.whiteo.stw.pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <E1wZ30Z-00000006Gk9-35a3@pty.whiteo.stw.pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_012625_228199_8E31AA62 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 6/15/26 10:49 AM, Sascha Hauer wrote: > On 2026-06-08
    19:26, Ahmad Fatoum wrote: >> Hello Andrei, >> >> On 6/8/26 16:24, Andrei
    Lalaev wrote: >>> Hi, >>> >>> I am moving an iMX8MP module from vendo [...]
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 7xuk9jwdicq6be14hfeateao9cwqscim
X-Spamd-Result: default: False [-7.51 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 66C5C20227F

Hi,

On 6/15/26 10:49 AM, Sascha Hauer wrote:
> On 2026-06-08 19:26, Ahmad Fatoum wrote:
>> Hello Andrei,
>>
>> On 6/8/26 16:24, Andrei Lalaev wrote:
>>> Hi,
>>>
>>> I am moving an iMX8MP module from vendor U-Boot 2024.04 to Barebox 2025.02
>>
>> Sidenote: You'll probably want to use one of the still supported
>> v2026.04 or v2026.06 releases.
>>
>>> and found a strange difference in the DDR training code:
>>>
>>>   vim drivers/ddr/imx/ddrphy_utils.c +94
>>>
>>> And the corresponding line in U-Boot:
>>>
>>>   vim drivers/ddr/imx/phy/ddrphy_utils.c +101
>>>
>>> Is there any chance that somebody knows/remembers why "return -1" was replaced with "hang()"?
>>
>> I can't speak for Sascha, but having looked at the code, I see no reason
>> why not to propagate the error.
>>
>>> I couldn't find any explanation in the commits/mailing lists.
>>
>> My guess is that it wasn't anticipated that boards would handle
>> the error gracefully to fall back to a different DDR init.
> 
> That's my guess as well. Note the callers of
> imx8m_wait_ddrphy_training_complete() which is only a wrapper around
> calling wait_ddrphy_training_complete() do not check the error code, so
> when changing it back to return an error code we likely want to add
> error checking where missing.

I just stumbled upon this patch:
https://lore.kernel.org/all/20260819070758.51350-1-frieder@fris.de/

If we start allowing ddr_cfg_phy to propagate this error, you'll likely
want above patch as well.

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



