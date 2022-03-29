Delivery-date: Tue, 29 Mar 2022 12:44:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nZ9LI-00A6aP-SK
	for lore@lore.pengutronix.de; Tue, 29 Mar 2022 12:44:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nZ9LL-0007R2-4K
	for lore@pengutronix.de; Tue, 29 Mar 2022 12:44:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZwzLRgvpUMoR/nMooKKHTNOx9af49UCEepEWvRan6o=; b=Jdh2TteqSvsAd0
	6l3ENB7DnQMHTv9NWMW4vp6GTI7FqwQuPaW23RFgGIOOlh8H/1jjLy8BDDJXrNSA8RdH2Y4n5VTyJ
	biswZtHZFcxqQQT5S23Hp528F26ulSPkfA3toAHbxFzn+QTP08ImK3/FzJrEa0AMEua1Lenhz6NzT
	ei0ml0GEBtJVK+wEVcDb8kNLvxf2FDsIbHlWrsKHnAvyjsxYjC/NR/PYMEiVuc8ioYBNSK7LmYgjs
	ppuaqvLBnSuNc6stLVPnkj6To9KTYCAK3iDXZ3Ux8kUNfnLsRxF25jcG0SBjXxFdsHeztoPYcffOl
	y+a6ZSi71fLDIQm3J77w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZ9Jn-00BqcU-OQ; Tue, 29 Mar 2022 10:43:19 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZ9Ji-00BqbZ-5K
 for barebox@lists.infradead.org; Tue, 29 Mar 2022 10:43:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RPpcNzYpqNvse2dXoQTJNIq6v9VEiXK3rokpZ/9bUTs=; b=VFI47+spdtVDoC4DiFlyDHrKBG
 nN3IhTSOgmlkT915+BHtEPYjiqyCN8Nw+5vIgsuYGyaA5xCwZZGdFj2w/hJTr2gPvbjqer2/yp08n
 q6ZuHt77srCEw0PpDaQqIZkh/c+2fJ3r0bwYRt59ZInV1R8Yl4NkaF7IZprNtlOFnqrBKYPqby7Ix
 poccSPAaT+8XTyBk+WTocpuaxSmwzIkE5n8G0bni+DTku2NOcP/YMYGNOXBCyrweIsI1od6l0AFZ3
 r37kXFkdmxyMEvkGSfXnUHiNEczp1pCPEMX2qxHTr5NFo90tyjyQemDB9s3FUwENwGIo4syFCq/rw
 tTWoEQtg==;
Received: from [89.212.21.243] (port=44178 helo=[192.168.69.86])
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.95)
 (envelope-from <andrej.picej@norik.com>) id 1nZ9Ja-000Czg-5N;
 Tue, 29 Mar 2022 12:43:06 +0200
Message-ID: <b0aa475a-1882-0dba-c4f9-fca878972b8a@norik.com>
Date: Tue, 29 Mar 2022 12:43:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-GB
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, upstream@lists.phytec.de
References: <20220329073333.435822-1-andrej.picej@norik.com>
 <20220329085606.GV12181@pengutronix.de>
From: Andrej Picej <andrej.picej@norik.com>
In-Reply-To: <20220329085606.GV12181@pengutronix.de>
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_034314_558772_110F6F53 
X-CRM114-Status: GOOD (  14.36  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/2] of: implement new
 of_device_ensure_probed_by_alias_stem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 29. 03. 22 10:56, Sascha Hauer wrote:
> Hi Andrej,
> 
> On Tue, Mar 29, 2022 at 09:33:32AM +0200, Andrej Picej wrote:
>> Function first goes through all the aliases which have the given stem.
>> It then ensures that all the devices hiding under these aliases are
>> probed.
>>
>> User can specify one device_node which won't get probed. This is mainly
>> for avoiding recursion if the function will be called from device probe
>> function, or to specify the device which should get probed last. In the
>> later case the user should probe the last device manually.
>>
>> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
>> ---
>> Changes in v2:
>>   - add check for deep probe support,
>>   - users can now specify one device node, which won't get probed. This
>>     ensures that one device can be probed last and we avoid recursion, if
>> this device happens to have alias,
>>   - fix function name (ensured -> ensure).
> 
> Your v2 came before I had a chance to react to your comments on v1, I
> was on vacation last week. I looked at the issue from another
> perspective and rather than ensuring a certain probe order I think we
> should decouple the GPIO numbers (at least the ones from the SoC
> internal controllers) from the probe order, see the patch I just sent.

Sorry didn't mean to push you. Just figured out that it would be easier 
to talk about this topic when we have v2 version :).

OK, the patch looks good. As you said, solution from different 
perspective. Will test it out and get back to you with results.

Thanks for your help/work.

Andrej

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

