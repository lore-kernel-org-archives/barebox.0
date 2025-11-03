Delivery-date: Mon, 03 Nov 2025 12:41:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFswR-00EqBS-21
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 12:41:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFswR-0006XW-2n
	for lore@pengutronix.de; Mon, 03 Nov 2025 12:41:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rsHHKYqUtrLxHOhIhyNG5LfcYE/YdJbzSrGr0IeevR8=; b=bKG9e+Uqcr2XyKpEhKcjwE5H23
	molkGyKMd0MbUnmbOD+DKaEG030De3XDkvzXVKhjcDakWtpF2AQG+fzOhCqQ68kkcvMYTNGQ0e2ze
	/DFDaYOWTO7iag2I/Q400bZM//hEnAyrK7Xk//rZpa7vhXdWIZhAnZKSq4R7+GkacczZ0yzeJ39Qr
	0p7x+0j7bTm3oRnW6TG3nGx6KUx1JgkXjweYQ8OxA17HpdaQ6rd7iqgFq9n6QoC0FPUaxLiFJC9tu
	us4v7mBNpjzs/wKx8eh7USfxD/WCGjpdTAzhwri9wPY6NYIbovpdotWr2PprFAsJVATskmneCknkn
	e9QC36+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFsw2-00000009kk4-1jiY;
	Mon, 03 Nov 2025 11:41:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFsw0-00000009kjK-1Ltk
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 11:41:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vFsvy-0006ON-QK; Mon, 03 Nov 2025 12:41:14 +0100
Message-ID: <5d5a5331-9cc8-426a-85ea-cdb288fdf265@pengutronix.de>
Date: Mon, 3 Nov 2025 12:41:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
 <20251028-tlv-signature-v2-15-3bafce636ad7@pengutronix.de>
 <aQh_K6q-F2Og-vhb@pengutronix.de>
From: Jonas Rebmann <jre@pengutronix.de>
Content-Language: en-US
In-Reply-To: <aQh_K6q-F2Og-vhb@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_034116_375933_ACD764D9 
X-CRM114-Status: GOOD (  14.53  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 15/17] crypto: concatenate fit development certificate
 with private key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 2025-11-03 11:08, Sascha Hauer wrote:
> On Tue, Oct 28, 2025 at 07:03:20PM +0100, Jonas Rebmann wrote:
>> Merge the exemplary keys copied in from [1] into a single pem file,
>> in a manner similar to test/self/development_rsa2048.pem for consistency
>> and to reduce clutter a bit.
>>
>> While at it, rename them from "fit-" to "snakeoil-" as they are not only
>> used for fit, but also for tlv integration tests, and to indicate more
>> clearly that these are publicly known keys.
> 
> Should we rather keep the "fit" name and add another key for tlv
> integration tests?

I'd rather not add more 'compromised' keys to the repo. What would be
the gain?

I think naming it snakeoil gives it the warning it deserves. We should
make it hard for anyone to confuse our CI/Development keys with their
production keys.

Ahmad was concerned about cluttering the repo with keys I think, that's
why he asked me to concatenated public key and certificate here.

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


