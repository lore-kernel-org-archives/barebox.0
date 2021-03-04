Delivery-date: Thu, 04 Mar 2021 12:16:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHlyS-00015q-Bm
	for lore@lore.pengutronix.de; Thu, 04 Mar 2021 12:16:56 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHlyR-0006Qv-IV
	for lore@pengutronix.de; Thu, 04 Mar 2021 12:16:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HsaaqUlXcwjs05iBIdRK3ACDBfKt1n1FYCwU1BLrf60=; b=MzSXjevWF1Ugyi2DZb+uEKYJl
	LGyJEs9rCDnB72S+8IPVZ6/JiQoiSHO3c0ntEu88O8vAXZprkuyVPpS50b5ikTU4mIs0wfAh7nlqC
	hTWNYl/baj6nY8UtM4e1L8IKhHR4u3f88UsX9cEqQHbxgTZmUGO5J+sHa+RdFdKzjPgb1+VR1SI6v
	MbjcqaVwEq1uwJIf8fyYKwtM23qMmUs4Zj9dd81hqc7clpB0VGewJYFYKlMbh+IGz7psZ+aRoOyCH
	umam7lNJtGwFwrB+4VILBF51AtGYi1rpsyl/eDs+wWg7ghcmWTS1haF33RxzgVgLK7tH8oSG9iAvb
	JO4YCW04g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHlwx-008QtQ-O3; Thu, 04 Mar 2021 11:15:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHluE-008Qhw-9B
 for barebox@lists.infradead.org; Thu, 04 Mar 2021 11:12:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lHluD-0005iN-Ln; Thu, 04 Mar 2021 12:12:33 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lHluB-0006m2-Fd; Thu, 04 Mar 2021 12:12:31 +0100
Date: Thu, 4 Mar 2021 12:12:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Stafford Horne <shorne@gmail.com>
Cc: Barebox <barebox@lists.infradead.org>,
 Openrisc <openrisc@lists.librecores.org>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210304111231.GB12944@pengutronix.de>
References: <20210303201904.3509658-1-shorne@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210303201904.3509658-1-shorne@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:12:23 up 14 days, 14:36, 80 users,  load average: 0.28, 0.27, 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] openrisc: Define the elf binary entry point
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Mar 04, 2021 at 05:19:04AM +0900, Stafford Horne wrote:
> Entry is used by qemu to find where to start booting, we define
> this to the 0x100 reset vector as is done by default when the CPU
> resets.  This fixes the qemu boot issue.
> 
> Signed-off-by: Stafford Horne <shorne@gmail.com>
> ---
>  arch/openrisc/cpu/barebox.lds.S | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/openrisc/cpu/barebox.lds.S b/arch/openrisc/cpu/barebox.lds.S
> index adb0c22f8..45c5f2553 100644
> --- a/arch/openrisc/cpu/barebox.lds.S
> +++ b/arch/openrisc/cpu/barebox.lds.S
> @@ -17,6 +17,7 @@
>  #include <asm-generic/barebox.lds.h>
>  
>  OUTPUT_FORMAT("elf32-or1k", "elf32-or1k", "elf32-or1k")
> +ENTRY(__reset)
>  __DYNAMIC  =  0;
>  
>  MEMORY
> -- 
> 2.26.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

