Delivery-date: Tue, 01 Jul 2025 11:44:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWXXZ-00Cv8R-0Q
	for lore@lore.pengutronix.de;
	Tue, 01 Jul 2025 11:44:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWXXY-0004Bs-If
	for lore@pengutronix.de; Tue, 01 Jul 2025 11:44:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IGvYrjhhEvLixsoPnUHCHGdIUwsU3rUXndfP32CWgio=; b=kzLyEovDh4lhhKNH3lZBejiXRQ
	7We50IZBVlH20wmtbHG2DwYWFAfF1b+fwrQELnBFX9dtP91b5V7VSPxDIJpHYqaP+0jvAyj2p5RAq
	USCWb6uXLIetPxrZwTk0PlUiJhcwgmucPTJMunQWB6xvGCqG34/kLTiumnS3EiytLlFOI+QT9YtCp
	aQ+Z1f5DDMECXBAWPUwApgXmm0d/lFF0SdyHsTYvLpIecnuJdtn8PJMOWo1/812QmIzKrscBNyizp
	CdIy8/VCAvN8Xe+R2D4jJ91LPZ+caE/cG96AsbkJ12wI7Cc2rMF64EL/ZD8AII9fdrdYPdaxEg9kx
	GMyPRn+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWXWx-00000004d97-34IO;
	Tue, 01 Jul 2025 09:43:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWXDt-00000004ajG-2Rxs
	for barebox@lists.infradead.org;
	Tue, 01 Jul 2025 09:24:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1uWXDq-0002bH-P8; Tue, 01 Jul 2025 11:24:14 +0200
Message-ID: <04893260-d405-4711-8bed-dfd3d290fc81@pengutronix.de>
Date: Tue, 1 Jul 2025 11:24:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20250701085251.148111-1-a.fatoum@pengutronix.de>
 <20250701085251.148111-3-a.fatoum@pengutronix.de>
From: Bastian Krause <bst@pengutronix.de>
In-Reply-To: <20250701085251.148111-3-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_022417_626072_4FE3A1BD 
X-CRM114-Status: GOOD (  21.49  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] menu: schedule pollers/workqueues while waiting for
 menu item selection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 7/1/25 10:52 AM, Ahmad Fatoum wrote:
> Pollers are already run during the menu, because getchar() will poll the
> console driver every 100us and 100us happens to be the time at which
> is_timeout starts scheduling. Workqueus can only be run outside command
> context however, so running menutree (e.g., because shell was exited)
> will not process any fastboot packets in the workqueue.
> 
> Fix this by releasing the slice for the duration of readkey. We do a
> similar thing in the readline command as well.
> Unlike the readline command, menutree can execute arbitrary scripts as
> a result of the user input, so we restrict the slice only to the console
> and rescheduling parts.
> 
> Reported-by: Bastian Krause <bst@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Tested-by: Bastian Krause <bst@pengutronix.de>

Thanks!

Regards,
Bastian

> ---
>   common/menu.c | 9 +++++++--
>   1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/common/menu.c b/common/menu.c
> index 128043c225df..c985f2987751 100644
> --- a/common/menu.c
> +++ b/common/menu.c
> @@ -9,6 +9,7 @@
>   #include <init.h>
>   #include <menu.h>
>   #include <malloc.h>
> +#include <slice.h>
>   #include <xfuncs.h>
>   #include <errno.h>
>   #include <readkey.h>
> @@ -290,10 +291,14 @@ int menu_show(struct menu *m)
>   		struct menu_entry *old_selected = m->selected;
>   		int repaint = 0;
>   
> -		if (m->auto_select >= 0)
> +		if (m->auto_select >= 0) {
>   			ch = BB_KEY_RETURN;
> -		else
> +		} else {
> +			/* Ensure workqueues can run during menu, e.g. for fastboot */
> +			command_slice_release();
>   			ch = read_key();
> +			command_slice_acquire();
> +		}
>   
>   		m->auto_select = -1;
>   


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


