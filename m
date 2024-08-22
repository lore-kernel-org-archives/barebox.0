Delivery-date: Thu, 22 Aug 2024 18:44:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shAvO-00CJ7S-0Q
	for lore@lore.pengutronix.de;
	Thu, 22 Aug 2024 18:44:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shAvN-0002SR-Cr
	for lore@pengutronix.de; Thu, 22 Aug 2024 18:44:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iuXnn55kuNBlhO3wmCKLlBmyHxbxqUyX//CfgNpllfM=; b=u6bkJ6uX5ff0B+oal7BxSWZoke
	T8oBugakGEI+SHG0Y0lRHJsNsIqwtwbk4SSwHpeXN7N7ji+UEwhnnWZIJARB6xGdDN7mFJd+kXWx6
	AeXQ1wcepOqgHlg9rPsvzGWmwXIjUpc+LVd6hu0Ya37bDRuapGnAinczsLekkrhiTnplEEt67hJPp
	sZU61/f7gyhREUAJPFg5x/tN8dpfxzZ/74evUYKxRzu2dXyED0wasF49BR5CUauWFQgcEhf6n3kDf
	/ikpjvHocZUndARnKXvahq6FM3QLf9Q89a28/b2G+Qo+p+N1oiCtiAyST7AAO3K65KXTAEQBa1NDw
	I8HDL31A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shAuf-0000000DdgH-32wT;
	Thu, 22 Aug 2024 16:43:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shAuD-0000000DdZV-0cde
	for barebox@lists.infradead.org;
	Thu, 22 Aug 2024 16:43:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shAuB-0002JK-3W; Thu, 22 Aug 2024 18:43:23 +0200
Message-ID: <afdd2beb-5828-4486-a479-0eef78ab91b3@pengutronix.de>
Date: Thu, 22 Aug 2024 18:43:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Stafford Horne <shorne@gmail.com>
Cc: barebox@lists.infradead.org
References: <20240814161435.566270-1-a.fatoum@pengutronix.de>
 <20240814161435.566270-3-a.fatoum@pengutronix.de> <ZsGfVTD5N-kZjVJF@antec>
 <707e7c50-aad1-4459-8796-0cc54bab32e2@pengutronix.de>
Content-Language: en-US
In-Reply-To: <707e7c50-aad1-4459-8796-0cc54bab32e2@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_094325_225928_7C76E358 
X-CRM114-Status: GOOD (  23.33  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/3] ci: container: downgrade OpenRISC toolchain from
 14.2.0 to 13.1.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 18.08.24 19:09, Ahmad Fatoum wrote:
> Hello Stafford,
> 
> On 18.08.24 09:14, Stafford Horne wrote:
>> On Wed, Aug 14, 2024 at 06:14:35PM +0200, Ahmad Fatoum wrote:
>>> The newest toolchain bump breaks OpenRISC start-up under QEMU: The console is
>>> now completely silent. Steps to reproduce the hang:

Turns out the toolchain update was not to blame, but the Debian container bump
that accompanied it. It moved the default console as part of adding three
more consoles to the platform. I am not sure that move was intended, so I submitted
a QEMU patch for that[1].

For barebox, I think we'l just break compatibility with older QEMU, describe
all 4 UARTs and use CONFIG_CONSOLE_ACTIVATE_ALL.

[1]: https://lore.kernel.org/qemu-devel/20240822163838.3722764-1-a.fatoum@pengutronix.de/
     Should show it once lore has indexed the mail

Cheers,
Ahmad

>>>
>>>   CONTAINER_GCC13=bdfdd5effcc169ebf8a9df2f1a5956ef34549682f78b450a97aceea2afd76f7a
>>>   CONTAINER_GCC14=fa35adeae1ab49b4dc09fc3bf4d68f92541a0d1f41e0df91a4879fd331e4b592
>>>   CONTAINER_BASE=ghcr.io/barebox/barebox/barebox-ci@sha256:fa35adeae1a
>>>
>>>   export CONTAINER=${CONTAINER_BASE}@sha256:${CONTAINER_GCC14}
>>>   export LG_BUILDDIR=build-openrisc
>>>   ./scripts/container.sh ./MAKEALL -a openrisc -O $LG_BUILDDIR
>>>   ./scripts/container.sh pytest --lg-env test/openrisc/generic_defconfig.yaml \
>>> 	--interactive
>>>
>>> Running the same steps, but with the older toolchain boots successfully:
>>>
>>>   export CONTAINER=${CONTAINER_BASE}@sha256:${CONTAINER_GCC13}
>>>   export LG_BUILDDIR=build-openrisc
>>>   git checkout v2024.08.0
>>>   ./scripts/container.sh ./MAKEALL -a openrisc -O $LG_BUILDDIR
>>>   ./scripts/container.sh pytest --lg-env test/openrisc/generic_defconfig.yaml \
>>> 	--interactive
>>>
>>> The hang happens somewhere before the jump to _start in arch/openrisc/cpu/start.S.
>>> Until that's fixed, let's pin the OpenRISC GCC version to the old v13.1.0.
>>>
>>> Cc: Stafford Horne <shorne@gmail.com>
>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>> ---
>>> @Stafford, do you have an idea what could cause this?
>>
>> Hi I am not sure about this, no new changes in the or1k-linux toolchain that I
>> know about.  I will try to reproduce and see what is going wrong.
> 
> That would be great, thanks! I had a typo in the instructions above,
> CONTAINER_BASE is not supposed to have @sha256:fa35adeae1a at the end.
> 
> I tried to debug this by importing _emergency_putc from the kernel and
> seeing where it's getting stuck. I tried on the working case (GCC13) and
> calling _emergency_putc before _start doesn't work. Unfortunately, that's
> where it hangs (or maybe, code isn't executed at all?) for GCC14 so that
> didn't help me narrow down the issue.
> 
> Cheers,
> Ahmad
> 
>>
>> -Stafford 
>>
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


