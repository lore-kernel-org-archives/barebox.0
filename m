Delivery-date: Thu, 20 Aug 2026 10:28:09 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwy88-005AJm-1y
	for lore@lore.pengutronix.de;
	Thu, 20 Aug 2026 10:28:09 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 33C2D20190E
	for <lore@pengutronix.de>; Thu, 20 Aug 2026 10:28:09 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=gA2hB4VJ;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=em1fxV5AL+/sKrJSI55uCR4TUvrrXulufky4iHzHR60=; b=gA2hB4VJYjEt6UFPrqPtgAs13X
	/84IOFhxIk7C0sc2ucfQrEgzsZKw6WXSF47VBrRfWV91AC1aP58q+3ybi4lytlBVjJiLZiPa1Zwc1
	+5PRoNATpiDeWe3dEnDoCRS98zYP+tDc30Dr6vRUSixZf2v/XpFzLMMXSFDx60HCHUBsLyoKagEFM
	qXcr9dZWv0L4mvsnfeO3kYplR05rHVRgdQAo1KG5ITkiQM6brlBnM+P2TG1/PEs3pIBSmCleG6DNj
	2cSwkKibd/oB5bcYnZkufv3sCXRziU+pudHBGifUFl17A+rAZq18N0B2GWSK6GyMTs2igHgq3P92T
	iUHVokRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwwzO-0000000B1Ol-4C2Z;
	Thu, 20 Aug 2026 07:15:03 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwwzL-0000000B1Nh-12bx
	for barebox@lists.infradead.org;
	Thu, 20 Aug 2026 07:15:01 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: ske@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 21A37202234;
	Thu, 20 Aug 2026 09:14:57 +0200 (CEST)
Message-ID: <dbabb0d8-03a9-452a-b5df-a38cf389b180@pengutronix.de>
Date: Thu, 20 Aug 2026 09:14:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] PBL: constructor fixes
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20260819-next-v1-0-c1a1a8b44d02@pengutronix.de>
 <f5d7e406-0e95-4da0-a0e2-208a4bddfdc4@pengutronix.de>
 <0c26bfcc-deb4-400c-aa46-e20f839d4194@pengutronix.de>
Content-Language: en-US, de-DE
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <0c26bfcc-deb4-400c-aa46-e20f839d4194@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_001459_450032_0C601B23 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 8/19/26 17:01, Sascha Hauer wrote: > On 2026-08-19
   16:16, Ahmad Fatoum wrote: >> Hi, >> >> On 8/19/26 4:12 PM, Stefan Kerkmann
    wrote: >>> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de> [...]
    
 
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
X-Stat-Signature: 8qeejnu31o9pfhtcd3a8d11hqxbm6rei
X-Spamd-Result: default: False [-7.51 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 33C2D20190E

Hi,

On 8/19/26 17:01, Sascha Hauer wrote:
> On 2026-08-19 16:16, Ahmad Fatoum wrote:
>> Hi,
>>
>> On 8/19/26 4:12 PM, Stefan Kerkmann wrote:
>>> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
>>> ---
>>> Stefan Kerkmann (2):
>>>       ARM/ARM64/RISC-V: pbl: guard constructor support
>>>       ARM64: setup_c: abi safe link register storage
>>
>> if these are applied after what's in next, we would have intermittent
>> breakage when doing a bisect right?
>>
>> I would suggest either turning these into fixups or just resend the
>> whole series.
> 
> I just squashed them into the original commit. But next time, yes, you
> can send --fixup patches for patches in next.
> 

Thanks, I missed the bisectability requirement for this series. For the setup_c
patch I actually send an amend patch to include it in the original series with:

git send-email HEAD^ --to="Sascha Hauer <s.hauer@pengutronix.de>" --to="\"open
list:BAREBOX\" <barebox@lists.infradead.org>" --cc="Stefan Kerkmann
<s.kerkmann@pengutronix.de>"
--in-reply-to="<20260817-feature-pbl-get-time-ns-v3-2-9874c1438855@pengutronix.de>"

But it maybe wasn't picked up by b4 at the time the original merge happened?

> I just learned there's also --fixup=amend:<commit> for replacing the
> original commit message along with the fixup. There's even
> --fixup=reword:<commit> for just rewording the commit message without
> changing the patch content.
> 
> Sascha
> 
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 

Best regards,
Stefan

-- 
Pengutronix e.K.                       | Stefan Kerkmann             |
Steuerwalder Str. 21                   | https://www.pengutronix.de/ |
31137 Hildesheim, Germany              | Phone: +49-5121-206917-128  |
Amtsgericht Hildesheim, HRA 2686       | Fax:   +49-5121-206917-9    |



