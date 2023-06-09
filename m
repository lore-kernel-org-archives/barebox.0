Delivery-date: Fri, 09 Jun 2023 08:37:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7VkI-00GqCY-FD
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 08:37:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7VkG-0002Mg-5s
	for lore@pengutronix.de; Fri, 09 Jun 2023 08:37:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MDez65pBBLowPo5VEWnsNRLrERmTziSVA9mT+bkBy0U=; b=nynGQLygXO8D8uhEJ/I2Tye38A
	BHHdAHXBIu5h2gx9bnBW6snQ9SLLUNq/fKiuXTjk1f1+iwd7VYAcjohwBXKrTfCMOHK6xGuy2WsM9
	k36jw7UhNAXfZJaZ7isCIOiDVc3Qcg7WDBTXBFYbVbN4vFNEHBlh3QsQpaPrgR+z6P+5bDnOdJYgV
	FK87ZmJQyCqTQ+5grsqykXyEobAEhLayZpRVxdkPLYPX7KMxUgzRxN7+rOd4DFc8DbxFFrzpZDJUs
	SF2Kgt9ZFZ4L6pBfbCQ6ouJFDQJ4FfNdaaw+xdAHABiTopGokQULLhBWdfN35Cdcn3f3wxv5LbzGA
	UMlr6K7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7VjF-00BtHC-22;
	Fri, 09 Jun 2023 06:36:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7VjC-00BtGR-0n
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 06:36:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q7VjA-0002Aq-QN; Fri, 09 Jun 2023 08:36:04 +0200
Message-ID: <e72144bf-7523-4d5e-09a3-74f910a1ed7f@pengutronix.de>
Date: Fri, 9 Jun 2023 08:36:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Denis Orlov <denorl2009@gmail.com>, barebox@lists.infradead.org
References: <20230607051155.3175-1-denorl2009@gmail.com>
 <20230607051155.3175-3-denorl2009@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230607051155.3175-3-denorl2009@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_233606_388961_711A419B 
X-CRM114-Status: GOOD (  16.20  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/3] test: mips: add QEMU Malta 64le labgrid config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 07.06.23 06:59, Denis Orlov wrote:
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> ---
>  test/mips/qemu-malta64el_defconfig.yaml | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>  create mode 100644 test/mips/qemu-malta64el_defconfig.yaml
> 
> diff --git a/test/mips/qemu-malta64el_defconfig.yaml b/test/mips/qemu-malta64el_defconfig.yaml
> new file mode 100644
> index 0000000000..22562d5b7a
> --- /dev/null
> +++ b/test/mips/qemu-malta64el_defconfig.yaml
> @@ -0,0 +1,22 @@
> +targets:
> +  main:
> +    drivers:
> +      QEMUDriver:
> +        qemu_bin: qemu
> +        machine: malta
> +        cpu: 5KEf
> +        memory: 256M
> +        bios: barebox-qemu-malta.img.swapped
> +        extra_args: ''
> +      BareboxDriver:
> +        prompt: 'barebox@[^:]+:[^ ]+ '
> +        bootstring: 'commandline:'
> +      BareboxTestStrategy: {}
> +    features:
> +      - virtio-pci

Did you test virtio PCI? I don't see it enabled in the defconfig.

> +images:
> +  barebox-qemu-malta.img.swapped: !template "$LG_BUILDDIR/images/barebox-qemu-malta.img.swapped"
> +tools:
> +  qemu: /usr/bin/qemu-system-mips64el
> +imports:
> +  -  ../strategy.py

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



