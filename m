Delivery-date: Mon, 24 Oct 2022 10:22:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omsj5-000RGv-53
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 10:22:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omsj4-0003pv-2o
	for lore@pengutronix.de; Mon, 24 Oct 2022 10:22:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CNz5ytk1OtvgdRkvU/T4MVxhDo5aQyBSQ2pgH43xGKk=; b=m+MBo5o4AuDQRpcw786DmQr9Om
	c354LmhaKiZ4SpVt2o/z2ASe4uIiMl7EiQLYyV4pTnXTB+WQ7huLNFCx+qEfxf1Z5lHyRBL5hCiQq
	PY3uuBe9yuKs0Y9h8/bDkIUQN+ub+c+VflJLZBvqXjvJpLczNgWbESLjCnVKMKnFhbi6SSLy732dP
	MSuJ3VT8ot/YFxYu+aA7eIzLXJuueqNq7E+OeqTUkbbYEDTQfTWQpBXmrJRyzjm4dKeMHq/Gn3luL
	d0Dl/BmJh3nSTTsiXtc8UDTHa2LHgS173w0VzbO3aXDRYcuWhiah5qqC+x58EOU/uJSgTbk9KM8/8
	vdcHa3Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omshn-0003zy-Tw; Mon, 24 Oct 2022 08:21:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omshi-0003yG-Tn
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 08:21:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1omshf-0003cj-Jt; Mon, 24 Oct 2022 10:20:59 +0200
Message-ID: <428e8b58-3982-3d77-5db2-32942b7cd80e@pengutronix.de>
Date: Mon, 24 Oct 2022 10:20:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>,
 Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
References: <20221005111214.148844-1-m.felsch@pengutronix.de>
 <20221005111214.148844-6-m.felsch@pengutronix.de>
 <20221022105554.c9bbe152814a3c7a682df735@gmail.com>
 <20221024075316.pmxpeje2stcj7zn5@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221024075316.pmxpeje2stcj7zn5@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_012102_981750_652DD410 
X-CRM114-Status: GOOD (  13.07  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 6/7] RISC-V: squash 64bit defconfigs into
 rv64i_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 24.10.22 09:53, Marco Felsch wrote:
> Hi Antony,
> 
> On 22-10-22, Antony Pavlov wrote:
>> On Wed,  5 Oct 2022 13:12:13 +0200
>> Marco Felsch <m.felsch@pengutronix.de> wrote:
>>
>> Hi Marco!
>>
>> It looks like this commit breaks emulate.pl, e.g.
>>
>>   ARCH=riscv
>>   ARCH=${ARCH} ./test/emulate.pl --kconfig-full --test -- --junitxml=$PWD/$ARCH.tests.xml --lg-log=$PWD/log/$ARCH
>>
>> reports
>>
>>   Can't find default configuration "arch/riscv/configs/virt64_defconfig"!
>>
>> Please see details: https://gitlab.com/frantony/barebox/-/jobs/3211154690#L111
> 
> Please see: https://gitlab.com/frantony/barebox/-/jobs/3211154690#L106
> 
> You are passing "--kconfig=virt64_defconfig" to tuxmake. I think this is
> the failure.

The configuration YAMLs are in test/riscv . They will need to be adapted.

E.g. qemu@virt64_defconfig.yaml -> qemu@rv64i_defconfig

Provided, rv64i is a strict superset of virt64, the test should then succeed.

> 
> Regards,
>   Marco
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


