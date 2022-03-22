Delivery-date: Tue, 22 Mar 2022 09:09:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWZa6-002KOw-FP
	for lore@lore.pengutronix.de; Tue, 22 Mar 2022 09:09:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWZa8-0003D0-Fk
	for lore@pengutronix.de; Tue, 22 Mar 2022 09:09:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dkd7RZMRTXc70zYu0PbZ+bJ5bhcEEjMji8/FvmtoUl8=; b=4/rx4lnJXXNFXu
	PGzS1uRJ3StGVtc+nkASgckEtT2x10GL2OMCnhBEI0Kt0ErlhBSKGeqRSB24H8o/q1p7UTcuLRGmN
	WZlJ0s2eOrOFGJAaQC+zgIlG728s2JG416TFTB6kYRuNTN0nehL4UqjamKae0/5Dj6U/10fd5mQH2
	uIas2HCXiIHHg8cNY/AlclG7cnHZlknoc8zQvnEp6XTU7TSkEiu4KWFlLTPleVTTYQWqpDPtm/m/L
	vPQ4tQmfsvsUdVwANUdGRwWS3PGaJWoweLoRYuPv2BxDaau6r7Vw1cnz/QhTr0ZMOn5Mhx2d08eoR
	ooQVi+NtCA+5MpFq5T3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWZYU-00AKpo-Av; Tue, 22 Mar 2022 08:07:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWZYP-00AKoG-7e
 for barebox@lists.infradead.org; Tue, 22 Mar 2022 08:07:46 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nWZYN-00033Z-7D; Tue, 22 Mar 2022 09:07:43 +0100
Message-ID: <32d47eaa-df0b-c949-ffd0-89e19ca1f244@pengutronix.de>
Date: Tue, 22 Mar 2022 09:07:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: "Barbier, Renaud" <Renaud.Barbier@ametek.com>,
 Barebox List <barebox@lists.infradead.org>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <MN2PR16MB313566652F19867ADB77727F91139@MN2PR16MB3135.namprd16.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <MN2PR16MB313566652F19867ADB77727F91139@MN2PR16MB3135.namprd16.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220322_010745_307549_C4E4EF62 
X-CRM114-Status: GOOD (  13.85  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: sha2 digest on ppc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Renaud,

On 18.03.22 10:14, Barbier, Renaud wrote:
> Commit 03fb5524b06 has changed the configuration selection for hash algorithm. For instance:
> 
> -config SHA256
> +config HAVE_DIGEST_SHA256
>  	Bool
> 
> This breaks on my PPC platform as the configuration selection has not been changed in crypto/sha2.c
> if (!IS_ENABLED(CONFIG_SHA256))
> 
> Still working on my ARM platform because the algo is registered somewhere else (arch/arm/crypto/sha256_glue.c)
> 
> RENAUD: sha256_digest_register
> RENAUD: sha256_digest_register: ALGO NOT REGISTERED
> ...
> RENAUD: digest_algo_get_by_name: sha256 sha256
> RENAUD: digest_algo_get_by_name: sha224 sha256
> RENAUD: digest_algo_get_by_name: md5 sha256
> FIT: /images/kernel-1/hash-1: hash OK

Indeed. There are other instances as well broken by this.
This already got into a release unfortunately.

Cc += Uwe, who introduced above mentioned commit.

Cheers,
Ahmad

> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

