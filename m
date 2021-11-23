Delivery-date: Tue, 23 Nov 2021 09:54:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mpRZb-0006If-4Z
	for lore@lore.pengutronix.de; Tue, 23 Nov 2021 09:54:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mpRZa-0000cF-1J
	for lore@pengutronix.de; Tue, 23 Nov 2021 09:54:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LoU6oaC+S75KVxy8Km2c9L8ws4rzfZjX+mtcnQHJH4c=; b=bee3Xah3Xjyp1f
	mPfYBr4bnlmZh3VAfYCxV4w7BF3VwV8BNNdinWMEEuehKCFuKj3/rVrGMJGHp8/2FPnBSkLFgWAOj
	uG9S92SbOqKFgkL4yWc+fZnJaFnLHf2/w9DJtr/nJ9IEptJ6HY9BF5K/PCBxrSTVW8gMzx2xTT3mr
	XLH08PlcaZj+rAXZApf/pQJ/2GYdqysg/IqwGda4+YicrI2C9uAXcAmV289n8H8IZmBjxL+X0m25s
	kt8eZ4dIhfK3gCJhRxEzgL/WVm7mb9MHBsrP9VqzpS7ckQ0HSeox2Ilf8gckdUu8AYLG+7hgEMH1S
	h+JNefX7BrlYw3J77SEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpRXe-001Mof-NK; Tue, 23 Nov 2021 08:52:42 +0000
Received: from smtpout140.security-mail.net ([85.31.212.148]
 helo=fx408.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpRXO-001MlT-Nk
 for barebox@lists.infradead.org; Tue, 23 Nov 2021 08:52:28 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx408.security-mail.net (Postfix) with ESMTP id BAF001B7B4A0
 for <barebox@lists.infradead.org>; Tue, 23 Nov 2021 09:52:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1637657543;
 bh=nj4PCVUGABKd5yDwYZMrq6nmeq5jGbV2Era2HGdklaY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=taiopc8j3n8EJDsWFc7pe4Q5fVG8/DFfcppcW8zFR593SJEuU1wf4ENSvwsrmRHCE
 NrRzV1Oc2iRqSR6OWTu0+YP0qWzQ4LhKTIGSjwu3YT6mVEKO0ezdJNtKAvDE//q0qe
 jdAy0qUnMs4uh8Tg6W/uVWaHUOFSVfVBw2HbdgtM=
Received: from fx408 (localhost [127.0.0.1]) by fx408.security-mail.net
 (Postfix) with ESMTP id 72C0B1B7B5A5; Tue, 23 Nov 2021 09:52:23 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx408.security-mail.net (Postfix) with ESMTPS id 335861B7B5F3; Tue, 23 Nov
 2021 09:52:22 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 17A4F27E038A; Tue, 23 Nov 2021
 09:52:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 00FAD27E0390; Tue, 23 Nov 2021 09:52:21 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 SjJZoROCc_j4; Tue, 23 Nov 2021 09:52:21 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id D860727E038A; Tue, 23 Nov 2021
 09:52:21 +0100 (CET)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <9739.619cabc6.3256a.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 00FAD27E0390
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1637657542;
 bh=/AmFRk9ECDixGKmQuJ2wpgzuOnhb6656Yyp4d2hyjXw=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=TjxeqiLoBQgbfHiLoLc0eiUigRL1cFRPIF2leRWq5h7tOR4PVEF4eULhnE57cltxT
 KcZFfJM9SGvPAR17npv8uQFIT8DUYx8YmhJTWPL/z5CDQ86vX12zTZNoKWVg4hgcCL
 Dho6JQ635NQ5oSVd7Tyd6uqJuiWvaS5RpSgCFal8=
Date: Tue, 23 Nov 2021 09:52:20 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211123085220.GB15878@tellis.lin.mbt.kalray.eu>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
 <20211122084732.2597109-11-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211122084732.2597109-11-a.fatoum@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211123_005227_017462_28856409 
X-CRM114-Status: GOOD (  18.70  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 10/30] efi: use SPDX-License-Identifier where appropriate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Nov 22, 2021 at 09:47:12AM +0100, Ahmad Fatoum wrote:
> Couple of files lack an explicit embedded license or cotnain
s/cotnain/contain/

> boilerplate. Replace with the appropriate SPDX-License-Identifier.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/efi/devicepath.c    |  2 ++
>  common/efi/guid.c          |  2 ++
>  common/efi/payload/image.c | 11 +----------
>  common/efi/payload/init.c  | 11 +----------
>  include/efi/debug_ll.h     |  1 +
>  include/efi/efi-device.h   |  1 +
>  include/efi/efi.h          |  1 +
>  7 files changed, 9 insertions(+), 20 deletions(-)
> 
> diff --git a/common/efi/devicepath.c b/common/efi/devicepath.c
> index f17b9294cc1b..6341ca005ba5 100644
> --- a/common/efi/devicepath.c
> +++ b/common/efi/devicepath.c
> @@ -1,3 +1,5 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
>  #include <common.h>
>  #include <efi.h>
>  #include <malloc.h>
> diff --git a/common/efi/guid.c b/common/efi/guid.c
> index fbe96ecd048c..f1a918f91e19 100644
> --- a/common/efi/guid.c
> +++ b/common/efi/guid.c
> @@ -1,3 +1,5 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
>  #include <common.h>
>  #include <efi.h>
>  
> diff --git a/common/efi/payload/image.c b/common/efi/payload/image.c
> index 3c55a457eae3..53b444eef60f 100644
> --- a/common/efi/payload/image.c
> +++ b/common/efi/payload/image.c
> @@ -1,17 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * image.c - barebox EFI payload support
>   *
>   * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #include <clock.h>
> diff --git a/common/efi/payload/init.c b/common/efi/payload/init.c
> index 88d0bfa939ec..0e672a6b56d2 100644
> --- a/common/efi/payload/init.c
> +++ b/common/efi/payload/init.c
> @@ -1,17 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * init.c - barebox EFI payload support
>   *
>   * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #include <linux/linkage.h>
> diff --git a/include/efi/debug_ll.h b/include/efi/debug_ll.h
> index 4ca72de312af..905f1c43cd23 100644
> --- a/include/efi/debug_ll.h
> +++ b/include/efi/debug_ll.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  #ifndef __MACH_DEBUG_LL_H__
>  #define __MACH_DEBUG_LL_H__
>  
> diff --git a/include/efi/efi-device.h b/include/efi/efi-device.h
> index 5ec59a8a2ddd..cd8a374c32fe 100644
> --- a/include/efi/efi-device.h
> +++ b/include/efi/efi-device.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  #ifndef __EFI_EFI_DEVICE_H
>  #define __EFI_EFI_DEVICE_H
>  
> diff --git a/include/efi/efi.h b/include/efi/efi.h
> index 648afb9ec5a7..c7679b4b8f28 100644
> --- a/include/efi/efi.h
> +++ b/include/efi/efi.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  #ifndef __MACH_EFI_H
>  #define __MACH_EFI_H
>  
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 
> 
> To declare a filtering error, please use the following link : https://www.security-mail.net/reporter.php?mid=17c3a.619b5a65.16acd.0&r=jmaselbas%40kalray.eu&s=barebox-bounces%2Bjmaselbas%3Dkalray.eu%40lists.infradead.org&o=%5BPATCH+10%2F30%5D+efi%3A+use+SPDX-License-Identifier+where+appropriate&verdict=C&c=b22b249ef71fa4af3fb70743334b7eff7aaf4614
> 





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

