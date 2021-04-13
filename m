Delivery-date: Tue, 13 Apr 2021 08:28:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWCXI-0006xj-2o
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 08:28:32 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWCXH-0003gz-90
	for lore@pengutronix.de; Tue, 13 Apr 2021 08:28:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tMGSmkKo8lHJz0KKRvz+OlYotT1Pv8rHGrJ5U5WQOu8=; b=c9sNp575k/R6HlZmGhavANXk1
	lMic7akKQiOyfap7uwCfYg8UeuaJOQKd0piDxnGsqqtzB94/aMpfe7ypQhfjO5GamHJI+pdElxJM0
	RqE/Z9OqwigtoNtsitN1+Zbc6JaoSh2SBBQUvP+S3vL+6NsJdXtBidkGh8SwN/Wn+G/xOQPBa4RBx
	g4aF7Rx1WHsyDSSWeWVCFVM3kMn13gLdEmshkCaTKF5JcnvVH8iF3MlILIqj2Mo1Mx1GHzhIch/Ul
	My4b3Asr2QjqbacR/xoux/2YXJQMuc3X/Gm0ssj26iTmFsIbgfMlwh5CBOFSNk8MJZRIFlacYAtWa
	PhdXJ1Smg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWCW1-008OIY-Qf; Tue, 13 Apr 2021 06:27:14 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWCVl-008OH3-Kv
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 06:27:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=pSudrQXdPRxYyH+XAE3Ik8fmij5eFpj5QewIioW9rzk=; b=QLc4M6W70/RaGTOs1kAy5KNKpm
 FCcRQRXG2jOL1D1GCFusS9P07RpVGnvf63J1scsRJM6ihYVWW+H/jkraZ7jbpXaaA+3rQreg53GdL
 Iwrbqw41SRUdliWEqZPQ4JML5pm5X1bd2NKDajHT/OngSj3fzdWZNgha/Wc/980oQy82Ka47ZbjXb
 HKeBJuPn+K9Pfe+RJrxE6f8fhriG/Gx/MKrUO0upvRqd9TxLRG2TDfzch43oBuJHHtNDot8d6Z5HF
 V6RHB7wYkok4j0iVXEqgFUyU99SukdoNOHCblC/07o4k+osvPWEWIjIfQJuIiKJMt02R2Dt0xnuL8
 rG3qz6NA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWCVj-006loq-1I
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 06:26:56 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lWCVh-0003ZP-Ek; Tue, 13 Apr 2021 08:26:53 +0200
To: Lars Pedersen <lapeddk@gmail.com>, barebox@lists.infradead.org
Cc: Bruno Thomsen <bruno.thomsen@gmail.com>
References: <20210413061727.186938-1-lapeddk@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <a8056a06-aaa2-1874-aa43-38494d6183db@pengutronix.de>
Date: Tue, 13 Apr 2021 08:26:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210413061727.186938-1-lapeddk@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_232655_109817_BB9FCBB9 
X-CRM114-Status: GOOD (  10.37  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: i.MX: Kamstrup mx7 concentrator board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 13.04.21 08:17, Lars Pedersen wrote:
> +config MACH_KAMSTRUP_MX7_CONCENTRATOR
> +	bool "Kamstrup i.MX7 Concentrator"
> +	select ARCH_IMX7
> +	select ARM_USE_COMPRESSED_DTB

You probably want to select CONFIG_POWER_RESET_GPIO_RESTART
here eventually.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

