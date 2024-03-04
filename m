Delivery-date: Mon, 04 Mar 2024 18:10:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhBq5-008Wyq-0G
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 18:10:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhBq4-0007FC-EB
	for lore@pengutronix.de; Mon, 04 Mar 2024 18:10:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GcZRm8pLQItJXQqsg2w+YSoBPlVEmJhg5Zu7YxOOcN0=; b=4CQymDw/5ajfTZyrLy8yaKTBlZ
	jmOZvm/nc/5pIJAVOtVqoMC4z124wKjl9eW/dCgG9jbYQMdBRsR9nSUi/eBmWnGmoTB0M151euhyI
	sigDFl668IA4EjqeUWqQnX4vdTgvwJPSrNrCFUJW3J492fC6rxIoRI8MFHOA+M0RKKvOlXXEy2Fo8
	RAubL9SZU8N53EaIZUEj66YZwtW7cYNQV2yiBaDt+Xe9ZKX/3v0eUCwzBXBtRNXQ++bZ26QVKXOcZ
	6hYUZjiAkBu7fPmbQyWD34sanjIMqR9inoLzAHqou/DzYbKYPMcz+/fYP3erkN2PTg4s5fSwt+8ju
	/jywAm6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhBpK-00000009xXd-1MA3;
	Mon, 04 Mar 2024 17:10:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhBpD-00000009xUl-4A6a
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 17:10:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhBp9-0006uZ-Oe; Mon, 04 Mar 2024 18:09:59 +0100
Message-ID: <5d284e7f-80be-4f98-8516-c05a574fecba@pengutronix.de>
Date: Mon, 4 Mar 2024 18:09:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
 <20240103181312.409668-66-a.fatoum@pengutronix.de>
 <20240108083722.GB1318922@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240108083722.GB1318922@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_091004_198114_0C20621A 
X-CRM114-Status: GOOD (  22.12  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 065/112] common: add PE/COFF loader
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 08.01.24 09:37, Sascha Hauer wrote:
> On Wed, Jan 03, 2024 at 07:12:25PM +0100, Ahmad Fatoum wrote:
>> EFI loader will need to parse and load PE executables. Add functions to
>> facilitate that. The API is inspired by the already existing ELF API.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  common/Kconfig           |   3 +
>>  common/Makefile          |   1 +
>>  common/pe.c              | 377 +++++++++++++++++++++++++++++++
>>  include/asm-generic/pe.h |  56 +++++
>>  include/linux/pagemap.h  |   1 +
>>  include/linux/pe.h       | 468 +++++++++++++++++++++++++++++++++++++++
>>  include/pe.h             | 316 ++++++++++++++++++++++++++
>>  7 files changed, 1222 insertions(+)
>>  create mode 100644 common/pe.c
>>  create mode 100644 include/asm-generic/pe.h
>>  create mode 100644 include/linux/pe.h
>>  create mode 100644 include/pe.h
>>
>> +struct pe_image *pe_open(const char *filename)
>> +{
>> +	struct pe_image *pe;
>> +	size_t size;
>> +	void *bin;
>> +
>> +	bin = read_file(filename, &size);
>> +	if (!bin)
>> +		return NULL;
> 
> The static inline wrapper of this function indicates you should return
> an error pointer here.
> 
>> +
>> +	pe = pe_open_buf(bin, size);
>> +
>> +	//free(bin); // FIXME
> 
> Isn't this only a matter of adding free(pe->bin) to pe_close() and
> freeing it here in case pe_open_buf() fails?
> 
> 
>> diff --git a/include/asm-generic/pe.h b/include/asm-generic/pe.h
>> new file mode 100644
>> index 000000000000..a1df7471348e
>> --- /dev/null
>> +++ b/include/asm-generic/pe.h
>> @@ -0,0 +1,56 @@
>> +/* SPDX-License-Identifier: GPL-2.0+ */
>> +/*
>> + *  Portable Executable and Common Object Constants
>> + *
>> + *  Copyright (c) 2018 Heinrich Schuchardt
>> + *
>> + *  based on the "Microsoft Portable Executable and Common Object File Format
>> + *  Specification", revision 11, 2017-01-23
>> + */
>> +
>> +#ifndef _ASM_PE_H
>> +#define _ASM_PE_H
>> +
>> +/* Characteristics */
>> +#define IMAGE_FILE_RELOCS_STRIPPED		0x0001
>> +#define IMAGE_FILE_EXECUTABLE_IMAGE		0x0002
>> +#define IMAGE_FILE_LINE_NUMS_STRIPPED		0x0004
>> +#define IMAGE_FILE_LOCAL_SYMS_STRIPPED		0x0008
>> +#define IMAGE_FILE_AGGRESSIVE_WS_TRIM		0x0010
>> +#define IMAGE_FILE_LARGE_ADDRESS_AWARE		0x0020
>> +/* Reserved					0x0040 */
>> +#define IMAGE_FILE_BYTES_REVERSED_LO		0x0080
>> +#define IMAGE_FILE_32BIT_MACHINE		0x0100
>> +#define IMAGE_FILE_DEBUG_STRIPPED		0x0200
>> +#define IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP	0x0400
>> +#define IMAGE_FILE_NET_RUN_FROM_SWAP		0x0800
>> +#define IMAGE_FILE_SYSTEM			0x1000
>> +#define IMAGE_FILE_DLL				0x2000
>> +#define IMAGE_FILE_UP_SYSTEM_ONLY		0x4000
>> +#define IMAGE_FILE_BYTES_REVERSED_HI		0x8000
> 
> These defines are duplicated in include/linux/pe.h

Indeed. Some struct definitions are also duplicated between the U-Boot
header originating from Wine and <linux/pe.h>. I have removed the
duplication for v3.

Thanks,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



