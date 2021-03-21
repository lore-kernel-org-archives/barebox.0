Delivery-date: Sun, 21 Mar 2021 23:30:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lO6aM-0002d4-6D
	for lore@lore.pengutronix.de; Sun, 21 Mar 2021 23:30:14 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lO6aG-0006aL-QP
	for lore@pengutronix.de; Sun, 21 Mar 2021 23:30:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5Gemg2ukil9vTYaXEdVBb4YezWH9m4updRZay8dtS/4=; b=fwL2DHpgUF2Bf6jSJTOqcwryc
	dACkmJqp5JE5OJGMmegaaj4jQ3YJdViqm4xvUaXYWw1e/RozJ+nv4JrK4nKiSR1MPueoYeftegWLw
	3CWXqyqWr51gOIUu7w7qkBylWd57vEfSFdCG9NULXENSl8CT5NWqhCn4mpSBMbu3W2zmZB8D270Xh
	mbVOeoEOlWgnCAxk+Kt6PM2St1gRbRaC88HyK4cofVd/I/yyiOnp+AYeIwh4e5cQIUt2gumhGKpAg
	j/iqqBIMz/LNHohLgDmQtr/BJBrrYXkx2LbbWiyxahUAKLmcXveHzLBn8t1IeiMPK9Rh13Gcoc+Jp
	M5sIj1JWQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lO6WT-00AU4O-Ee; Sun, 21 Mar 2021 22:26:13 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lO6WL-00AU3z-MN
 for barebox@lists.infradead.org; Sun, 21 Mar 2021 22:26:09 +0000
Received: by mail-lj1-x229.google.com with SMTP id z25so18743118lja.3
 for <barebox@lists.infradead.org>; Sun, 21 Mar 2021 15:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5bT8yPVXkEqxPvD8Vz91KeFNyCf0gAOtQhh8txx0qew=;
 b=h+u4gd1/XXwQsv0V8MvGdFlkLqWAIt66MhymwNFxf/AxqcI2ZS6i7+19xuZJucDji+
 GHLkOfGqM4DwI0pOmfDgZYEBF8cV4rZzWasG3vqrynGNd39l53jmDYe1csg3fYnyxn0P
 747uNN1QpK6MvtoNF5zQleNvumrc1yxcmWgrJxuqUnT4Xbbe+2BcwtJ/kRtP+WzzQ0ay
 CLK+gu9WBeWtI9Eplmd9Tola28s+vZUUOTzjuJWBv0XX+gRqK2M9PfCddblIf3jSaMvi
 Gr7sSCxXDHK+F3XDlCEX7Dl1gApiCISwsYDWwvf0Ige+lblGDFfY70elz9TlU7rj80HY
 Zcsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5bT8yPVXkEqxPvD8Vz91KeFNyCf0gAOtQhh8txx0qew=;
 b=IRtTFbsbzCM9bkvadlNUop7aaJXMmnEQokhrJgJiuHQ8b8PKSDC1r4w2bNPrV8rcs4
 Km408wJgFTAVgx96Dluq7m4biKzb1qmGtzyDTKZ5mUuOAWxtYrZ2MkRc9Jnlu23608h1
 qDnBNVcBZHgWxylDhRV/mqsI3AM2aURJ8gzZ3o4jwjl+PxG//FSFZjEfaa+1OTRMJKdO
 XmJX/nRIs/TMiWgX+bO50PZxf4N01w0rtDmVgzIICZ/d6vyd7UxhnEfvE3zGSW9kIW7S
 pJ/0vXOY+JJlUqUMr6UTu5qEstUmjPmM2JL4SbbPZ6KUqMLPrOgAI3bWr+ycmKNsko3x
 4PeA==
X-Gm-Message-State: AOAM530myWhIU56r8StKIFFyXt9Z2p2rQUzMvU37bkgxVvbTSYdUzt14
 9Ml5ZE8XlXUjOwSNMl9JbV4=
X-Google-Smtp-Source: ABdhPJwW2MI5TRbIA7Vk+BZLjstwKekASXJ/8b4ZDpdA0sLOYe3AqkkHEUdC9tWC2U9XSimyoGXyEA==
X-Received: by 2002:a05:651c:118a:: with SMTP id
 w10mr7645907ljo.431.1616365562823; 
 Sun, 21 Mar 2021 15:26:02 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id a1sm1691026ljb.76.2021.03.21.15.26.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 21 Mar 2021 15:26:02 -0700 (PDT)
Date: Mon, 22 Mar 2021 01:26:01 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
Message-Id: <20210322012601.05991bd2733d9d32e1688665@gmail.com>
In-Reply-To: <20210321151344.5810-15-a.fatoum@pengutronix.de>
References: <20210321151344.5810-1-a.fatoum@pengutronix.de>
 <20210321151344.5810-15-a.fatoum@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_222606_304229_AA880635 
X-CRM114-Status: GOOD (  11.52  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 14/21] RISC-V: implement PBL and relocation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, 21 Mar 2021 16:13:37 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi!

> --- /dev/null
> +++ b/arch/riscv/include/asm/barebox-riscv.h
> @@ -0,0 +1,104 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/*
> + * (C) Copyright 2002
> + * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
> + * Marius Groeger <mgroeger@sysgo.de>
> + *
> + * (C) Copyright 2002
> + * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
> + * Alex Zuepke <azu@sysgo.de>
> + */
> +
> +#ifndef _BAREBOX_RISCV_H_
> +#define _BAREBOX_RISCV_H_
> +
> +#include <linux/sizes.h>
> +#include <asm-generic/memory_layout.h>
> +#include <linux/kernel.h>
> +#include <linux/types.h>
> +#include <linux/compiler.h>
> +#include <asm/sections.h>
> +
> +unsigned long get_runtime_offset(void);
> +
> +void setup_c(void);
> +void relocate_to_current_adr(void);
> +void relocate_to_adr(unsigned long target);
> +void __noreturn __naked barebox_riscv_entry(unsigned long membase, unsig=
ned long memsize,
> +					    void *boarddata);
> +
> +unsigned long riscv_mem_ramoops_get(void);
> +unsigned long riscv_mem_endmem_get(void);
> +
> +void *barebox_riscv_boot_dtb(void);
> +
> +static inline unsigned long riscv_mem_stack_top(unsigned long membase,
> +						unsigned long endmem)
> +{
> +	return endmem - SZ_2M;
> +}
> +
> +static inline unsigned long riscv_mem_stack(unsigned long membase,
> +					  unsigned long endmem)
> +{
> +	return riscv_mem_stack_top(membase, endmem) - STACK_SIZE;
> +}
> +
> +static inline unsigned long riscv_mem_early_malloc(unsigned long membase,
> +						   unsigned long endmem)
> +{
> +	return riscv_mem_stack(membase, endmem) - SZ_128K;
> +}
> +
> +static inline unsigned long riscv_mem_early_malloc_end(unsigned long mem=
base,
> +						       unsigned long endmem)
> +{
> +	return riscv_mem_stack(membase, endmem);
> +}
> +
> +static inline unsigned long riscv_mem_ramoops(unsigned long membase,
> +					      unsigned long endmem)
> +{
> +	endmem =3D riscv_mem_stack(membase, endmem);
> +#ifdef CONFIG_FS_PSTORE_RAMOOPS
> +	endmem -=3D CONFIG_FS_PSTORE_RAMOOPS_SIZE;
> +	endmem =3D ALIGN_DOWN(endmem, SZ_4K);
> +#endif
> +
> +	return endmem;
> +}
> +
> +static inline unsigned long riscv_mem_barebox_image(unsigned long membas=
e,
> +						    unsigned long endmem,
> +						    unsigned long size)
> +{
> +	endmem =3D riscv_mem_ramoops(membase, endmem);
> +
> +	return ALIGN_DOWN(endmem - size, SZ_1M);
> +}
> +
> +#define ENTRY_FUNCTION(name, arg0, arg1, arg2)                          \
> +	void name (ulong r0, ulong r1, ulong r2);                       \
> + 	static void __##name(ulong, ulong, ulong);                      \
   ^^
Please fix whitespace here.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

