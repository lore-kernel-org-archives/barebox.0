Delivery-date: Wed, 07 Jan 2026 10:44:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdQ5u-002Cuc-1W
	for lore@lore.pengutronix.de;
	Wed, 07 Jan 2026 10:44:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdQ5t-0007Of-Rz
	for lore@pengutronix.de; Wed, 07 Jan 2026 10:44:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J6WYfDxs3U65iqFtstGehEv9R7RDkP/BJ7Tpn6rZzFE=; b=j9sEIyThZAow8exkCMDmkQzmtB
	hrZ1u+WX/VzJWJvhfpZPEqO1K6e8NUxbdtckCabIXISmQrmVhQUUPPodAJYAfrUoYhVyylFILpWt0
	wkd0mHUKgdhErCGS5gcbiuK+Zck2AforaLz1asm9oU1SQjyQEMYEe7B2dduXuxwu3u9r5Sbx8wI27
	YWvf/tn4Iczam0kJ0TnhteOYd2LnZZ7My+e29panNYJlbU8WIRqIjaWZdK+D7AXjHwp/eYP6JqobT
	vFfSF1AufoXLqBRyffBlPx+lt75ld4G8zx/MaY7Oo0T0gZLPQa+TTWRwZj23EKq6A7KAWFFS8erk4
	DaGDfQAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdQ5H-0000000EZKr-3Fm8;
	Wed, 07 Jan 2026 09:44:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdQ5A-0000000EZF6-3MdR
	for barebox@lists.infradead.org;
	Wed, 07 Jan 2026 09:44:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vdQ58-00079o-LI; Wed, 07 Jan 2026 10:43:58 +0100
Message-ID: <f754942f-a366-490c-b6bf-25f3a2387d49@pengutronix.de>
Date: Wed, 7 Jan 2026 10:43:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: zheng.xiaojun@foxmail.com, barebox@lists.infradead.org
References: <tencent_C5E0959753A838615BF48C3792E12BC74A08@qq.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <tencent_C5E0959753A838615BF48C3792E12BC74A08@qq.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_014400_983962_2C721EFE 
X-CRM114-Status: GOOD (  15.48  )
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
Subject: Re: [PATCH] mmc: resolve conflict between MMC_CAP_NONREMOVABLE and
 MMC_CAP_1_8V_DDR
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/7/26 2:12 AM, zhengxiaojun wrote:
> Resolve conflict between MMC_CAP_NONREMOVABLE and MMC_CAP_1_8V_DDR.
> 
> Signed-off-by: zhengxiaojun <zheng.xiaojun at foxmail.com>

For the record, this fixes following warning I had observed on a
Rockchip RK3568 board:

  mmc0: mci_send_ext_csd failed with -74

Thanks for the fix!
Ahmad

> ---
>  include/mci.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/mci.h b/include/mci.h
> index 3db33f9142..50214aaae7 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -58,7 +58,7 @@
>  #define MMC_CAP_1_2V_DDR        (1 << 9)    /* Host supports eMMC DDR
> 1.2V */
>  #define MMC_CAP_DDR            (MMC_CAP_3_3V_DDR | MMC_CAP_1_8V_DDR | \
>                       MMC_CAP_1_2V_DDR)
> -#define MMC_CAP_NONREMOVABLE    (1 << 8)    /* Nonremovable e.g.eMMC */
> +#define MMC_CAP_NONREMOVABLE    (1 << 10)    /* Nonremovable e.g. eMMC */
>  #define MMC_CAP_UHS_SDR12    (1 << 16)    /* Host supports UHS SDR12
> mode */
>  #define MMC_CAP_UHS_SDR25    (1 << 17)    /* Host supports UHS SDR25
> mode */
>  #define MMC_CAP_UHS_SDR50    (1 << 18)    /* Host supports UHS SDR50
> mode */
> 
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



