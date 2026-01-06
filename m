Delivery-date: Tue, 06 Jan 2026 14:54:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd7Vn-001udq-0m
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:54:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd7Vm-0002HC-Nr
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:54:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aDvMtJz9W2w5Y8NIupdXzFumWEQthXg9Y/xfkfPoOl0=; b=hvN6O344XOJ3xE0G6mxBzxXDG8
	ypTJUblUY4+3qGNUU9c644F+jjg3BR3oRxuGqvpSl0D6BM71tDOv6s/rBS/aH0PI+Dua0HnezhDGc
	+NITOeDgGD9ISCMEV/J0sRNQOhwqeW6uTSW/ofs2qTsplfVln582e7iclaDKqUu9c8sqZfYu6Do3s
	f78Dn7B2CcJIGwmBIlHgKlwmeot1OI9ysVhoSy5t+Fnfi5VUB/3FbG0I1CMr6Xfdhc1UsPOGGyJtQ
	q18jeQlyrZ9FQCjmQ1ICsT4MMrkqto+tozDASkquYEGYk9TXklJGamwZMcSP6SnXUqjCQ6qi0HqDG
	zeaZWkCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7VK-0000000DE3F-47yb;
	Tue, 06 Jan 2026 13:53:46 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7VK-0000000DE39-0bX1
	for barebox@bombadil.infradead.org;
	Tue, 06 Jan 2026 13:53:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=aDvMtJz9W2w5Y8NIupdXzFumWEQthXg9Y/xfkfPoOl0=; b=tWPxqXPA7b/SEUHlI/ZA2bTFU9
	5FBWdL0f4W3x77U/+C3Fz0SQRE5BDqctjnd0K2Sgayu/o+04r9cdRB5y5LEsx6VODR2OM6m4vPyKf
	dzD9/E5Re5Bm66l7iR43FqJG8y55Pz8uPTcV4y7DjdpuMF+fqAlNncu5fP9PswJsIec7ka5OX7TRw
	g8/oX2SvP687wLyiccswhgYyoRxy1vrTiCAb6Lz2+7CUBUybNWteEBDxYiZvNDDFhY4k9CsxvJknP
	imp3/4K5MP2ByB65R3XS0S+7XJIdQHKIoYe5Zm80x62OCp/gq8hArZIhnWjHTVS2Hsty8UcVtJ1DU
	uk/Y60wA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7VG-0000000Bru2-3z8i
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:53:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd7VG-00029G-Ej; Tue, 06 Jan 2026 14:53:42 +0100
Message-ID: <1cf2995b-e44a-4623-af05-9cc44fdc42ab@pengutronix.de>
Date: Tue, 6 Jan 2026 14:53:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-7-487bc760f045@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260106-pbl-load-elf-v2-7-487bc760f045@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_135343_031802_FDDAA7DD 
X-CRM114-Status: UNSURE (   6.33  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 07/21] elf: implement elf_load_inplace()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/6/26 1:53 PM, Sascha Hauer wrote:
> For ET_DYN (position-independent) binaries, the relocation offset is
> calculated relative to the first executable PT_LOAD segment (.text section),
> taking into account the difference between the segment's virtual address
> and its file offset.

Same review feedback as for v1: I believe it's the lowest load address
with no special significance to the text section.

Apart from that:

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



