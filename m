Delivery-date: Fri, 19 May 2023 11:00:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzvyR-006UDA-6Y
	for lore@lore.pengutronix.de; Fri, 19 May 2023 11:00:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzvyO-0004C8-Q7
	for lore@pengutronix.de; Fri, 19 May 2023 11:00:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kcxvIKF/pHa7Cxa2jkMSs6QqJxKPjNKTMkzR2FIg02s=; b=uBFnwyr9Q9ZkrPuryhxYjxoMw0
	pdOIOgtwHAH2Ozoa54DcMBpzAdm2I0pL7blp4Qw1QD0cRiAXfE9XeYdR+hLai3Us+VkeYi0iQyB5T
	gYL7HJETyntfRchhIpDhtIQo3ofDXyv4BEfKzzvmBgI2HH+3usvNUZ8DehscXJrRWruiujgJyO7MP
	RANVm/k4EnWqr5URIfG65GFukehS3OgBNb7DOtG29iT8Y1EPALIpCaF6e4VgQVoUp3C41BpODZlIM
	9YyO2LKbXvpteDsyEsKVwvoRKwSkdFaKjqDfi4utofB4DcpeB6B+9BZF+q65wg+fDEOiOGF/n9FSh
	8WYTPisw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzvxB-00Fc6A-06;
	Fri, 19 May 2023 08:59:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzvx8-00Fc4a-09
	for barebox@lists.infradead.org;
	Fri, 19 May 2023 08:59:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzvx2-0003t8-Jx; Fri, 19 May 2023 10:59:04 +0200
Message-ID: <232d7d20-8c3b-bbd5-2150-fc404099a6ed@pengutronix.de>
Date: Fri, 19 May 2023 10:59:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
References: <20230503100609.1522959-1-a.fatoum@pengutronix.de>
 <CAA4bVAEtTi0+gYRd04ou+Cv6vDaHd_Q5+hzM5zfEtpGe5=qswQ@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAA4bVAEtTi0+gYRd04ou+Cv6vDaHd_Q5+hzM5zfEtpGe5=qswQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230519_015910_089033_56F3573D 
X-CRM114-Status: GOOD (  17.35  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] net: dsa: realtek: fix Kconfig selects
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 11.05.23 10:35, Antony Pavlov wrote:
> Hi Ahmad!
> 
> On Wed, 3 May 2023 at 13:08, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
>> Unlike Linux, barebox has no CONFIG_FIXED_PHY or CONFIG_IRQ_DOMAIN.
>> The former is implied by CONFIG_PHYLIB and the latter is unneeded, so
>> revise the Kconfig option accordingly.
> 
> You can drop 'select REGMAP' too.
> 
> It looks like there are several undeclared Kconfig options.
> 
> I used these commands to find them:
> 
> find -iname 'Kconfig*' -type f -exec cat {} ';' | grep "\(^\s*menuconfig
> \|^\s*config \)" | sed "s/^\s*//" | sed "s/^config //"  | sed
> "s/^menuconfig //" | grep "^[A-Z]" | sed "s/ *#.*$//" | sed "s/ if .*$//" |
> sed "s/\s*$//" | sort | uniq  > /tmp/config
> find -iname 'Kconfig*' -type f -exec cat {} ';' | grep "^\s*select " | sed
> "s/^\s*//" | sed "s/^select //" | grep "^[A-Z]" | sed "s/ *#.*$//" | sed
> "s/ if .*$//" | sed "s/\s*$//" | sort | uniq > /tmp/select
> diff -u /tmp/select /tmp/config | grep ^- | grep -v "^---" | sed "s/^-//"
> 
> diff output on the master branch is:
> 
> CONFIG_ARCH_HAS_SJLJ
> CRYPTO_BLKCIPHER
> CRYPTO_DES
> REGMAP

Thanks. I had added scripts/kconfig-lint.py to catch such things, but
it got broken recently by the 32BIT/64BIT rework...

Cheers,
Ahmad

> 
> --
> Best regards,
>   Antony Pavlov
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



