Delivery-date: Fri, 16 Jan 2026 13:53:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgjKT-001xmd-1H
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 13:53:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgjKS-0007mC-Dm
	for lore@pengutronix.de; Fri, 16 Jan 2026 13:53:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SK2VZ5ugD9AtEz+V4VR6p1JPa1J2bSCSUfhPFiUQ6+c=; b=hgKFN3Q0jN5MVzjXI9neVY8n9r
	sFWUVFVXXt4LiOQvsFyzzyr8DIIHQZ7XKYU6PgOYhrtv5bRR1vBUEUzJTKIz01x3GaoLhvbl4mSNh
	Fgcq4qM+hW80NoO/v8bI++VxIG8B5fa8HN1W4JFcBwshBAuRG0STB+ZWBza3mxjUKvSAvYP+gdS2H
	cv3K/t51l7a9TEyeAg5SohD8oTFHqJG1CtRW31dJq/dLlPhCmUkq+gWdPlZfxDJkppbUIvhzdMIFY
	S/+MfFM+7qQ4ggbeDjANr+POsdRvhrJsSEykVi3jlwPtEBT4YzfOaQTf2QkjSphgrONmCZIaP9rin
	Zg9PY3bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgjJs-0000000E819-47sV;
	Fri, 16 Jan 2026 12:52:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgjJq-0000000E80l-3tiq
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 12:52:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgjJn-0007fE-4i; Fri, 16 Jan 2026 13:52:47 +0100
Message-ID: <e5804811-a23c-4a23-a8bc-c75582260a54@barebox.org>
Date: Fri, 16 Jan 2026 13:52:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, David Dgien <dgienda125@gmail.com>
References: <20260115115924.3428886-1-a.fatoum@barebox.org>
 <20260115115924.3428886-3-a.fatoum@barebox.org>
 <aWn36P7Q9UKkpkkd@pengutronix.de>
 <84b47759-5755-4c55-9d50-2ee9e05ff6b8@barebox.org>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <84b47759-5755-4c55-9d50-2ee9e05ff6b8@barebox.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_045250_969307_0B342FD0 
X-CRM114-Status: GOOD (  14.28  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 02/12] ARM: qemu-virt: add image for use as -bios
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 1/16/26 11:21 AM, Ahmad Fatoum wrote:
> Hi,
> 
> On 1/16/26 09:33, Sascha Hauer wrote:
>> On Thu, Jan 15, 2026 at 12:54:28PM +0100, Ahmad Fatoum wrote:
>>> +	printf("Using %s device tree at %p\n", origin, fdt);
>>
>> Doesn't make a difference for PBL, but I think pr_info would be more
>> appropriate here.
> 
> Sure.
> 
>>>  #define BAREBOX_BOARDDATA_COMPRESSED_DTB_MAGIC 0x7b66bcbd
>>> diff --git a/test/arm/virt-el2@multi_v8_defconfig.yaml b/test/arm/virt-el2@multi_v8_defconfig.yaml
>>> new file mode 100644
>>> index 000000000000..8aa514fb4179
>>> --- /dev/null
>>> +++ b/test/arm/virt-el2@multi_v8_defconfig.yaml
>>
>> You anticipated ARM32 above, how about adding these for
>> multi_v7_defconfig as well?
> 
> Ah, the name is misleading anyway, because it still runs in EL1 (which is good,
> as we can use hvc for PSCI, but I was not aware of that yet when I named the
> file).
> 
> I can rename and add a new v7 YAML in v2.

Are you done reading through the series or should I wait before sending
v2 some more?

Cheers,
Ahmad

> 
> Cheers,
> Ahmad
> 
>>
>> Sascha
>>
> 
> 
> 



