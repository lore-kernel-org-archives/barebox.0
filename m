Delivery-date: Wed, 07 Jan 2026 08:46:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdOFO-002B4F-1c
	for lore@lore.pengutronix.de;
	Wed, 07 Jan 2026 08:46:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdOFM-000495-N1
	for lore@pengutronix.de; Wed, 07 Jan 2026 08:46:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pdScigxXw3lG5RATqZIOI9HWIFFItb+HfmcGrMN23ao=; b=Jp7ntX6Gk/i048z8yG7Y731leD
	hGYqrVmBd/UOUJV5ZUWfe3JK6omir879MmLYjjG5fu+Wvfd6Cgy7Q3awKqfp3W/wxPr0B+CkwzGkN
	xvQGffuaxeDZmzlU7SxRiGFagJf+9Y6mAb90z6UTw5Gf5TM/3Vj4XjyzkeULvPDVN3FaloHG1rVXK
	I3obNx2GxqubbF6UeckHi+NGgFanp3iYgyffHSHSdhaeeMBQwXTW+0yWWIhtUud7lXArOzJr+/v/z
	TOOnugp31QQH5fqfRp/3s55Ls2gcmlEPArIqgNnNS/0kV1iFlcwD1lWLCD/a/74ritTyIJzu7iWtx
	szYNXdZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOEy-0000000EJev-42e4;
	Wed, 07 Jan 2026 07:46:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOEw-0000000EJe6-2m6X
	for barebox@lists.infradead.org;
	Wed, 07 Jan 2026 07:45:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vdOEt-000432-Uj; Wed, 07 Jan 2026 08:45:55 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vdOEt-009TRB-2R;
	Wed, 07 Jan 2026 08:45:55 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vdOEt-00G4hI-29;
	Wed, 07 Jan 2026 08:45:55 +0100
Date: Wed, 7 Jan 2026 08:45:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: zhengxiaojun <zheng.xiaojun@foxmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <aV4PMxDOuiHZh7ks@pengutronix.de>
References: <tencent_C5E0959753A838615BF48C3792E12BC74A08@qq.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <tencent_C5E0959753A838615BF48C3792E12BC74A08@qq.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_234558_699228_E4723B65 
X-CRM114-Status: GOOD (  19.22  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mmc: resolve conflict between MMC_CAP_NONREMOVABLE and
 MMC_CAP_1_8V_DDR
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jan 07, 2026 at 09:12:50AM +0800, zhengxiaojun wrote:
> Resolve conflict between MMC_CAP_NONREMOVABLE and MMC_CAP_1_8V_DDR.
> 
> Signed-off-by: zhengxiaojun <zheng.xiaojun at foxmail.com>

Added while applying:

Fixes: a382be0b4f ("mci: add option to detect non-removable cards during startup")

Sascha

> ---
>  include/mci.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/mci.h b/include/mci.h
> index 3db33f9142..50214aaae7 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -58,7 +58,7 @@
>  #define MMC_CAP_1_2V_DDR		(1 << 9)	/* Host supports eMMC DDR 1.2V */
>  #define MMC_CAP_DDR			(MMC_CAP_3_3V_DDR | MMC_CAP_1_8V_DDR | \
>  					 MMC_CAP_1_2V_DDR)
> -#define MMC_CAP_NONREMOVABLE	(1 << 8)	/* Nonremovable e.g.eMMC */
> +#define MMC_CAP_NONREMOVABLE	(1 << 10)	/* Nonremovable e.g. eMMC */
>  #define MMC_CAP_UHS_SDR12	(1 << 16)	/* Host supports UHS SDR12 mode */
>  #define MMC_CAP_UHS_SDR25	(1 << 17)	/* Host supports UHS SDR25 mode */
>  #define MMC_CAP_UHS_SDR50	(1 << 18)	/* Host supports UHS SDR50 mode */
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


