Delivery-date: Wed, 20 Aug 2025 18:28:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uolfV-002g1n-2b
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 18:28:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uolfU-00084K-M0
	for lore@pengutronix.de; Wed, 20 Aug 2025 18:28:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J3LZCDcEcddEWsIIdoTgnqqEpBjnbU831Qwmq6ufRzM=; b=FVQXiOHOR4xs3AvojgszCDXi3+
	FvzLRfEecpUlxqT/VISwKKai4qVvIFbeNSylSxU5dyeEGkWvnqIRdw12UXm6hhW78xKaEkNcOLUlj
	g3I9Q0QS2lpFzNOGEd5atfZDzL3UoLIe8tVKQrnPJaX6/+7vI2n2dHz2JXy8X8ko2kOHBOKeF5uHg
	+jX7+IxF4e2kZUxPAxk7QJ0NqfQK2wUjTJxJqTv1jbr2v7QXE0kk8VOkQeXSz1NaMYVRWg3YDk3Pf
	GA32bZqz8yI6FoGadFdwuRGnfAy/zaaedheiUGP/drgVtZpl6kX3UFD8ethtfH0aCVTf7WFk2JRCl
	ZEF5ikxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uolen-0000000EOPA-0Lrs;
	Wed, 20 Aug 2025 16:27:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uojyS-0000000E7pC-13rR
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 14:39:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uojyQ-0008Eu-WD; Wed, 20 Aug 2025 16:39:35 +0200
Message-ID: <8e9da225-299f-4d68-84ce-86cf40c5056c@pengutronix.de>
Date: Wed, 20 Aug 2025 16:39:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
 <20250820-security-policies-v1-23-76fde70fdbd8@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250820-security-policies-v1-23-76fde70fdbd8@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_073936_295537_54815833 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 23/24] security: add filesystem security policies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 8/20/25 15:18, Sascha Hauer wrote:
> @@ -1063,6 +1064,11 @@ static int tftp_probe(struct device *dev)
>  	struct inode *inode;
>  	int ret;
>  
> +	if (!IS_ALLOWED(SCONFIG_FS_CRAMFS)) {

Should be SCONFIG_FS_TFTP.


-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



